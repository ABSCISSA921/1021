; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GameRobotStatus.msg.html

(cl:defclass <GameRobotStatus> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:fixnum
    :initform 0)
   (robot_level
    :reader robot_level
    :initarg :robot_level
    :type cl:fixnum
    :initform 0)
   (remain_hp
    :reader remain_hp
    :initarg :remain_hp
    :type cl:fixnum
    :initform 0)
   (max_hp
    :reader max_hp
    :initarg :max_hp
    :type cl:fixnum
    :initform 0)
   (shooter_cooling_rate
    :reader shooter_cooling_rate
    :initarg :shooter_cooling_rate
    :type cl:fixnum
    :initform 0)
   (shooter_cooling_limit
    :reader shooter_cooling_limit
    :initarg :shooter_cooling_limit
    :type cl:fixnum
    :initform 0)
   (chassis_power_limit
    :reader chassis_power_limit
    :initarg :chassis_power_limit
    :type cl:fixnum
    :initform 0)
   (mains_power_gimbal_output
    :reader mains_power_gimbal_output
    :initarg :mains_power_gimbal_output
    :type cl:fixnum
    :initform 0)
   (mains_power_chassis_output
    :reader mains_power_chassis_output
    :initarg :mains_power_chassis_output
    :type cl:fixnum
    :initform 0)
   (mains_power_shooter_output
    :reader mains_power_shooter_output
    :initarg :mains_power_shooter_output
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GameRobotStatus (<GameRobotStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameRobotStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameRobotStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GameRobotStatus> is deprecated: use rm_msgs-msg:GameRobotStatus instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:robot_id-val is deprecated.  Use rm_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'robot_level-val :lambda-list '(m))
(cl:defmethod robot_level-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:robot_level-val is deprecated.  Use rm_msgs-msg:robot_level instead.")
  (robot_level m))

(cl:ensure-generic-function 'remain_hp-val :lambda-list '(m))
(cl:defmethod remain_hp-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:remain_hp-val is deprecated.  Use rm_msgs-msg:remain_hp instead.")
  (remain_hp m))

(cl:ensure-generic-function 'max_hp-val :lambda-list '(m))
(cl:defmethod max_hp-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:max_hp-val is deprecated.  Use rm_msgs-msg:max_hp instead.")
  (max_hp m))

(cl:ensure-generic-function 'shooter_cooling_rate-val :lambda-list '(m))
(cl:defmethod shooter_cooling_rate-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_cooling_rate-val is deprecated.  Use rm_msgs-msg:shooter_cooling_rate instead.")
  (shooter_cooling_rate m))

(cl:ensure-generic-function 'shooter_cooling_limit-val :lambda-list '(m))
(cl:defmethod shooter_cooling_limit-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_cooling_limit-val is deprecated.  Use rm_msgs-msg:shooter_cooling_limit instead.")
  (shooter_cooling_limit m))

(cl:ensure-generic-function 'chassis_power_limit-val :lambda-list '(m))
(cl:defmethod chassis_power_limit-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_power_limit-val is deprecated.  Use rm_msgs-msg:chassis_power_limit instead.")
  (chassis_power_limit m))

(cl:ensure-generic-function 'mains_power_gimbal_output-val :lambda-list '(m))
(cl:defmethod mains_power_gimbal_output-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mains_power_gimbal_output-val is deprecated.  Use rm_msgs-msg:mains_power_gimbal_output instead.")
  (mains_power_gimbal_output m))

(cl:ensure-generic-function 'mains_power_chassis_output-val :lambda-list '(m))
(cl:defmethod mains_power_chassis_output-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mains_power_chassis_output-val is deprecated.  Use rm_msgs-msg:mains_power_chassis_output instead.")
  (mains_power_chassis_output m))

(cl:ensure-generic-function 'mains_power_shooter_output-val :lambda-list '(m))
(cl:defmethod mains_power_shooter_output-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mains_power_shooter_output-val is deprecated.  Use rm_msgs-msg:mains_power_shooter_output instead.")
  (mains_power_shooter_output m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GameRobotStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GameRobotStatus>)))
    "Constants for message type '<GameRobotStatus>"
  '((:RED_HERO . 1)
    (:RED_ENGINEER . 2)
    (:RED_STANDARD_3 . 3)
    (:RED_STANDARD_4 . 4)
    (:RED_STANDARD_5 . 5)
    (:RED_AERIAL . 6)
    (:RED_SENTRY . 7)
    (:RED_DART . 8)
    (:RED_RADAR . 9)
    (:RED_OUTPUT . 10)
    (:RED_BASE . 11)
    (:BLUE_HERO . 101)
    (:BLUE_ENGINEER . 102)
    (:BLUE_STANDARD_3 . 103)
    (:BLUE_STANDARD_4 . 104)
    (:BLUE_STANDARD_5 . 105)
    (:BLUE_AERIAL . 106)
    (:BLUE_SENTRY . 107)
    (:BLUE_DART . 108)
    (:BLUE_RADAR . 109)
    (:BLUE_OUTPUT . 110)
    (:BLUE_BASE . 111))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GameRobotStatus)))
    "Constants for message type 'GameRobotStatus"
  '((:RED_HERO . 1)
    (:RED_ENGINEER . 2)
    (:RED_STANDARD_3 . 3)
    (:RED_STANDARD_4 . 4)
    (:RED_STANDARD_5 . 5)
    (:RED_AERIAL . 6)
    (:RED_SENTRY . 7)
    (:RED_DART . 8)
    (:RED_RADAR . 9)
    (:RED_OUTPUT . 10)
    (:RED_BASE . 11)
    (:BLUE_HERO . 101)
    (:BLUE_ENGINEER . 102)
    (:BLUE_STANDARD_3 . 103)
    (:BLUE_STANDARD_4 . 104)
    (:BLUE_STANDARD_5 . 105)
    (:BLUE_AERIAL . 106)
    (:BLUE_SENTRY . 107)
    (:BLUE_DART . 108)
    (:BLUE_RADAR . 109)
    (:BLUE_OUTPUT . 110)
    (:BLUE_BASE . 111))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameRobotStatus>) ostream)
  "Serializes a message object of type '<GameRobotStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_level)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_hp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_cooling_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_cooling_rate)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_cooling_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_cooling_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_limit)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_gimbal_output)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_chassis_output)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_shooter_output)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameRobotStatus>) istream)
  "Deserializes a message object of type '<GameRobotStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_level)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remain_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'remain_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'max_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'max_hp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_cooling_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_cooling_rate)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_cooling_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_cooling_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_limit)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_gimbal_output)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_chassis_output)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mains_power_shooter_output)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameRobotStatus>)))
  "Returns string type for a message object of type '<GameRobotStatus>"
  "rm_msgs/GameRobotStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameRobotStatus)))
  "Returns string type for a message object of type 'GameRobotStatus"
  "rm_msgs/GameRobotStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameRobotStatus>)))
  "Returns md5sum for a message object of type '<GameRobotStatus>"
  "ac6464194db850fc9663b0f365bf8871")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameRobotStatus)))
  "Returns md5sum for a message object of type 'GameRobotStatus"
  "ac6464194db850fc9663b0f365bf8871")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameRobotStatus>)))
  "Returns full string definition for message of type '<GameRobotStatus>"
  (cl:format cl:nil "uint8 RED_HERO = 1~%uint8 RED_ENGINEER = 2~%uint8 RED_STANDARD_3 = 3~%uint8 RED_STANDARD_4 = 4~%uint8 RED_STANDARD_5 = 5~%uint8 RED_AERIAL = 6~%uint8 RED_SENTRY = 7~%uint8 RED_DART = 8~%uint8 RED_RADAR = 9~%uint8 RED_OUTPUT = 10~%uint8 RED_BASE = 11~%uint8 BLUE_HERO = 101~%uint8 BLUE_ENGINEER = 102~%uint8 BLUE_STANDARD_3 = 103~%uint8 BLUE_STANDARD_4 = 104~%uint8 BLUE_STANDARD_5 = 105~%uint8 BLUE_AERIAL = 106~%uint8 BLUE_SENTRY = 107~%uint8 BLUE_DART = 108~%uint8 BLUE_RADAR = 109~%uint8 BLUE_OUTPUT = 110~%uint8 BLUE_BASE = 111~%~%uint8 robot_id~%uint8 robot_level~%uint16 remain_hp~%uint16 max_hp~%uint16 shooter_cooling_rate~%uint16 shooter_cooling_limit~%uint16 chassis_power_limit~%uint8 mains_power_gimbal_output~%uint8 mains_power_chassis_output~%uint8 mains_power_shooter_output~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameRobotStatus)))
  "Returns full string definition for message of type 'GameRobotStatus"
  (cl:format cl:nil "uint8 RED_HERO = 1~%uint8 RED_ENGINEER = 2~%uint8 RED_STANDARD_3 = 3~%uint8 RED_STANDARD_4 = 4~%uint8 RED_STANDARD_5 = 5~%uint8 RED_AERIAL = 6~%uint8 RED_SENTRY = 7~%uint8 RED_DART = 8~%uint8 RED_RADAR = 9~%uint8 RED_OUTPUT = 10~%uint8 RED_BASE = 11~%uint8 BLUE_HERO = 101~%uint8 BLUE_ENGINEER = 102~%uint8 BLUE_STANDARD_3 = 103~%uint8 BLUE_STANDARD_4 = 104~%uint8 BLUE_STANDARD_5 = 105~%uint8 BLUE_AERIAL = 106~%uint8 BLUE_SENTRY = 107~%uint8 BLUE_DART = 108~%uint8 BLUE_RADAR = 109~%uint8 BLUE_OUTPUT = 110~%uint8 BLUE_BASE = 111~%~%uint8 robot_id~%uint8 robot_level~%uint16 remain_hp~%uint16 max_hp~%uint16 shooter_cooling_rate~%uint16 shooter_cooling_limit~%uint16 chassis_power_limit~%uint8 mains_power_gimbal_output~%uint8 mains_power_chassis_output~%uint8 mains_power_shooter_output~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameRobotStatus>))
  (cl:+ 0
     1
     1
     2
     2
     2
     2
     2
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameRobotStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GameRobotStatus
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':robot_level (robot_level msg))
    (cl:cons ':remain_hp (remain_hp msg))
    (cl:cons ':max_hp (max_hp msg))
    (cl:cons ':shooter_cooling_rate (shooter_cooling_rate msg))
    (cl:cons ':shooter_cooling_limit (shooter_cooling_limit msg))
    (cl:cons ':chassis_power_limit (chassis_power_limit msg))
    (cl:cons ':mains_power_gimbal_output (mains_power_gimbal_output msg))
    (cl:cons ':mains_power_chassis_output (mains_power_chassis_output msg))
    (cl:cons ':mains_power_shooter_output (mains_power_shooter_output msg))
    (cl:cons ':stamp (stamp msg))
))
