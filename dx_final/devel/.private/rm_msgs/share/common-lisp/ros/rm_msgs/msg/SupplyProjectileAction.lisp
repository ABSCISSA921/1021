; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SupplyProjectileAction.msg.html

(cl:defclass <SupplyProjectileAction> (roslisp-msg-protocol:ros-message)
  ((reserved
    :reader reserved
    :initarg :reserved
    :type cl:fixnum
    :initform 0)
   (supply_robot_id
    :reader supply_robot_id
    :initarg :supply_robot_id
    :type cl:fixnum
    :initform 0)
   (supply_projectile_step
    :reader supply_projectile_step
    :initarg :supply_projectile_step
    :type cl:fixnum
    :initform 0)
   (supply_projectile_num
    :reader supply_projectile_num
    :initarg :supply_projectile_num
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass SupplyProjectileAction (<SupplyProjectileAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SupplyProjectileAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SupplyProjectileAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SupplyProjectileAction> is deprecated: use rm_msgs-msg:SupplyProjectileAction instead.")))

(cl:ensure-generic-function 'reserved-val :lambda-list '(m))
(cl:defmethod reserved-val ((m <SupplyProjectileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:reserved-val is deprecated.  Use rm_msgs-msg:reserved instead.")
  (reserved m))

(cl:ensure-generic-function 'supply_robot_id-val :lambda-list '(m))
(cl:defmethod supply_robot_id-val ((m <SupplyProjectileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:supply_robot_id-val is deprecated.  Use rm_msgs-msg:supply_robot_id instead.")
  (supply_robot_id m))

(cl:ensure-generic-function 'supply_projectile_step-val :lambda-list '(m))
(cl:defmethod supply_projectile_step-val ((m <SupplyProjectileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:supply_projectile_step-val is deprecated.  Use rm_msgs-msg:supply_projectile_step instead.")
  (supply_projectile_step m))

(cl:ensure-generic-function 'supply_projectile_num-val :lambda-list '(m))
(cl:defmethod supply_projectile_num-val ((m <SupplyProjectileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:supply_projectile_num-val is deprecated.  Use rm_msgs-msg:supply_projectile_num instead.")
  (supply_projectile_num m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <SupplyProjectileAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SupplyProjectileAction>) ostream)
  "Serializes a message object of type '<SupplyProjectileAction>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_projectile_step)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_projectile_num)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SupplyProjectileAction>) istream)
  "Deserializes a message object of type '<SupplyProjectileAction>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'reserved)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_projectile_step)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'supply_projectile_num)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SupplyProjectileAction>)))
  "Returns string type for a message object of type '<SupplyProjectileAction>"
  "rm_msgs/SupplyProjectileAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SupplyProjectileAction)))
  "Returns string type for a message object of type 'SupplyProjectileAction"
  "rm_msgs/SupplyProjectileAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SupplyProjectileAction>)))
  "Returns md5sum for a message object of type '<SupplyProjectileAction>"
  "d81bba2bf8a15a489bbec0963e04690c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SupplyProjectileAction)))
  "Returns md5sum for a message object of type 'SupplyProjectileAction"
  "d81bba2bf8a15a489bbec0963e04690c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SupplyProjectileAction>)))
  "Returns full string definition for message of type '<SupplyProjectileAction>"
  (cl:format cl:nil "uint8 reserved~%uint8 supply_robot_id~%uint8 supply_projectile_step~%uint8 supply_projectile_num~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SupplyProjectileAction)))
  "Returns full string definition for message of type 'SupplyProjectileAction"
  (cl:format cl:nil "uint8 reserved~%uint8 supply_robot_id~%uint8 supply_projectile_step~%uint8 supply_projectile_num~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SupplyProjectileAction>))
  (cl:+ 0
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SupplyProjectileAction>))
  "Converts a ROS message object to a list"
  (cl:list 'SupplyProjectileAction
    (cl:cons ':reserved (reserved msg))
    (cl:cons ':supply_robot_id (supply_robot_id msg))
    (cl:cons ':supply_projectile_step (supply_projectile_step msg))
    (cl:cons ':supply_projectile_num (supply_projectile_num msg))
    (cl:cons ':stamp (stamp msg))
))
