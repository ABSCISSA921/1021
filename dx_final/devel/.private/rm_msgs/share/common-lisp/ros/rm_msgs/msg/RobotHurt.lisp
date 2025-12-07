; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RobotHurt.msg.html

(cl:defclass <RobotHurt> (roslisp-msg-protocol:ros-message)
  ((armor_id
    :reader armor_id
    :initarg :armor_id
    :type cl:fixnum
    :initform 0)
   (hurt_type
    :reader hurt_type
    :initarg :hurt_type
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass RobotHurt (<RobotHurt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotHurt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotHurt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RobotHurt> is deprecated: use rm_msgs-msg:RobotHurt instead.")))

(cl:ensure-generic-function 'armor_id-val :lambda-list '(m))
(cl:defmethod armor_id-val ((m <RobotHurt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:armor_id-val is deprecated.  Use rm_msgs-msg:armor_id instead.")
  (armor_id m))

(cl:ensure-generic-function 'hurt_type-val :lambda-list '(m))
(cl:defmethod hurt_type-val ((m <RobotHurt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hurt_type-val is deprecated.  Use rm_msgs-msg:hurt_type instead.")
  (hurt_type m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RobotHurt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotHurt>) ostream)
  "Serializes a message object of type '<RobotHurt>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armor_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hurt_type)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotHurt>) istream)
  "Deserializes a message object of type '<RobotHurt>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armor_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hurt_type)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotHurt>)))
  "Returns string type for a message object of type '<RobotHurt>"
  "rm_msgs/RobotHurt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotHurt)))
  "Returns string type for a message object of type 'RobotHurt"
  "rm_msgs/RobotHurt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotHurt>)))
  "Returns md5sum for a message object of type '<RobotHurt>"
  "603a676d8da8f575fe2daaa14c7ac198")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotHurt)))
  "Returns md5sum for a message object of type 'RobotHurt"
  "603a676d8da8f575fe2daaa14c7ac198")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotHurt>)))
  "Returns full string definition for message of type '<RobotHurt>"
  (cl:format cl:nil "uint8 armor_id~%uint8 hurt_type~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotHurt)))
  "Returns full string definition for message of type 'RobotHurt"
  (cl:format cl:nil "uint8 armor_id~%uint8 hurt_type~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotHurt>))
  (cl:+ 0
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotHurt>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotHurt
    (cl:cons ':armor_id (armor_id msg))
    (cl:cons ':hurt_type (hurt_type msg))
    (cl:cons ':stamp (stamp msg))
))
