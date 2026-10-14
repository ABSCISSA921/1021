#!/usr/bin/env python3
"""Send one map-frame move_base goal; bound waits by wall time, even if /clock stops."""

import argparse
import math
import sys
import threading

import actionlib
import rospy
from actionlib_msgs.msg import GoalStatus
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal


def finite_float(value):
    result = float(value)
    if not math.isfinite(result):
        raise argparse.ArgumentTypeError("value must be finite")
    return result


def positive_float(value):
    result = finite_float(value)
    if result <= 0:
        raise argparse.ArgumentTypeError("timeout must be positive")
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--x", type=finite_float, required=True, help="map x, meters")
    parser.add_argument("--y", type=finite_float, required=True, help="map y, meters")
    parser.add_argument("--yaw", type=finite_float, default=0.0, help="map yaw, radians")
    parser.add_argument("--timeout", type=positive_float, default=120.0,
                        help="goal deadline in wall seconds (default: 120)")
    parser.add_argument("--server-timeout", type=positive_float, default=30.0,
                        help="server discovery deadline in wall seconds (default: 30)")
    args = parser.parse_args(rospy.myargv()[1:])
    rospy.init_node("navigation_lab_send_goal", anonymous=True)
    client = actionlib.SimpleActionClient("move_base", MoveBaseAction)
    connected = threading.Event()
    finished = threading.Event()
    outcome = {}

    def wait_for_server():
        # actionlib's own timed waits use ROS time and can stall with paused /clock.
        if client.wait_for_server():
            connected.set()

    def done_cb(state, result):
        outcome["state"] = state
        finished.set()

    threading.Thread(target=wait_for_server, daemon=True).start()
    if not connected.wait(args.server_timeout):
        rospy.logerr("move_base server unavailable after %.1f wall seconds", args.server_timeout)
        return 2

    goal = MoveBaseGoal()
    goal.target_pose.header.frame_id = "map"
    goal.target_pose.header.stamp = rospy.Time.now()
    goal.target_pose.pose.position.x = args.x
    goal.target_pose.pose.position.y = args.y
    goal.target_pose.pose.orientation.z = math.sin(args.yaw / 2.0)
    goal.target_pose.pose.orientation.w = math.cos(args.yaw / 2.0)
    rospy.on_shutdown(client.cancel_goal)
    client.send_goal(goal, done_cb=done_cb)
    rospy.loginfo("Goal sent: map (%.2f, %.2f, %.2f rad)", args.x, args.y, args.yaw)
    try:
        if not finished.wait(args.timeout):
            client.cancel_goal()
            finished.wait(2.0)
            rospy.logerr("Goal timed out after %.1f wall seconds; cancellation sent", args.timeout)
            return 3
    except (KeyboardInterrupt, rospy.ROSInterruptException):
        client.cancel_goal()
        finished.wait(2.0)
        return 130

    state = outcome["state"]
    if state == GoalStatus.SUCCEEDED:
        rospy.loginfo("SUCCEEDED: move_base reports the goal reached")
        return 0
    rospy.logerr("Goal failed: action status=%d, text=%s", state, client.get_goal_status_text())
    return 4


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (KeyboardInterrupt, rospy.ROSInterruptException):
        sys.exit(130)
