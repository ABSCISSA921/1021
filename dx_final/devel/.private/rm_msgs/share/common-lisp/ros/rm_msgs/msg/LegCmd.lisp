; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude LegCmd.msg.html

(cl:defclass <LegCmd> (roslisp-msg-protocol:ros-message)
  ((jump
    :reader jump
    :initarg :jump
    :type cl:boolean
    :initform cl:nil)
   (leg_length
    :reader leg_length
    :initarg :leg_length
    :type cl:float
    :initform 0.0))
)

(cl:defclass LegCmd (<LegCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LegCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LegCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<LegCmd> is deprecated: use rm_msgs-msg:LegCmd instead.")))

(cl:ensure-generic-function 'jump-val :lambda-list '(m))
(cl:defmethod jump-val ((m <LegCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:jump-val is deprecated.  Use rm_msgs-msg:jump instead.")
  (jump m))

(cl:ensure-generic-function 'leg_length-val :lambda-list '(m))
(cl:defmethod leg_length-val ((m <LegCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:leg_length-val is deprecated.  Use rm_msgs-msg:leg_length instead.")
  (leg_length m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LegCmd>) ostream)
  "Serializes a message object of type '<LegCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'jump) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leg_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LegCmd>) istream)
  "Deserializes a message object of type '<LegCmd>"
    (cl:setf (cl:slot-value msg 'jump) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leg_length) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LegCmd>)))
  "Returns string type for a message object of type '<LegCmd>"
  "rm_msgs/LegCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LegCmd)))
  "Returns string type for a message object of type 'LegCmd"
  "rm_msgs/LegCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LegCmd>)))
  "Returns md5sum for a message object of type '<LegCmd>"
  "b88c1d23c403ffa8f3ded0d5c3447e4f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LegCmd)))
  "Returns md5sum for a message object of type 'LegCmd"
  "b88c1d23c403ffa8f3ded0d5c3447e4f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LegCmd>)))
  "Returns full string definition for message of type '<LegCmd>"
  (cl:format cl:nil "bool jump~%float64 leg_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LegCmd)))
  "Returns full string definition for message of type 'LegCmd"
  (cl:format cl:nil "bool jump~%float64 leg_length~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LegCmd>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LegCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'LegCmd
    (cl:cons ':jump (jump msg))
    (cl:cons ':leg_length (leg_length msg))
))
