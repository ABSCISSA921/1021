#!/usr/bin/env python3
"""Exercise the CLI against an action server, including a stalled simulation clock."""

import subprocess
import sys
import threading
import time
import unittest
from pathlib import Path

import actionlib
import rospy
import rostest
from move_base_msgs.msg import MoveBaseAction, MoveBaseResult


class GoalClientTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.cancelled = threading.Event()
        cls.last_goal = None
        cls.server = actionlib.SimpleActionServer("move_base", MoveBaseAction,
                                                 execute_cb=cls.execute, auto_start=False)
        cls.server.start()
        cls.script = str(Path(__file__).resolve().parents[1] / "scripts" / "send_goal.py")

    @classmethod
    def execute(cls, goal):
        cls.last_goal = goal
        if goal.target_pose.pose.position.x >= 2:
            cls.server.set_succeeded(MoveBaseResult(), "test reached")
        elif goal.target_pose.pose.position.x <= -2:
            cls.server.set_aborted(MoveBaseResult(), "test blocked")
        else:
            while not rospy.is_shutdown():
                if cls.server.is_preempt_requested():
                    cls.cancelled.set()
                    cls.server.set_preempted(MoveBaseResult(), "test cancelled")
                    return
                time.sleep(0.02)

    def run_goal(self, x, *extra):
        return subprocess.run([sys.executable, self.script, "--x", str(x), "--y", "0",
                               "--yaw", "0.5", "--server-timeout", "3", "--timeout", "2", *extra],
                              stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=10)

    def test_01_success(self):
        result = self.run_goal(2.5)
        self.assertEqual(result.returncode, 0, result.stdout)
        self.assertIn("SUCCEEDED", result.stdout)
        self.assertEqual(self.last_goal.target_pose.header.frame_id, "map")
        self.assertAlmostEqual(self.last_goal.target_pose.pose.orientation.z, 0.247403959)

    def test_02_failure(self):
        result = self.run_goal(-2.5)
        self.assertEqual(result.returncode, 4, result.stdout)

    def test_03_timeout_cancels_goal(self):
        self.cancelled.clear()
        result = self.run_goal(0)
        self.assertEqual(result.returncode, 3, result.stdout)
        self.assertTrue(self.cancelled.wait(2))

    def test_04_goal_deadline_with_stopped_clock(self):
        self.cancelled.clear()
        rospy.set_param("/use_sim_time", True)
        try:
            result = self.run_goal(0)
            self.assertEqual(result.returncode, 3, result.stdout)
            self.assertTrue(self.cancelled.wait(2))
        finally:
            rospy.set_param("/use_sim_time", False)

    def test_05_missing_server_deadline_with_stopped_clock(self):
        rospy.set_param("/use_sim_time", True)
        try:
            result = self.run_goal(2.5, "move_base:=missing_move_base", "--server-timeout", "1")
            self.assertEqual(result.returncode, 2, result.stdout)
        finally:
            rospy.set_param("/use_sim_time", False)


if __name__ == "__main__":
    rospy.init_node("navigation_lab_goal_client_test")
    rostest.rosrun("navigation_lab", "goal_client", GoalClientTests)
