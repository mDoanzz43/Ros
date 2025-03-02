#!/usr/bin/env python3
import rospy
import random
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

pose = Pose()
is_turning = False  # Biến trạng thái để kiểm soát quay đầu

def pose_callback(msg):
    global pose
    pose = msg

def random_movement():
    global pose, is_turning
    rospy.init_node('random_turtle', anonymous=True)
    pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
    sub = rospy.Subscriber('/turtle1/pose', Pose, pose_callback)

    rate = rospy.Rate(2)  # 2 Hz

    while not rospy.is_shutdown():
        twist = Twist()

        # Kiểm tra nếu rùa gần tường (cách tường < 0.4m)
        if pose.x < 0.4 or pose.x > 10.6 or pose.y < 0.4 or pose.y > 10.6:
            if not is_turning:  # Chỉ quay nếu chưa quay trước đó
                rospy.logwarn("⚠️ Gần tường! Quay lại.")
                twist.linear.x = 0
                twist.angular.z = random.uniform(1.0, 2.0)  # Quay với tốc độ vừa phải
                pub.publish(twist)
                rospy.sleep(1.5)  # Đợi một chút cho rùa quay
                is_turning = True  # Đánh dấu đã quay
        else:
            # Di chuyển ngẫu nhiên nếu không gần tường
            twist.linear.x = random.uniform(0.5, 2.0)
            twist.angular.z = random.uniform(-1.0, 1.0)  # Giảm góc quay để tránh xoay vòng nhiều
            is_turning = False  # Reset trạng thái quay để lần sau có thể quay tiếp khi chạm tường

        pub.publish(twist)
        rate.sleep()

if __name__ == '__main__':
    try:
        random_movement()
    except rospy.ROSInterruptException:
        pass
