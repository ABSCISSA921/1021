#!/usr/bin/env python3
"""Exercise real ROS transports, remapping, parameters and action terminal states."""
import subprocess
import threading
import unittest

import actionlib
import rospy
import rostest
from actionlib_msgs.msg import GoalStatus
from ros_basics.msg import Counter, CountdownAction, CountdownGoal
from ros_basics.srv import AddTwoInts


class CommunicationTest(unittest.TestCase):
    def test_topic_and_parameters(self):
        first = rospy.wait_for_message("/lesson_test/renamed", Counter, timeout=5)
        second = rospy.wait_for_message("/lesson_test/renamed", Counter, timeout=5)
        self.assertEqual(first.label, "configured_label")
        self.assertGreater(second.count, first.count)
        self.assertGreater(second.header.stamp, first.header.stamp)
        self.assertEqual(rospy.get_param("/lesson_test/talker/rate"), 10.0)
        published = dict(rospy.get_published_topics())
        self.assertNotIn("/counter", published)
        self.assertNotIn("/basics/counter", published)

    def test_service(self):
        name = "/lesson_test/add_two_ints"
        rospy.wait_for_service(name, timeout=5)
        add = rospy.ServiceProxy(name, AddTwoInts)
        for a, b, expected in [(2, 3, 5), (-7, 4, -3),
                               (2147483647, 2147483647, 4294967294)]:
            self.assertEqual(add(a, b).sum, expected)

    def test_command_line_clients(self):
        commands = [
            ("add_client.py", ["_a:=-7", "_b:=4"], 0, "-7 + 4 = -3"),
            ("countdown_client.py", ["_start:=0"], 0, "completed=True"),
            ("countdown_client.py", ["_start:=5", "_cancel_after:=0.5"], 0, "completed=False"),
            ("countdown_client.py", ["_start:=-1"], 1, "failed"),
        ]
        for node, arguments, code, expected in commands:
            result = subprocess.run(
                ["rosrun", "ros_basics", node, "__ns:=/lesson_test"] + arguments,
                stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=10)
            self.assertEqual(result.returncode, code, result.stdout)
            self.assertIn(expected, result.stdout)
        result = subprocess.run(
            ["rosrun", "ros_basics", "add_client.py", "__ns:=/missing_service"],
            stdout=subprocess.PIPE, stderr=subprocess.STDOUT, text=True, timeout=8)
        self.assertEqual(result.returncode, 1, result.stdout)

    def test_action(self):
        client = actionlib.SimpleActionClient("/lesson_test/countdown", CountdownAction)
        self.assertTrue(client.wait_for_server(rospy.Duration(5)))
        client.send_goal(CountdownGoal(start=0))
        self.assertTrue(client.wait_for_result(rospy.Duration(5)))
        self.assertEqual(client.get_state(), GoalStatus.SUCCEEDED)
        self.assertTrue(client.get_result().completed)

        client.send_goal(CountdownGoal(start=1))
        self.assertTrue(client.wait_for_result(rospy.Duration(5)))
        self.assertEqual(client.get_state(), GoalStatus.SUCCEEDED)
        self.assertTrue(client.get_result().completed)

        for start in [-1, 61]:
            client.send_goal(CountdownGoal(start=start))
            self.assertTrue(client.wait_for_result(rospy.Duration(5)))
            self.assertEqual(client.get_state(), GoalStatus.ABORTED)
            self.assertFalse(client.get_result().completed)

        feedback_received = threading.Event()
        client.send_goal(CountdownGoal(start=10),
                         feedback_cb=lambda feedback: feedback_received.set())
        try:
            self.assertTrue(feedback_received.wait(5), "No progress feedback")
        finally:
            client.cancel_goal()
        self.assertTrue(client.wait_for_result(rospy.Duration(5)))
        self.assertEqual(client.get_state(), GoalStatus.PREEMPTED)
        self.assertFalse(client.get_result().completed)


if __name__ == "__main__":
    rospy.init_node("communication_test")
    rostest.rosrun("ros_basics", "communication", CommunicationTest)
