#!/usr/bin/env python3
"""Send a goal; optionally cancel after a configurable timeout."""
import math
import sys

import actionlib
import rospy
from actionlib_msgs.msg import GoalStatus
from ros_basics.msg import CountdownAction, CountdownGoal


def main():
    rospy.init_node("countdown_client")
    start = int(rospy.get_param("~start", 5))
    cancel_after = float(rospy.get_param("~cancel_after", 0.0))
    if not 0 <= start <= 60 or not math.isfinite(cancel_after) or cancel_after < 0:
        raise ValueError("~start must be 0..60 and ~cancel_after finite and >= 0")
    client = actionlib.SimpleActionClient("countdown", CountdownAction)
    if not client.wait_for_server(rospy.Duration(5.0)):
        raise RuntimeError("Countdown server did not appear within 5 seconds")
    rospy.on_shutdown(client.cancel_goal)
    client.send_goal(CountdownGoal(start=start), feedback_cb=lambda feedback:
                     rospy.loginfo("remaining=%d", feedback.remaining))
    timeout = cancel_after if cancel_after > 0 else start + 5.0
    cancelled = False
    if not client.wait_for_result(rospy.Duration(timeout)):
        cancelled = True
        client.cancel_goal()
        if not client.wait_for_result(rospy.Duration(5.0)):
            raise RuntimeError("Server did not acknowledge cancellation")
    state = client.get_state()
    result = client.get_result()
    if result is None:
        raise RuntimeError("Server returned no result")
    rospy.loginfo("state=%d, completed=%s", state, result.completed)
    if state == GoalStatus.SUCCEEDED:
        return 0
    if cancel_after > 0 and cancelled and state in (GoalStatus.PREEMPTED, GoalStatus.RECALLED):
        return 0
    return 1


if __name__ == "__main__":
    try:
        sys.exit(main())
    except (rospy.ROSException, RuntimeError, ValueError) as error:
        rospy.logerr("Action example failed: %s", error)
        sys.exit(1)
