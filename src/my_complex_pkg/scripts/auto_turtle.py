#!/usr/bin/env python3
import rospy
import random
from geometry_msgs.msg import Twist
from turtlesim.msg import Pose

# Khung screen của node rùa
TURTLE_MAX_X = 11.0
TURTLE_MAX_Y = 11.0
SAFE_DISTANCE = 1  # Ngưỡng an toàn cách tường

class TurtleController:
    def __init__(self):
        rospy.init_node('auto_turtle', anonymous=True)
        self.cmd_vel_pub = rospy.Publisher('/turtle1/cmd_vel', Twist, queue_size=10)
        rospy.Subscriber('/turtle1/pose', Pose, self.pose_callback)
        self.current_pose = None
        self.rate = rospy.Rate(10)  # 10Hz

    def pose_callback(self, msg):
        self.current_pose = msg

    def move_turtle(self):
        twist = Twist()
        while not rospy.is_shutdown():
            if self.current_pose:
                x, y = self.current_pose.x, self.current_pose.y

                # Kiểm tra nếu gần tường
                if x < SAFE_DISTANCE or x > TURTLE_MAX_X - SAFE_DISTANCE or \
                   y < SAFE_DISTANCE or y > TURTLE_MAX_Y - SAFE_DISTANCE:
                    rospy.logwarn("Gặp tường! Đang lùi lại...")
                    
                    # Lùi lại một chút
                    twist.linear.x = -1.0
                    twist.angular.z = 0.0
                    self.cmd_vel_pub.publish(twist)
                    rospy.sleep(1.0)

                    # Quay trái hoặc phải ngẫu nhiên
                    direction = random.choice([-1, 1])
                    rospy.loginfo(" Quay {} ".format("trái" if direction == 1 else "phải"))
                    twist.linear.x = 0.0
                    twist.angular.z = direction * random.uniform(1.0, 2.0)
                    self.cmd_vel_pub.publish(twist)
                    rospy.sleep(1.0)

                else:
                    # Tiếp tục di chuyển ngẫu nhiên
                    twist.linear.x = random.uniform(1.0, 2.0)
                    twist.angular.z = random.uniform(-1.0, 1.0)
                    self.cmd_vel_pub.publish(twist)
                    rospy.loginfo("Di chuyển: linear_x = {:.2f}, angular_z = {:.2f}".format(twist.linear.x, twist.angular.z))

            self.rate.sleep()

if __name__ == '__main__':
    try:
        controller = TurtleController()
        controller.move_turtle()
    except rospy.ROSInterruptException:
        pass
