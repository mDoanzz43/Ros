#!/usr/bin/env python3
import rospy
from my_complex_pkg.msg import Complex

def callback(msg):
    rospy.loginfo(f"Received: re={msg.re}, im={msg.im}")

def listener():
    rospy.init_node('complex_subscriber', anonymous=True)
    rospy.Subscriber('complex_topic', Complex, callback)
    rospy.spin()

if __name__ == '__main__':
    listener()
