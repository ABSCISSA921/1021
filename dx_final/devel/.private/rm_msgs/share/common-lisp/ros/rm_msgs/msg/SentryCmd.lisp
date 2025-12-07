; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SentryCmd.msg.html

(cl:defclass <SentryCmd> (roslisp-msg-protocol:ros-message)
  ((sentry_info
    :reader sentry_info
    :initarg :sentry_info
    :type cl:integer
    :initform 0))
)

(cl:defclass SentryCmd (<SentryCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SentryCmd> is deprecated: use rm_msgs-msg:SentryCmd instead.")))

(cl:ensure-generic-function 'sentry_info-val :lambda-list '(m))
(cl:defmethod sentry_info-val ((m <SentryCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_info-val is deprecated.  Use rm_msgs-msg:sentry_info instead.")
  (sentry_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryCmd>) ostream)
  "Serializes a message object of type '<SentryCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryCmd>) istream)
  "Deserializes a message object of type '<SentryCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sentry_info)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryCmd>)))
  "Returns string type for a message object of type '<SentryCmd>"
  "rm_msgs/SentryCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryCmd)))
  "Returns string type for a message object of type 'SentryCmd"
  "rm_msgs/SentryCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryCmd>)))
  "Returns md5sum for a message object of type '<SentryCmd>"
  "1a21fe818ae8429588925e99460baf95")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryCmd)))
  "Returns md5sum for a message object of type 'SentryCmd"
  "1a21fe818ae8429588925e99460baf95")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryCmd>)))
  "Returns full string definition for message of type '<SentryCmd>"
  (cl:format cl:nil "uint32 sentry_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryCmd)))
  "Returns full string definition for message of type 'SentryCmd"
  (cl:format cl:nil "uint32 sentry_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryCmd>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryCmd
    (cl:cons ':sentry_info (sentry_info msg))
))
