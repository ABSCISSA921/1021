#!/usr/bin/env python3
"""Optional headless ROS 1 project validation; source the advanced workspace first.

Each invocation starts one isolated simulation. Gazebo ground truth is read only
by the verification code and is never fed into the robot's controller or filter.
"""

import argparse
import json
import math
import os
from pathlib import Path
import shutil
import signal
import socket
import subprocess
import sys
import tempfile
import threading
import time
import traceback
import xmlrpc.client


def port_number(value):
    value = int(value)
    if not 1024 <= value <= 65535:
        raise argparse.ArgumentTypeError("port must be between 1024 and 65535")
    return value


def finite_number(value):
    value = float(value)
    if not math.isfinite(value):
        raise argparse.ArgumentTypeError("value must be finite")
    return value


def positive_seconds(value):
    value = finite_number(value)
    if value <= 0:
        raise argparse.ArgumentTypeError("timeout must be positive")
    return value


def ensure_ports_available(ports):
    if len(set(ports)) != len(ports):
        raise ValueError("ROS and Gazebo ports must be different")
    held = []
    try:
        for port in ports:
            listener = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
            held.append(listener)
            try:
                listener.bind(("127.0.0.1", port))
                listener.listen(1)
            except OSError as exc:
                raise RuntimeError("Port {} is unavailable; refusing to reuse another service".format(port)) from exc
    finally:
        for listener in held:
            listener.close()


def group_alive(pgid):
    try:
        os.killpg(pgid, 0)
        return True
    except ProcessLookupError:
        return False


def stop_group(process):
    """Also stop surviving children when the roslaunch parent has already exited."""
    for sig, grace in ((signal.SIGINT, 15), (signal.SIGTERM, 5), (signal.SIGKILL, 2)):
        process.poll()  # Reap the leader before checking its remaining group.
        if not group_alive(process.pid):
            return
        try:
            os.killpg(process.pid, sig)
        except ProcessLookupError:
            return
        until = time.monotonic() + grace
        while time.monotonic() < until:
            process.poll()
            if not group_alive(process.pid):
                return
            time.sleep(0.1)
    process.poll()


def require(condition, message):
    if not condition:
        raise AssertionError(message)


def yaw(quaternion):
    q = quaternion
    return math.atan2(2 * (q.w * q.z + q.x * q.y), 1 - 2 * (q.y * q.y + q.z * q.z))


def angle_difference(a, b):
    return math.atan2(math.sin(a - b), math.cos(a - b))


class Runtime:
    def __init__(self, args, output):
        self.args = args
        self.output = output
        self.processes = []
        self.logs = []
        self.rospy = None
        self.launcher = None
        self.metrics = {}
        self.tf_owners = {}
        self.tf_lock = threading.Lock()
        self.tf_subscriber = None

    def spawn(self, command, log_name):
        log = (self.output / log_name).open("w", encoding="utf-8")
        self.logs.append(log)
        process = subprocess.Popen(command, stdout=log, stderr=subprocess.STDOUT, start_new_session=True)
        self.processes.append(process)
        return process

    def wait_until(self, predicate, label, timeout):
        deadline = time.monotonic() + timeout
        while time.monotonic() < deadline:
            if self.launcher is not None and self.launcher.poll() is not None:
                raise RuntimeError("roslaunch exited while waiting for {}; inspect runtime.log".format(label))
            if predicate():
                return
            time.sleep(0.05)
        raise TimeoutError("Wall-clock timeout waiting for {}".format(label))

    def message(self, topic, message_type, timeout=15):
        received = threading.Event()
        latest = []

        def receive(message):
            latest[:] = [message]
            received.set()

        subscriber = self.rospy.Subscriber(topic, message_type, receive, queue_size=1)
        try:
            if not received.wait(timeout):
                raise TimeoutError("No message on {} after {} wall seconds".format(topic, timeout))
            return latest[0]
        finally:
            subscriber.unregister()

    def controllers(self, expected):
        from controller_manager_msgs.srv import ListControllers
        self.rospy.wait_for_service("/controller_manager/list_controllers", timeout=75)
        listing = self.rospy.ServiceProxy("/controller_manager/list_controllers", ListControllers)

        def ready():
            states = {controller.name: controller.state for controller in listing().controller}
            self.metrics["controllers"] = states
            return all(states.get(name) == "running" for name in expected)

        self.wait_until(ready, "running controllers: " + ", ".join(expected), 30)

    def watch_tf(self):
        from tf2_msgs.msg import TFMessage

        def receive(message):
            caller = message._connection_header.get("callerid", "unknown")
            with self.tf_lock:
                for transform in message.transforms:
                    edge = transform.header.frame_id.lstrip("/") + "->" + transform.child_frame_id.lstrip("/")
                    self.tf_owners.setdefault(edge, set()).add(caller)

        self.tf_subscriber = self.rospy.Subscriber("/tf", TFMessage, receive, queue_size=100)

    def verify_tf(self, map_owner=None, use_ekf=False):
        with self.tf_lock:
            owners = {edge: sorted(nodes) for edge, nodes in self.tf_owners.items()}
        self.metrics["tf_publishers"] = owners
        expected = "/ekf_localization" if use_ekf else "/gazebo"
        require(owners.get("odom->base_footprint") == [expected],
                "odom->base_footprint must have exactly one expected publisher: " + expected)
        if map_owner:
            require(owners.get("map->odom") == [map_owner],
                    "map->odom must have exactly one expected publisher: " + map_owner)

    def drive(self, publisher, linear, angular, duration):
        from geometry_msgs.msg import Twist
        self.wait_until(lambda: publisher.get_num_connections() > 0, "cmd_vel subscriber", 5)
        command = Twist()
        command.linear.x = linear
        command.angular.z = angular
        self.advance_simulation(duration, lambda: publisher.publish(command))

    def advance_simulation(self, duration, tick=None):
        """Keep physical test durations stable on machines running below real time."""
        started = self.rospy.Time.now().to_sec()
        last = started
        wall_deadline = time.monotonic() + max(20.0, duration * 10.0)
        while True:
            current = self.rospy.Time.now().to_sec()
            if current < last:
                raise RuntimeError("Simulation clock moved backwards during a validation phase")
            if current - started >= duration:
                return
            if time.monotonic() >= wall_deadline:
                raise TimeoutError("Simulation clock did not advance {} seconds within the phase wall deadline".format(duration))
            if self.launcher is not None and self.launcher.poll() is not None:
                raise RuntimeError("roslaunch exited during simulated motion; inspect runtime.log")
            if tick is not None:
                tick()
            last = current
            time.sleep(0.05)

    def run(self):
        import rospy
        self.rospy = rospy
        case = self.args.case
        package = "control_lab" if case in ("arm", "motion") else "navigation_lab"
        launch = {"arm": "arm.launch", "motion": "mobile_base.launch",
                  "navigation": "navigation.launch", "slam": "slam.launch"}[case]
        command = ["roslaunch", "-p", str(self.args.ros_port), package, launch, "gui:=false"]
        if case in ("navigation", "slam"):
            command.extend(["rviz:=false", "use_ekf:=" + self.args.use_ekf])
        self.metrics["launch_command"] = command
        self.launcher = self.spawn(command, "runtime.log")
        # rospy reads /use_sim_time during init_node and does not switch modes
        # merely because roslaunch loads that parameter later. Wait before init.
        class MasterTransport(xmlrpc.client.Transport):
            def make_connection(self, host):
                connection = super().make_connection(host)
                connection.timeout = 1.0
                return connection

        def simulation_time_configured():
            try:
                with xmlrpc.client.ServerProxy(os.environ["ROS_MASTER_URI"],
                                               transport=MasterTransport()) as master:
                    code, _, enabled = master.getParam("/smoke_projects_preflight", "/use_sim_time")
                    return code == 1 and enabled is True
            except (OSError, xmlrpc.client.Error):
                return False

        self.wait_until(simulation_time_configured, "/use_sim_time=true before rospy initialization", 75)
        rospy.init_node("smoke_projects", anonymous=True, disable_signals=True)
        self.wait_until(lambda: not rospy.rostime.is_wallclock() and rospy.Time.now().to_sec() > 0,
                        "first positive simulation clock", 30)
        self.metrics["ros_time_mode"] = "simulation"
        self.metrics["initial_sim_time"] = rospy.Time.now().to_sec()
        getattr(self, "case_" + case)()

    def case_arm(self):
        from control_msgs.msg import JointControllerState
        from sensor_msgs.msg import JointState
        from std_msgs.msg import Float64
        self.controllers(["joint_state_controller", "arm_position_controller"])
        publisher = self.rospy.Publisher("/arm_position_controller/command", Float64, queue_size=1)
        self.wait_until(lambda: publisher.get_num_connections() > 0, "arm command subscriber", 5)
        states = []
        subscriber = self.rospy.Subscriber("/arm_position_controller/state", JointControllerState,
                                           lambda message: states.append(message), queue_size=10)
        self.advance_simulation(9, lambda: publisher.publish(Float64(data=0.6)))
        require(states, "No arm controller feedback")
        state = states[-1]
        self.metrics.update(target_rad=state.set_point, position_rad=state.process_value,
                            error_rad=state.error, command=state.command, samples=len(states))
        require(abs(state.process_value - 0.6) < 0.07, "Arm position error exceeds 0.07 rad")
        joints = self.message("/joint_states", JointState)
        require("shoulder_joint" in joints.name, "shoulder_joint is missing from joint_states")
        subscriber.unregister()

    def physical_snapshot(self):
        from gazebo_msgs.srv import GetModelState
        from nav_msgs.msg import Odometry
        odometry = self.message("/diff_drive_controller/odom", Odometry, timeout=5)
        truth = self.rospy.ServiceProxy("/gazebo/get_model_state", GetModelState)("control_lab_mobile", "world")
        require(truth.success, "Gazebo get_model_state failed: " + truth.status_message)
        return {
            "physical": [truth.pose.position.x, truth.pose.position.y, yaw(truth.pose.orientation)],
            "encoder": [odometry.pose.pose.position.x, odometry.pose.pose.position.y, yaw(odometry.pose.pose.orientation)],
            "physical_speed": [math.hypot(truth.twist.linear.x, truth.twist.linear.y), truth.twist.angular.z],
            "height": truth.pose.position.z,
            "sim_time": self.rospy.Time.now().to_sec(),
        }

    def case_motion(self):
        from geometry_msgs.msg import Twist
        from sensor_msgs.msg import Imu
        self.controllers(["joint_state_controller", "diff_drive_controller"])
        self.watch_tf()
        self.rospy.wait_for_service("/gazebo/get_model_state", timeout=15)
        publisher = self.rospy.Publisher("/diff_drive_controller/cmd_vel", Twist, queue_size=1)
        self.advance_simulation(1)
        initial = self.physical_snapshot()
        self.drive(publisher, 0.2, 0, 4)
        self.drive(publisher, 0, 0, 1)
        straight = self.physical_snapshot()
        self.drive(publisher, 0, 0.3, 4)
        imu = self.message("/imu/data", Imu, timeout=5)
        # Deliberately stop publishing: this verifies the controller command timeout.
        self.advance_simulation(2)
        turn = self.physical_snapshot()
        physical_distance = math.hypot(straight["physical"][0] - initial["physical"][0],
                                       straight["physical"][1] - initial["physical"][1])
        encoder_distance = math.hypot(straight["encoder"][0] - initial["encoder"][0],
                                      straight["encoder"][1] - initial["encoder"][1])
        physical_yaw = angle_difference(turn["physical"][2], straight["physical"][2])
        encoder_yaw = angle_difference(turn["encoder"][2], straight["encoder"][2])
        self.metrics.update(initial=initial, straight=straight, turn=turn,
                            distance_physical_m=physical_distance, distance_encoder_m=encoder_distance,
                            yaw_physical_rad=physical_yaw, yaw_encoder_rad=encoder_yaw,
                            gyro_during_turn=imu.angular_velocity.z)
        require(physical_distance > 0.5, "Physical straight-line travel did not exceed 0.5 m")
        require(abs(physical_distance - encoder_distance) < 0.15, "Wheel/physical distance mismatch exceeds 0.15 m")
        require(physical_yaw > 0.7, "Physical turn did not exceed 0.7 rad")
        require(abs(angle_difference(physical_yaw, encoder_yaw)) < 0.15, "Wheel/physical yaw mismatch exceeds 0.15 rad")
        require(max(abs(value) for value in turn["physical_speed"]) < 0.04,
                "Robot did not stop after the command timeout")
        self.verify_tf(use_ekf=False)

    def case_navigation(self):
        import tf2_ros
        from nav_msgs.msg import OccupancyGrid, Odometry
        from sensor_msgs.msg import Imu, LaserScan
        self.controllers(["joint_state_controller", "diff_drive_controller"])
        self.watch_tf()
        buffer = tf2_ros.Buffer()
        listener = tf2_ros.TransformListener(buffer)
        scan = self.message("/scan", LaserScan, timeout=30)
        imu = self.message("/imu/data", Imu)
        raw = self.message("/diff_drive_controller/odom", Odometry)
        use_ekf = self.args.use_ekf == "true"
        odom_topic = "/odometry/filtered" if use_ekf else "/diff_drive_controller/odom"
        odometry = self.message(odom_topic, Odometry)
        grid = self.message("/map", OccupancyGrid)
        self.metrics.update(laser_samples=len(scan.ranges), imu_variance_z=imu.angular_velocity_covariance[8],
                            map_size=[grid.info.width, grid.info.height], map_resolution=grid.info.resolution,
                            odometry_topic=odom_topic)
        require(len(scan.ranges) >= 360 and sum(math.isfinite(value) for value in scan.ranges) > 100,
                "Laser scan lacks sufficient valid samples")
        require(scan.header.frame_id == "laser" and imu.header.frame_id == "imu_link", "Unexpected sensor frames")
        require(raw.child_frame_id == odometry.child_frame_id == "base_footprint", "Unexpected odometry child frame")
        require(self.rospy.get_param("/diff_drive_controller/enable_odom_tf") == (not use_ekf),
                "Controller odom TF is inconsistent with the EKF setting")
        self.wait_until(lambda: buffer.can_transform("map", "base_footprint", self.rospy.Time(0)),
                        "map->base_footprint", 30)
        goal = self.spawn(["rosrun", "navigation_lab", "send_goal.py", "--x", str(self.args.goal_x),
                           "--y", str(self.args.goal_y), "--yaw", str(self.args.goal_yaw),
                           "--timeout", str(self.args.goal_timeout), "--server-timeout", "15"], "goal.log")
        result = goal.wait(timeout=self.args.goal_timeout + 20)
        time.sleep(0.5)
        transform = buffer.lookup_transform("map", "base_footprint", self.rospy.Time(0)).transform
        error = math.hypot(transform.translation.x - self.args.goal_x, transform.translation.y - self.args.goal_y)
        physical = self.physical_snapshot()
        self.metrics.update(goal=[self.args.goal_x, self.args.goal_y, self.args.goal_yaw],
                            goal_exit_code=result, tf_estimate=[transform.translation.x, transform.translation.y],
                            target_error_m=error, physical=physical,
                            physical_target_error_m=math.hypot(physical["physical"][0] - self.args.goal_x,
                                                              physical["physical"][1] - self.args.goal_y))
        self.verify_tf(map_owner="/amcl", use_ekf=use_ekf)
        require(result == 0, "Goal did not return SUCCEEDED; inspect goal.log")
        require(error < 0.3, "Final map-frame goal error exceeds 0.3 m")
        # Keep listener referenced until all TF checks are finished.
        del listener

    def case_slam(self):
        from geometry_msgs.msg import Twist
        from nav_msgs.msg import OccupancyGrid
        self.controllers(["joint_state_controller", "diff_drive_controller"])
        self.watch_tf()
        initial = self.message("/map", OccupancyGrid, timeout=35)
        publisher = self.rospy.Publisher("/diff_drive_controller/cmd_vel", Twist, queue_size=1)
        self.drive(publisher, 0.15, 0, 5)
        self.drive(publisher, 0, 0.3, 5)
        self.drive(publisher, 0, 0, 2)
        final = self.message("/map", OccupancyGrid, timeout=10)
        known = sum(value >= 0 for value in final.data)
        occupied = sum(value > 50 for value in final.data)
        self.metrics.update(initial_known=sum(value >= 0 for value in initial.data),
                            final_known=known, occupied=occupied, map_size=[final.info.width, final.info.height])
        require(known > 1000 and occupied > 100, "SLAM map has insufficient observed geometry")
        require(final.header.stamp > initial.header.stamp, "SLAM map did not update after motion")
        self.verify_tf(map_owner="/slam_gmapping", use_ekf=self.args.use_ekf == "true")
        # output is already a fresh mkdtemp directory, so this cannot overwrite a user's map.
        prefix = self.output / "saved_map" / "room"
        prefix.parent.mkdir()
        saver = self.spawn(["rosrun", "map_server", "map_saver", "-f", str(prefix)], "map_saver.log")
        require(saver.wait(timeout=25) == 0, "map_saver failed; inspect map_saver.log")
        require(prefix.with_suffix(".yaml").is_file() and prefix.with_suffix(".pgm").is_file(),
                "Saved map YAML/PGM is missing")
        self.spawn(["rosrun", "map_server", "map_server", str(prefix.with_suffix(".yaml")),
                    "__name:=saved_map_verification", "map:=/saved_map", "map_metadata:=/saved_map_metadata"], "map_reload.log")
        loaded = self.message("/saved_map", OccupancyGrid, timeout=15)
        self.metrics.update(saved_yaml=str(prefix.with_suffix(".yaml")),
                            reloaded_map_size=[loaded.info.width, loaded.info.height],
                            reloaded_occupied=sum(value > 50 for value in loaded.data))
        require((loaded.info.width, loaded.info.height) == (final.info.width, final.info.height),
                "Reloaded map dimensions differ from the SLAM map")
        require(sum(value > 50 for value in loaded.data) > 100, "Reloaded map lost occupied cells")

    def close(self):
        # Terminate simulation groups before rospy teardown, which can otherwise
        # wait on a service call while Gazebo itself is shutting down.
        failures = []
        for process in reversed(self.processes):
            try:
                stop_group(process)
            except Exception as exc:
                failures.append(str(exc))
        if self.rospy is not None and self.rospy.core.is_initialized():
            finished = threading.Event()

            def shutdown():
                try:
                    self.rospy.signal_shutdown("smoke validation finished")
                finally:
                    finished.set()

            threading.Thread(target=shutdown, daemon=True).start()
            finished.wait(2)
        for log in self.logs:
            log.close()
        if failures:
            raise RuntimeError("Process cleanup failed: " + "; ".join(failures))


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--case", required=True, choices=("arm", "motion", "navigation", "slam"))
    parser.add_argument("--use-ekf", choices=("true", "false"), default="true", help="navigation/slam only")
    parser.add_argument("--ros-port", type=port_number, default=11431)
    parser.add_argument("--gazebo-port", type=port_number, default=11432)
    parser.add_argument("--timeout", type=positive_seconds, default=240,
                        help="overall wall-clock test deadline, excluding bounded cleanup (default: 240 s)")
    parser.add_argument("--goal-timeout", type=positive_seconds, default=90)
    parser.add_argument("--goal-x", type=finite_number, default=2.5, help="navigation goal x in map frame")
    parser.add_argument("--goal-y", type=finite_number, default=0.0, help="navigation goal y in map frame")
    parser.add_argument("--goal-yaw", type=finite_number, default=0.0, help="navigation goal yaw in radians")
    parser.add_argument("--output-root", type=Path, default=Path(tempfile.gettempdir()),
                        help="parent directory for a fresh result/log directory")
    args = parser.parse_args()
    args.output_root.mkdir(parents=True, exist_ok=True)
    output = Path(tempfile.mkdtemp(prefix="ros-projects-{}-".format(args.case), dir=str(args.output_root))).resolve()
    runtime = Runtime(args, output)
    report = {"case": args.case, "use_ekf": args.use_ekf if args.case in ("navigation", "slam") else None,
              "ros_port": args.ros_port, "gazebo_port": args.gazebo_port,
              "output_directory": str(output), "runtime_log": str(output / "runtime.log")}
    started = time.monotonic()
    exit_code = 1

    def deadline_expired(signum, frame):
        raise TimeoutError("Overall test deadline of {} wall seconds exceeded".format(args.timeout))

    def interrupted(signum, frame):
        raise KeyboardInterrupt

    previous_alarm = signal.signal(signal.SIGALRM, deadline_expired)
    previous_term = signal.signal(signal.SIGTERM, interrupted)
    previous_int = signal.getsignal(signal.SIGINT)
    try:
        signal.setitimer(signal.ITIMER_REAL, args.timeout)
        ensure_ports_available((args.ros_port, args.gazebo_port))
        require(shutil.which("roslaunch") and shutil.which("rospack"),
                "ROS commands not found; source /opt/ros/noetic and the advanced workspace first")
        os.environ.update(ROS_MASTER_URI="http://127.0.0.1:{}".format(args.ros_port),
                          GAZEBO_MASTER_URI="http://127.0.0.1:{}".format(args.gazebo_port),
                          ROS_HOSTNAME="127.0.0.1", ROS_HOME=str(output / "ros_home"),
                          ROS_LOG_DIR=str(output / "ros_home" / "log"), GAZEBO_MODEL_DATABASE_URI="")
        os.environ.pop("ROS_IP", None)
        os.environ.pop("ROS_NAMESPACE", None)
        required = ["control_lab"] + (["navigation_lab"] if args.case in ("navigation", "slam") else [])
        report["packages"] = {}
        for package in required:
            found = subprocess.run(["rospack", "find", package], stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE, text=True, timeout=10)
            require(found.returncode == 0, "Package {} not found; source the built advanced workspace".format(package))
            report["packages"][package] = found.stdout.strip()
        runtime.run()
        report["status"] = "passed"
        exit_code = 0
    except KeyboardInterrupt:
        report.update(status="interrupted", error="Interrupted by user")
        exit_code = 130
    except (TimeoutError, subprocess.TimeoutExpired) as exc:
        report.update(status="timed_out", error=str(exc))
        exit_code = 124
    except Exception as exc:
        report.update(status="failed", error=str(exc))
        (output / "failure.txt").write_text(traceback.format_exc(), encoding="utf-8")
    finally:
        signal.setitimer(signal.ITIMER_REAL, 0)
        signal.signal(signal.SIGALRM, previous_alarm)
        # A repeated interrupt must not abandon child Gazebo processes mid-cleanup.
        signal.signal(signal.SIGINT, signal.SIG_IGN)
        signal.signal(signal.SIGTERM, signal.SIG_IGN)
        report["test_elapsed_s"] = round(time.monotonic() - started, 3)
        try:
            runtime.close()
        except Exception as exc:
            report["cleanup_error"] = str(exc)
            if exit_code == 0:
                exit_code = 1
                report["status"] = "failed"
        signal.signal(signal.SIGTERM, previous_term)
        signal.signal(signal.SIGINT, previous_int)
        report["total_elapsed_s"] = round(time.monotonic() - started, 3)
        report["measurements"] = runtime.metrics
        report["exit_code"] = exit_code
        encoded = json.dumps(report, ensure_ascii=False, indent=2)
        (output / "result.json").write_text(encoded + "\n", encoding="utf-8")
        print(encoded)
    return exit_code


if __name__ == "__main__":
    sys.exit(main())
