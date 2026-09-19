#!/usr/bin/env python3
"""Publish a custom message; parameters are read once at startup."""
import math

import rospy
from ros_basics.msg import Counter


def main():
    rospy.init_node("talker")
    frequency = float(rospy.get_param("~rate", 2.0))
    if not math.isfinite(frequency) or not 0.1 <= frequency <= 100.0:
        raise ValueError("~rate must be between 0.1 and 100 Hz")
    label = str(rospy.get_param("~label", "hello_ros"))
    publisher = rospy.Publisher("counter", Counter, queue_size=10)
    rate = rospy.Rate(frequency)
    count = 0
    while not rospy.is_shutdown():
        message = Counter()
        message.header.stamp = rospy.Time.now()
        message.count = count
        message.label = label
        publisher.publish(message)
        count = (count + 1) % (2 ** 32)
        rate.sleep()


if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass
