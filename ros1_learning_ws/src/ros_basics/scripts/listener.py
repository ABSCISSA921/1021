#!/usr/bin/env python3
"""Callbacks run when messages arrive; spin keeps the node alive."""
import rospy
from ros_basics.msg import Counter


def receive(message):
    rospy.loginfo("%s: count=%d, stamp=%.3f", message.label,
                  message.count, message.header.stamp.to_sec())


if __name__ == "__main__":
    rospy.init_node("listener")
    subscriber = rospy.Subscriber("counter", Counter, receive, queue_size=10)
    rospy.spin()
