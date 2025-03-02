#!/usr/bin/env python3  
# Dòng này là shebang, sử dụng lệnh env để định vị trình thông dịch Py 
# trong path để chạy scripts

import rospy # Py ~~ Ros
from student_info_pkg.msg import StudentInfo #import file msgs StudentInfo với thông tin tạo từ b1

# Hàm chính để publish thông tin lên topic  và in ra màn hình
def publish_info():
    rospy.init_node('info_upload', anonymous=True) # Khởi tạo 1 node tên là info_upload
    pub = rospy.Publisher('/info', StudentInfo, queue_size=10) # tạo 1 publisher trên topic/info sử dụng StudentInfo msg type
    rate = rospy.Rate(1) #1Hz
    
    while not rospy.is_shutdown(): # Vòng lặp ros node chạy liên tục cho đến khi bị dừng 
        # Tạo message và các thuộc tính của message này
        student_info = StudentInfo() 
        student_info.nameStudent = "Do Manh Doan"
        student_info.studentCode = 22027542
        student_info.GPA = 3.2
        
        # In ra màn hình ros console 
        rospy.loginfo(f"Publishing: {student_info.nameStudent},{student_info.studentCode},{student_info.GPA}")
        pub.publish(student_info) # gửi mesage student_info lên topic/info để các subscriber nhận
        rate.sleep()
        
if __name__ == "__main__":
    # Kiểm tra xem scripts có chạy như chương trình chính hay không
    try:
        publish_info()
    except rospy.ROSInterruptException:
        pass
    