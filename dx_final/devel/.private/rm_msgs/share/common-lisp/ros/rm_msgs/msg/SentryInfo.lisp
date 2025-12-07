; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SentryInfo.msg.html

(cl:defclass <SentryInfo> (roslisp-msg-protocol:ros-message)
  ((sentry_info
    :reader sentry_info
    :initarg :sentry_info
    :type cl:integer
    :initform 0)
   (is_out_of_war
    :reader is_out_of_war
    :initarg :is_out_of_war
    :type cl:boolean
    :initform cl:nil)
   (remaining_bullets_can_supply
    :reader remaining_bullets_can_supply
    :initarg :remaining_bullets_can_supply
    :type cl:fixnum
    :initform 0))
)

(cl:defclass SentryInfo (<SentryInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SentryInfo> is deprecated: use rm_msgs-msg:SentryInfo instead.")))

(cl:ensure-generic-function 'sentry_info-val :lambda-list '(m))
(cl:defmethod sentry_info-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_info-val is deprecated.  Use rm_msgs-msg:sentry_info instead.")
  (sentry_info m))

(cl:ensure-generic-function 'is_out_of_war-val :lambda-list '(m))
(cl:defmethod is_out_of_war-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:is_out_of_war-val is deprecated.  Use rm_msgs-msg:is_out_of_war instead.")
  (is_out_of_war m))

(cl:ensure-generic-function 'remaining_bullets_can_supply-val :lambda-list '(m))
(cl:defmethod remaining_bullets_can_supply-val ((m <SentryInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:remaining_bullets_can_supply-val is deprecated.  Use rm_msgs-msg:remaining_bullets_can_supply instead.")
  (remaining_bullets_can_supply m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryInfo>) ostream)
  "Serializes a message object of type '<SentryInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_out_of_war) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_bullets_can_supply)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remaining_bullets_can_supply)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryInfo>) istream)
  "Deserializes a message object of type '<SentryInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'is_out_of_war) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_bullets_can_supply)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remaining_bullets_can_supply)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryInfo>)))
  "Returns string type for a message object of type '<SentryInfo>"
  "rm_msgs/SentryInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryInfo)))
  "Returns string type for a message object of type 'SentryInfo"
  "rm_msgs/SentryInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryInfo>)))
  "Returns md5sum for a message object of type '<SentryInfo>"
  "12d17492af26f6bdf5a621bccb488999")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryInfo)))
  "Returns md5sum for a message object of type 'SentryInfo"
  "12d17492af26f6bdf5a621bccb488999")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryInfo>)))
  "Returns full string definition for message of type '<SentryInfo>"
  (cl:format cl:nil "uint32 sentry_info~%bool is_out_of_war~%uint16 remaining_bullets_can_supply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryInfo)))
  "Returns full string definition for message of type 'SentryInfo"
  (cl:format cl:nil "uint32 sentry_info~%bool is_out_of_war~%uint16 remaining_bullets_can_supply~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryInfo>))
  (cl:+ 0
     4
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryInfo
    (cl:cons ':sentry_info (sentry_info msg))
    (cl:cons ':is_out_of_war (is_out_of_war msg))
    (cl:cons ':remaining_bullets_can_supply (remaining_bullets_can_supply msg))
))
