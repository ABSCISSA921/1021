; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ShootBeforehandCmd.msg.html

(cl:defclass <ShootBeforehandCmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ShootBeforehandCmd (<ShootBeforehandCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootBeforehandCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootBeforehandCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ShootBeforehandCmd> is deprecated: use rm_msgs-msg:ShootBeforehandCmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ShootBeforehandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:cmd-val is deprecated.  Use rm_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShootBeforehandCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ShootBeforehandCmd>)))
    "Constants for message type '<ShootBeforehandCmd>"
  '((:BAN_SHOOT . 0)
    (:JUDGE_BY_ERROR . 1)
    (:ALLOW_SHOOT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ShootBeforehandCmd)))
    "Constants for message type 'ShootBeforehandCmd"
  '((:BAN_SHOOT . 0)
    (:JUDGE_BY_ERROR . 1)
    (:ALLOW_SHOOT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootBeforehandCmd>) ostream)
  "Serializes a message object of type '<ShootBeforehandCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootBeforehandCmd>) istream)
  "Deserializes a message object of type '<ShootBeforehandCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootBeforehandCmd>)))
  "Returns string type for a message object of type '<ShootBeforehandCmd>"
  "rm_msgs/ShootBeforehandCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootBeforehandCmd)))
  "Returns string type for a message object of type 'ShootBeforehandCmd"
  "rm_msgs/ShootBeforehandCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootBeforehandCmd>)))
  "Returns md5sum for a message object of type '<ShootBeforehandCmd>"
  "0d0971a7e1340988ce149c76e012d34d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootBeforehandCmd)))
  "Returns md5sum for a message object of type 'ShootBeforehandCmd"
  "0d0971a7e1340988ce149c76e012d34d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootBeforehandCmd>)))
  "Returns full string definition for message of type '<ShootBeforehandCmd>"
  (cl:format cl:nil "uint8 BAN_SHOOT = 0~%uint8 JUDGE_BY_ERROR = 1~%uint8 ALLOW_SHOOT = 2~%~%uint8 cmd~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootBeforehandCmd)))
  "Returns full string definition for message of type 'ShootBeforehandCmd"
  (cl:format cl:nil "uint8 BAN_SHOOT = 0~%uint8 JUDGE_BY_ERROR = 1~%uint8 ALLOW_SHOOT = 2~%~%uint8 cmd~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootBeforehandCmd>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootBeforehandCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootBeforehandCmd
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':stamp (stamp msg))
))
