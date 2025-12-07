; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DartInfo.msg.html

(cl:defclass <DartInfo> (roslisp-msg-protocol:ros-message)
  ((dart_remaining_time
    :reader dart_remaining_time
    :initarg :dart_remaining_time
    :type cl:fixnum
    :initform 0)
   (dart_last_aim_state
    :reader dart_last_aim_state
    :initarg :dart_last_aim_state
    :type cl:fixnum
    :initform 0)
   (enemy_total_hit_received
    :reader enemy_total_hit_received
    :initarg :enemy_total_hit_received
    :type cl:fixnum
    :initform 0)
   (dart_current_target
    :reader dart_current_target
    :initarg :dart_current_target
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DartInfo (<DartInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DartInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DartInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DartInfo> is deprecated: use rm_msgs-msg:DartInfo instead.")))

(cl:ensure-generic-function 'dart_remaining_time-val :lambda-list '(m))
(cl:defmethod dart_remaining_time-val ((m <DartInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_remaining_time-val is deprecated.  Use rm_msgs-msg:dart_remaining_time instead.")
  (dart_remaining_time m))

(cl:ensure-generic-function 'dart_last_aim_state-val :lambda-list '(m))
(cl:defmethod dart_last_aim_state-val ((m <DartInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_last_aim_state-val is deprecated.  Use rm_msgs-msg:dart_last_aim_state instead.")
  (dart_last_aim_state m))

(cl:ensure-generic-function 'enemy_total_hit_received-val :lambda-list '(m))
(cl:defmethod enemy_total_hit_received-val ((m <DartInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_total_hit_received-val is deprecated.  Use rm_msgs-msg:enemy_total_hit_received instead.")
  (enemy_total_hit_received m))

(cl:ensure-generic-function 'dart_current_target-val :lambda-list '(m))
(cl:defmethod dart_current_target-val ((m <DartInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_current_target-val is deprecated.  Use rm_msgs-msg:dart_current_target instead.")
  (dart_current_target m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DartInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DartInfo>) ostream)
  "Serializes a message object of type '<DartInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_remaining_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_last_aim_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enemy_total_hit_received)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_current_target)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DartInfo>) istream)
  "Deserializes a message object of type '<DartInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_remaining_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_last_aim_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'enemy_total_hit_received)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_current_target)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DartInfo>)))
  "Returns string type for a message object of type '<DartInfo>"
  "rm_msgs/DartInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DartInfo)))
  "Returns string type for a message object of type 'DartInfo"
  "rm_msgs/DartInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DartInfo>)))
  "Returns md5sum for a message object of type '<DartInfo>"
  "73e2079390bc6e9a5cb0850ee23279ca")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DartInfo)))
  "Returns md5sum for a message object of type 'DartInfo"
  "73e2079390bc6e9a5cb0850ee23279ca")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DartInfo>)))
  "Returns full string definition for message of type '<DartInfo>"
  (cl:format cl:nil "uint8 dart_remaining_time~%uint8 dart_last_aim_state~%uint8 enemy_total_hit_received~%uint8 dart_current_target~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DartInfo)))
  "Returns full string definition for message of type 'DartInfo"
  (cl:format cl:nil "uint8 dart_remaining_time~%uint8 dart_last_aim_state~%uint8 enemy_total_hit_received~%uint8 dart_current_target~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DartInfo>))
  (cl:+ 0
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DartInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DartInfo
    (cl:cons ':dart_remaining_time (dart_remaining_time msg))
    (cl:cons ':dart_last_aim_state (dart_last_aim_state msg))
    (cl:cons ':enemy_total_hit_received (enemy_total_hit_received msg))
    (cl:cons ':dart_current_target (dart_current_target msg))
    (cl:cons ':stamp (stamp msg))
))
