#!/usr/bin/env python3

'''
Tính kc Ecludid
'''
import rospy
from turtlesim.msg import Pose
import math

def callback(data):
    # lay vi tri cua rua 
    x = data.x
    y = data.y
    distance = math.sqrt(x**2 + y**2    )
    # print vi tri va kc
    rospy.loginfo(f"Position of turle: x={x}, y={y} and Distance: = {distance}")
    
    
def listener():
    # Khoi tao node ROS
    rospy.init_node("monitor_turle", anonymous=True)
    # Lắng nghe topic /turtle1/pose từ node turtlesim
    rospy.Subscriber('/turtle1/pose', Pose, callback)

    # Giữ cho node tiếp tục chạy
    rospy.spin()

if __name__ == '__main__':
    listener()