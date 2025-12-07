; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SentryAttackingTarget.msg.html

(cl:defclass <SentryAttackingTarget> (roslisp-msg-protocol:ros-message)
  ((target_robot_ID
    :reader target_robot_ID
    :initarg :target_robot_ID
    :type cl:fixnum
    :initform 0)
   (target_position_x
    :reader target_position_x
    :initarg :target_position_x
    :type cl:float
    :initform 0.0)
   (target_position_y
    :reader target_position_y
    :initarg :target_position_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass SentryAttackingTarget (<SentryAttackingTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryAttackingTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryAttackingTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SentryAttackingTarget> is deprecated: use rm_msgs-msg:SentryAttackingTarget instead.")))

(cl:ensure-generic-function 'target_robot_ID-val :lambda-list '(m))
(cl:defmethod target_robot_ID-val ((m <SentryAttackingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_robot_ID-val is deprecated.  Use rm_msgs-msg:target_robot_ID instead.")
  (target_robot_ID m))

(cl:ensure-generic-function 'target_position_x-val :lambda-list '(m))
(cl:defmethod target_position_x-val ((m <SentryAttackingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_x-val is deprecated.  Use rm_msgs-msg:target_position_x instead.")
  (target_position_x m))

(cl:ensure-generic-function 'target_position_y-val :lambda-list '(m))
(cl:defmethod target_position_y-val ((m <SentryAttackingTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_y-val is deprecated.  Use rm_msgs-msg:target_position_y instead.")
  (target_position_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryAttackingTarget>) ostream)
  "Serializes a message object of type '<SentryAttackingTarget>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryAttackingTarget>) istream)
  "Deserializes a message object of type '<SentryAttackingTarget>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_y) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryAttackingTarget>)))
  "Returns string type for a message object of type '<SentryAttackingTarget>"
  "rm_msgs/SentryAttackingTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryAttackingTarget)))
  "Returns string type for a message object of type 'SentryAttackingTarget"
  "rm_msgs/SentryAttackingTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryAttackingTarget>)))
  "Returns md5sum for a message object of type '<SentryAttackingTarget>"
  "7a40fa9feb588f965f643eb4bde597b4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryAttackingTarget)))
  "Returns md5sum for a message object of type 'SentryAttackingTarget"
  "7a40fa9feb588f965f643eb4bde597b4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryAttackingTarget>)))
  "Returns full string definition for message of type '<SentryAttackingTarget>"
  (cl:format cl:nil "uint8 target_robot_ID~%float32 target_position_x~%float32 target_position_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryAttackingTarget)))
  "Returns full string definition for message of type 'SentryAttackingTarget"
  (cl:format cl:nil "uint8 target_robot_ID~%float32 target_position_x~%float32 target_position_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryAttackingTarget>))
  (cl:+ 0
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryAttackingTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryAttackingTarget
    (cl:cons ':target_robot_ID (target_robot_ID msg))
    (cl:cons ':target_position_x (target_position_x msg))
    (cl:cons ':target_position_y (target_position_y msg))
))
