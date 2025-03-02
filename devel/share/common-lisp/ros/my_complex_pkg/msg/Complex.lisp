; Auto-generated. Do not edit!


(cl:in-package my_complex_pkg-msg)


;//! \htmlinclude Complex.msg.html

(cl:defclass <Complex> (roslisp-msg-protocol:ros-message)
  ((re
    :reader re
    :initarg :re
    :type cl:float
    :initform 0.0)
   (im
    :reader im
    :initarg :im
    :type cl:float
    :initform 0.0))
)

(cl:defclass Complex (<Complex>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Complex>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Complex)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name my_complex_pkg-msg:<Complex> is deprecated: use my_complex_pkg-msg:Complex instead.")))

(cl:ensure-generic-function 're-val :lambda-list '(m))
(cl:defmethod re-val ((m <Complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_complex_pkg-msg:re-val is deprecated.  Use my_complex_pkg-msg:re instead.")
  (re m))

(cl:ensure-generic-function 'im-val :lambda-list '(m))
(cl:defmethod im-val ((m <Complex>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader my_complex_pkg-msg:im-val is deprecated.  Use my_complex_pkg-msg:im instead.")
  (im m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Complex>) ostream)
  "Serializes a message object of type '<Complex>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 're))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'im))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Complex>) istream)
  "Deserializes a message object of type '<Complex>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 're) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'im) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Complex>)))
  "Returns string type for a message object of type '<Complex>"
  "my_complex_pkg/Complex")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Complex)))
  "Returns string type for a message object of type 'Complex"
  "my_complex_pkg/Complex")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Complex>)))
  "Returns md5sum for a message object of type '<Complex>"
  "912f775e9b7f1ccab5a7496314643393")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Complex)))
  "Returns md5sum for a message object of type 'Complex"
  "912f775e9b7f1ccab5a7496314643393")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Complex>)))
  "Returns full string definition for message of type '<Complex>"
  (cl:format cl:nil "float32 re~%float32 im~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Complex)))
  "Returns full string definition for message of type 'Complex"
  (cl:format cl:nil "float32 re~%float32 im~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Complex>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Complex>))
  "Converts a ROS message object to a list"
  (cl:list 'Complex
    (cl:cons ':re (re msg))
    (cl:cons ':im (im msg))
))
