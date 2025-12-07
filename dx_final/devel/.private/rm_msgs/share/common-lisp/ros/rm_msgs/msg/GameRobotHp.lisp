; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GameRobotHp.msg.html

(cl:defclass <GameRobotHp> (roslisp-msg-protocol:ros-message)
  ((red_1_robot_hp
    :reader red_1_robot_hp
    :initarg :red_1_robot_hp
    :type cl:fixnum
    :initform 0)
   (red_2_robot_hp
    :reader red_2_robot_hp
    :initarg :red_2_robot_hp
    :type cl:fixnum
    :initform 0)
   (red_3_robot_hp
    :reader red_3_robot_hp
    :initarg :red_3_robot_hp
    :type cl:fixnum
    :initform 0)
   (red_4_robot_hp
    :reader red_4_robot_hp
    :initarg :red_4_robot_hp
    :type cl:fixnum
    :initform 0)
   (red_7_robot_hp
    :reader red_7_robot_hp
    :initarg :red_7_robot_hp
    :type cl:fixnum
    :initform 0)
   (red_outpost_hp
    :reader red_outpost_hp
    :initarg :red_outpost_hp
    :type cl:fixnum
    :initform 0)
   (red_base_hp
    :reader red_base_hp
    :initarg :red_base_hp
    :type cl:fixnum
    :initform 0)
   (blue_1_robot_hp
    :reader blue_1_robot_hp
    :initarg :blue_1_robot_hp
    :type cl:fixnum
    :initform 0)
   (blue_2_robot_hp
    :reader blue_2_robot_hp
    :initarg :blue_2_robot_hp
    :type cl:fixnum
    :initform 0)
   (blue_3_robot_hp
    :reader blue_3_robot_hp
    :initarg :blue_3_robot_hp
    :type cl:fixnum
    :initform 0)
   (blue_4_robot_hp
    :reader blue_4_robot_hp
    :initarg :blue_4_robot_hp
    :type cl:fixnum
    :initform 0)
   (blue_7_robot_hp
    :reader blue_7_robot_hp
    :initarg :blue_7_robot_hp
    :type cl:fixnum
    :initform 0)
   (blue_outpost_hp
    :reader blue_outpost_hp
    :initarg :blue_outpost_hp
    :type cl:fixnum
    :initform 0)
   (blue_base_hp
    :reader blue_base_hp
    :initarg :blue_base_hp
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GameRobotHp (<GameRobotHp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameRobotHp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameRobotHp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GameRobotHp> is deprecated: use rm_msgs-msg:GameRobotHp instead.")))

(cl:ensure-generic-function 'red_1_robot_hp-val :lambda-list '(m))
(cl:defmethod red_1_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_1_robot_hp-val is deprecated.  Use rm_msgs-msg:red_1_robot_hp instead.")
  (red_1_robot_hp m))

(cl:ensure-generic-function 'red_2_robot_hp-val :lambda-list '(m))
(cl:defmethod red_2_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_2_robot_hp-val is deprecated.  Use rm_msgs-msg:red_2_robot_hp instead.")
  (red_2_robot_hp m))

(cl:ensure-generic-function 'red_3_robot_hp-val :lambda-list '(m))
(cl:defmethod red_3_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_3_robot_hp-val is deprecated.  Use rm_msgs-msg:red_3_robot_hp instead.")
  (red_3_robot_hp m))

(cl:ensure-generic-function 'red_4_robot_hp-val :lambda-list '(m))
(cl:defmethod red_4_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_4_robot_hp-val is deprecated.  Use rm_msgs-msg:red_4_robot_hp instead.")
  (red_4_robot_hp m))

(cl:ensure-generic-function 'red_7_robot_hp-val :lambda-list '(m))
(cl:defmethod red_7_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_7_robot_hp-val is deprecated.  Use rm_msgs-msg:red_7_robot_hp instead.")
  (red_7_robot_hp m))

(cl:ensure-generic-function 'red_outpost_hp-val :lambda-list '(m))
(cl:defmethod red_outpost_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_outpost_hp-val is deprecated.  Use rm_msgs-msg:red_outpost_hp instead.")
  (red_outpost_hp m))

(cl:ensure-generic-function 'red_base_hp-val :lambda-list '(m))
(cl:defmethod red_base_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_base_hp-val is deprecated.  Use rm_msgs-msg:red_base_hp instead.")
  (red_base_hp m))

(cl:ensure-generic-function 'blue_1_robot_hp-val :lambda-list '(m))
(cl:defmethod blue_1_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_1_robot_hp-val is deprecated.  Use rm_msgs-msg:blue_1_robot_hp instead.")
  (blue_1_robot_hp m))

(cl:ensure-generic-function 'blue_2_robot_hp-val :lambda-list '(m))
(cl:defmethod blue_2_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_2_robot_hp-val is deprecated.  Use rm_msgs-msg:blue_2_robot_hp instead.")
  (blue_2_robot_hp m))

(cl:ensure-generic-function 'blue_3_robot_hp-val :lambda-list '(m))
(cl:defmethod blue_3_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_3_robot_hp-val is deprecated.  Use rm_msgs-msg:blue_3_robot_hp instead.")
  (blue_3_robot_hp m))

(cl:ensure-generic-function 'blue_4_robot_hp-val :lambda-list '(m))
(cl:defmethod blue_4_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_4_robot_hp-val is deprecated.  Use rm_msgs-msg:blue_4_robot_hp instead.")
  (blue_4_robot_hp m))

(cl:ensure-generic-function 'blue_7_robot_hp-val :lambda-list '(m))
(cl:defmethod blue_7_robot_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_7_robot_hp-val is deprecated.  Use rm_msgs-msg:blue_7_robot_hp instead.")
  (blue_7_robot_hp m))

(cl:ensure-generic-function 'blue_outpost_hp-val :lambda-list '(m))
(cl:defmethod blue_outpost_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_outpost_hp-val is deprecated.  Use rm_msgs-msg:blue_outpost_hp instead.")
  (blue_outpost_hp m))

(cl:ensure-generic-function 'blue_base_hp-val :lambda-list '(m))
(cl:defmethod blue_base_hp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_base_hp-val is deprecated.  Use rm_msgs-msg:blue_base_hp instead.")
  (blue_base_hp m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GameRobotHp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameRobotHp>) ostream)
  "Serializes a message object of type '<GameRobotHp>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_1_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_1_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_2_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_2_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_3_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_3_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_4_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_4_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_7_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_7_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_outpost_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_outpost_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_base_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_base_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_1_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_1_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_2_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_2_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_3_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_3_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_4_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_4_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_7_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_7_robot_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_outpost_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_outpost_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_base_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_base_hp)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameRobotHp>) istream)
  "Deserializes a message object of type '<GameRobotHp>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_1_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_1_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_2_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_2_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_3_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_3_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_4_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_4_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_7_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_7_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_outpost_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_outpost_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_base_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_base_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_1_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_1_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_2_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_2_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_3_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_3_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_4_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_4_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_7_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_7_robot_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_outpost_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_outpost_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_base_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_base_hp)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameRobotHp>)))
  "Returns string type for a message object of type '<GameRobotHp>"
  "rm_msgs/GameRobotHp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameRobotHp)))
  "Returns string type for a message object of type 'GameRobotHp"
  "rm_msgs/GameRobotHp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameRobotHp>)))
  "Returns md5sum for a message object of type '<GameRobotHp>"
  "e5d546edb3e33187072fe91b31fba3ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameRobotHp)))
  "Returns md5sum for a message object of type 'GameRobotHp"
  "e5d546edb3e33187072fe91b31fba3ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameRobotHp>)))
  "Returns full string definition for message of type '<GameRobotHp>"
  (cl:format cl:nil "uint16 red_1_robot_hp~%uint16 red_2_robot_hp~%uint16 red_3_robot_hp~%uint16 red_4_robot_hp~%uint16 red_7_robot_hp~%uint16 red_outpost_hp~%uint16 red_base_hp~%uint16 blue_1_robot_hp~%uint16 blue_2_robot_hp~%uint16 blue_3_robot_hp~%uint16 blue_4_robot_hp~%uint16 blue_7_robot_hp~%uint16 blue_outpost_hp~%uint16 blue_base_hp~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameRobotHp)))
  "Returns full string definition for message of type 'GameRobotHp"
  (cl:format cl:nil "uint16 red_1_robot_hp~%uint16 red_2_robot_hp~%uint16 red_3_robot_hp~%uint16 red_4_robot_hp~%uint16 red_7_robot_hp~%uint16 red_outpost_hp~%uint16 red_base_hp~%uint16 blue_1_robot_hp~%uint16 blue_2_robot_hp~%uint16 blue_3_robot_hp~%uint16 blue_4_robot_hp~%uint16 blue_7_robot_hp~%uint16 blue_outpost_hp~%uint16 blue_base_hp~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameRobotHp>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameRobotHp>))
  "Converts a ROS message object to a list"
  (cl:list 'GameRobotHp
    (cl:cons ':red_1_robot_hp (red_1_robot_hp msg))
    (cl:cons ':red_2_robot_hp (red_2_robot_hp msg))
    (cl:cons ':red_3_robot_hp (red_3_robot_hp msg))
    (cl:cons ':red_4_robot_hp (red_4_robot_hp msg))
    (cl:cons ':red_7_robot_hp (red_7_robot_hp msg))
    (cl:cons ':red_outpost_hp (red_outpost_hp msg))
    (cl:cons ':red_base_hp (red_base_hp msg))
    (cl:cons ':blue_1_robot_hp (blue_1_robot_hp msg))
    (cl:cons ':blue_2_robot_hp (blue_2_robot_hp msg))
    (cl:cons ':blue_3_robot_hp (blue_3_robot_hp msg))
    (cl:cons ':blue_4_robot_hp (blue_4_robot_hp msg))
    (cl:cons ':blue_7_robot_hp (blue_7_robot_hp msg))
    (cl:cons ':blue_outpost_hp (blue_outpost_hp msg))
    (cl:cons ':blue_base_hp (blue_base_hp msg))
    (cl:cons ':stamp (stamp msg))
))
