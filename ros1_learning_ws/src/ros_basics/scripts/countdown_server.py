#!/usr/bin/env python3
"""A cancellable task with feedback, using wall time (no simulator needed)."""
import time

import actionlib
import rospy
from ros_basics.msg import CountdownAction, CountdownFeedback, CountdownResult


class CountdownServer:
    def __init__(self):
        # Start only after the instance has finished initialization.
        self.server = actionlib.SimpleActionServer(
            "countdown", CountdownAction, execute_cb=self.execute, auto_start=False)
        self.server.start()

    def interrupted(self):
        if self.server.is_preempt_requested() or rospy.is_shutdown():
            self.server.set_preempted(CountdownResult(completed=False), "Cancelled")
            return True
        return False

    def execute(self, goal):
        if not 0 <= goal.start <= 60:
            self.server.set_aborted(CountdownResult(completed=False),
                                    "start must be between 0 and 60")
            return
        for remaining in range(goal.start, 0, -1):
            if self.interrupted():
                return
            self.server.publish_feedback(CountdownFeedback(remaining=remaining))
            deadline = time.monotonic() + 1.0
            while time.monotonic() < deadline:
                if self.interrupted():
                    return
                time.sleep(0.05)
        if not self.interrupted():
            self.server.publish_feedback(CountdownFeedback(remaining=0))
            self.server.set_succeeded(CountdownResult(completed=True))


if __name__ == "__main__":
    rospy.init_node("countdown_server")
    server = CountdownServer()
    rospy.spin()
