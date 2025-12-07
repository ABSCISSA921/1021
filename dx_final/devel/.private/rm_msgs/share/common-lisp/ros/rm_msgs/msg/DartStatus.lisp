; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DartStatus.msg.html

(cl:defclass <DartStatus> (roslisp-msg-protocol:ros-message)
  ((dart_belong
    :reader dart_belong
    :initarg :dart_belong
    :type cl:fixnum
    :initform 0)
   (stage_remaining_time
    :reader stage_remaining_time
    :initarg :stage_remaining_time
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DartStatus (<DartStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DartStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DartStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DartStatus> is deprecated: use rm_msgs-msg:DartStatus instead.")))

(cl:ensure-generic-function 'dart_belong-val :lambda-list '(m))
(cl:defmethod dart_belong-val ((m <DartStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_belong-val is deprecated.  Use rm_msgs-msg:dart_belong instead.")
  (dart_belong m))

(cl:ensure-generic-function 'stage_remaining_time-val :lambda-list '(m))
(cl:defmethod stage_remaining_time-val ((m <DartStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stage_remaining_time-val is deprecated.  Use rm_msgs-msg:stage_remaining_time instead.")
  (stage_remaining_time m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DartStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DartStatus>) ostream)
  "Serializes a message object of type '<DartStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_belong)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stage_remaining_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stage_remaining_time)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DartStatus>) istream)
  "Deserializes a message object of type '<DartStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_belong)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stage_remaining_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stage_remaining_time)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DartStatus>)))
  "Returns string type for a message object of type '<DartStatus>"
  "rm_msgs/DartStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DartStatus)))
  "Returns string type for a message object of type 'DartStatus"
  "rm_msgs/DartStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DartStatus>)))
  "Returns md5sum for a message object of type '<DartStatus>"
  "2b9f6d95c72e29f45d76805d30f6de59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DartStatus)))
  "Returns md5sum for a message object of type 'DartStatus"
  "2b9f6d95c72e29f45d76805d30f6de59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DartStatus>)))
  "Returns full string definition for message of type '<DartStatus>"
  (cl:format cl:nil "uint8 dart_belong~%uint16 stage_remaining_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DartStatus)))
  "Returns full string definition for message of type 'DartStatus"
  (cl:format cl:nil "uint8 dart_belong~%uint16 stage_remaining_time~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DartStatus>))
  (cl:+ 0
     1
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DartStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'DartStatus
    (cl:cons ':dart_belong (dart_belong msg))
    (cl:cons ':stage_remaining_time (stage_remaining_time msg))
    (cl:cons ':stamp (stamp msg))
))
