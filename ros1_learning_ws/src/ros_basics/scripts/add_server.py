#!/usr/bin/env python3
"""A short request/response operation belongs in a service."""
import rospy
from ros_basics.srv import AddTwoInts, AddTwoIntsResponse


def add(request):
    return AddTwoIntsResponse(sum=request.a + request.b)


if __name__ == "__main__":
    rospy.init_node("add_server")
    service = rospy.Service("add_two_ints", AddTwoInts, add)
    rospy.spin()
