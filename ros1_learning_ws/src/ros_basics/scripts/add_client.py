#!/usr/bin/env python3
"""Wait for a server, make one request, then exit."""
import sys

import rospy
from ros_basics.srv import AddTwoInts


def main():
    rospy.init_node("add_client")
    a = int(rospy.get_param("~a", 2))
    b = int(rospy.get_param("~b", 3))
    if not all(-(2 ** 31) <= value < 2 ** 31 for value in (a, b)):
        raise ValueError("~a and ~b must fit int32")
    rospy.wait_for_service("add_two_ints", timeout=5.0)
    response = rospy.ServiceProxy("add_two_ints", AddTwoInts)(a, b)
    rospy.loginfo("%d + %d = %d", a, b, response.sum)


if __name__ == "__main__":
    try:
        main()
    except (rospy.ROSException, rospy.ServiceException, ValueError) as error:
        rospy.logerr("Service example failed: %s", error)
        sys.exit(1)
