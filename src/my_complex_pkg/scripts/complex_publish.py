#!/usr/bin/env python3

import rospy
from my_complex_pkg.msg import Complex

def talker():
    pub = rospy.Publisher("complex_topic",Complex, queue_size=10)
    rospy.init_node("Complex_publisher",anonymous=True)
    rate = rospy.Rate(1)
    
    while not rospy.is_shutdown():
        msg = Complex()
        msg.re = 1.0
        msg.im = 2.0
        rospy.loginfo(f"Publishing: re={msg.re}, im={msg.im}")
        pub.publish(msg)
        rate.sleep()

if __name__ == "__main__":
    try: 
        talker()
    except rospy.ROSInterruptException:
        pass
    