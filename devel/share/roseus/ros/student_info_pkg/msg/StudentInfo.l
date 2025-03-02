;; Auto-generated. Do not edit!


(when (boundp 'student_info_pkg::StudentInfo)
  (if (not (find-package "STUDENT_INFO_PKG"))
    (make-package "STUDENT_INFO_PKG"))
  (shadow 'StudentInfo (find-package "STUDENT_INFO_PKG")))
(unless (find-package "STUDENT_INFO_PKG::STUDENTINFO")
  (make-package "STUDENT_INFO_PKG::STUDENTINFO"))

(in-package "ROS")
;;//! \htmlinclude StudentInfo.msg.html


(defclass student_info_pkg::StudentInfo
  :super ros::object
  :slots (_nameStudent _studentCode _GPA ))

(defmethod student_info_pkg::StudentInfo
  (:init
   (&key
    ((:nameStudent __nameStudent) "")
    ((:studentCode __studentCode) 0)
    ((:GPA __GPA) 0.0)
    )
   (send-super :init)
   (setq _nameStudent (string __nameStudent))
   (setq _studentCode (round __studentCode))
   (setq _GPA (float __GPA))
   self)
  (:nameStudent
   (&optional __nameStudent)
   (if __nameStudent (setq _nameStudent __nameStudent)) _nameStudent)
  (:studentCode
   (&optional __studentCode)
   (if __studentCode (setq _studentCode __studentCode)) _studentCode)
  (:GPA
   (&optional __GPA)
   (if __GPA (setq _GPA __GPA)) _GPA)
  (:serialization-length
   ()
   (+
    ;; string _nameStudent
    4 (length _nameStudent)
    ;; int32 _studentCode
    4
    ;; float32 _GPA
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _nameStudent
       (write-long (length _nameStudent) s) (princ _nameStudent s)
     ;; int32 _studentCode
       (write-long _studentCode s)
     ;; float32 _GPA
       (sys::poke _GPA (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _nameStudent
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nameStudent (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _studentCode
     (setq _studentCode (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _GPA
     (setq _GPA (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get student_info_pkg::StudentInfo :md5sum-) "1af1065b00224406cc47ede40cb331d8")
(setf (get student_info_pkg::StudentInfo :datatype-) "student_info_pkg/StudentInfo")
(setf (get student_info_pkg::StudentInfo :definition-)
      "string nameStudent
int32 studentCode
float32 GPA

")



(provide :student_info_pkg/StudentInfo "1af1065b00224406cc47ede40cb331d8")


