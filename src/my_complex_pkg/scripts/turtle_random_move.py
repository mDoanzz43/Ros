#!/usr/bin/env python3
import rospy
from geometry_msgs.msg import Twist
import random

def random_movement():
    rospy.init_node('random_turtle')
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(2)

    while not rospy.is_shutdown():
        twist = Twist()
        twist.linear.x = random.uniform(0, 2.0)
        twist.angular.z = random.uniform(-2.0, 2.0)
        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        random_movement()
    except rospy.ROSInterruptException:
        pass
