#!/usr/bin/env python3

'''
cứ ngẫu nhiêu 1s gửi 1 giá trị vận tốc tính tiến và xoay cho turtle di chuyển liên tục
'''
import rospy
import random
from geometry_msgs.msg import Twist

def publish_random_velocity():
    rospy.init_node('random_velocity_publisher', anonymous=True)
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    rate = rospy.Rate(1)  # Gửi dữ liệu mỗi 1 giây

    while not rospy.is_shutdown():
        msg = Twist()
        msg.linear.x = random.uniform(0.0, 2.0)  # Vận tốc tiến từ 0 đến 2 m/s
        msg.angular.z = random.uniform(-2.0, 2.0)  # Vận tốc xoay từ -2 đến 2 rad/s
        
        rospy.loginfo(f"Sending Velocity - Linear: {msg.linear.x}, Angular: {msg.angular.z}")
        pub.publish(msg)
        rate.sleep()

if __name__ == '__main__':
    try:
        publish_random_velocity()
    except rospy.ROSInterruptException:
        pass
