#!/usr/bin/env python3

import rospy
from student_info_pkg.msg import StudentInfo 

# Hàm này đc gọi mỗi khi có dữ liệu mới từ topic 
def callback(data):
    if data.GPA >= 3.6:
        rank = "Xuất sắc"
    elif data.GPA >= 3.2:
        rank = "Giỏi"
    elif data.GPA >= 2.5:
        rank = "Khá"
    else:
        rank = "Trung bình"

    # In ra màn hình
    rospy.loginfo(f"{data.nameStudent}_MSV={data.studentCode}_GPA:{data.GPA} - {rank}")

# Khởi tạo ROS node và lắng nghe dữ liệu từ topic
def listener():
    rospy.init_node('info_receiver', anonymous=True)
    rospy.Subscriber('/info', StudentInfo, callback) # Đăng ký subscriber
    rospy.spin() # Giữ chương trình chạy liên tục

if __name__ == '__main__':
    listener()
