; Auto-generated. Do not edit!


(cl:in-package student_info_pkg-msg)


;//! \htmlinclude StudentInfo.msg.html

(cl:defclass <StudentInfo> (roslisp-msg-protocol:ros-message)
  ((nameStudent
    :reader nameStudent
    :initarg :nameStudent
    :type cl:string
    :initform "")
   (studentCode
    :reader studentCode
    :initarg :studentCode
    :type cl:integer
    :initform 0)
   (GPA
    :reader GPA
    :initarg :GPA
    :type cl:float
    :initform 0.0))
)

(cl:defclass StudentInfo (<StudentInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StudentInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StudentInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name student_info_pkg-msg:<StudentInfo> is deprecated: use student_info_pkg-msg:StudentInfo instead.")))

(cl:ensure-generic-function 'nameStudent-val :lambda-list '(m))
(cl:defmethod nameStudent-val ((m <StudentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_info_pkg-msg:nameStudent-val is deprecated.  Use student_info_pkg-msg:nameStudent instead.")
  (nameStudent m))

(cl:ensure-generic-function 'studentCode-val :lambda-list '(m))
(cl:defmethod studentCode-val ((m <StudentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_info_pkg-msg:studentCode-val is deprecated.  Use student_info_pkg-msg:studentCode instead.")
  (studentCode m))

(cl:ensure-generic-function 'GPA-val :lambda-list '(m))
(cl:defmethod GPA-val ((m <StudentInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader student_info_pkg-msg:GPA-val is deprecated.  Use student_info_pkg-msg:GPA instead.")
  (GPA m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StudentInfo>) ostream)
  "Serializes a message object of type '<StudentInfo>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nameStudent))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nameStudent))
  (cl:let* ((signed (cl:slot-value msg 'studentCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'GPA))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StudentInfo>) istream)
  "Deserializes a message object of type '<StudentInfo>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nameStudent) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nameStudent) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'studentCode) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GPA) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StudentInfo>)))
  "Returns string type for a message object of type '<StudentInfo>"
  "student_info_pkg/StudentInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StudentInfo)))
  "Returns string type for a message object of type 'StudentInfo"
  "student_info_pkg/StudentInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StudentInfo>)))
  "Returns md5sum for a message object of type '<StudentInfo>"
  "1af1065b00224406cc47ede40cb331d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StudentInfo)))
  "Returns md5sum for a message object of type 'StudentInfo"
  "1af1065b00224406cc47ede40cb331d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StudentInfo>)))
  "Returns full string definition for message of type '<StudentInfo>"
  (cl:format cl:nil "string nameStudent~%int32 studentCode~%float32 GPA~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StudentInfo)))
  "Returns full string definition for message of type 'StudentInfo"
  (cl:format cl:nil "string nameStudent~%int32 studentCode~%float32 GPA~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StudentInfo>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'nameStudent))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StudentInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'StudentInfo
    (cl:cons ':nameStudent (nameStudent msg))
    (cl:cons ':studentCode (studentCode msg))
    (cl:cons ':GPA (GPA msg))
))
