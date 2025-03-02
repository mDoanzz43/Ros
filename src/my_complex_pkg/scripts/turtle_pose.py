#!/usr/bin/env python3
import rospy
from turtlesim.msg import Pose

def pose_callback(pose):
    rospy.loginfo("📍 Vị trí hiện tại: x = {:.2f}, y = {:.2f}".format(pose.x, pose.y))

    # Cảnh báo nếu rùa gần tường (cách 0.3 - 0.4m)
    if pose.x < 0.4 or pose.x > 10.6 or pose.y < 0.4 or pose.y > 10.6:
        rospy.logwarn("⚠️ Rùa gần tường! Khoảng cách {:.2f}m".format(min(pose.x, 11-pose.x, pose.y, 11-pose.y)))

def monitor_pose():
    rospy.init_node('pose_monitor', anonymous=True)
    rospy.Subscriber('/turtle1/pose', Pose, pose_callback)
    rospy.spin()

if __name__ == '__main__':
    monitor_pose()
