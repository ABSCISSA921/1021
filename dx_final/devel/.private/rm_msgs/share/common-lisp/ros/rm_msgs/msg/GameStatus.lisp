; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude GameStatus.msg.html

(cl:defclass <GameStatus> (roslisp-msg-protocol:ros-message)
  ((game_type
    :reader game_type
    :initarg :game_type
    :type cl:fixnum
    :initform 0)
   (game_progress
    :reader game_progress
    :initarg :game_progress
    :type cl:fixnum
    :initform 0)
   (stage_remain_time
    :reader stage_remain_time
    :initarg :stage_remain_time
    :type cl:fixnum
    :initform 0)
   (sync_time_stamp
    :reader sync_time_stamp
    :initarg :sync_time_stamp
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass GameStatus (<GameStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GameStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GameStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<GameStatus> is deprecated: use rm_msgs-msg:GameStatus instead.")))

(cl:ensure-generic-function 'game_type-val :lambda-list '(m))
(cl:defmethod game_type-val ((m <GameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:game_type-val is deprecated.  Use rm_msgs-msg:game_type instead.")
  (game_type m))

(cl:ensure-generic-function 'game_progress-val :lambda-list '(m))
(cl:defmethod game_progress-val ((m <GameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:game_progress-val is deprecated.  Use rm_msgs-msg:game_progress instead.")
  (game_progress m))

(cl:ensure-generic-function 'stage_remain_time-val :lambda-list '(m))
(cl:defmethod stage_remain_time-val ((m <GameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stage_remain_time-val is deprecated.  Use rm_msgs-msg:stage_remain_time instead.")
  (stage_remain_time m))

(cl:ensure-generic-function 'sync_time_stamp-val :lambda-list '(m))
(cl:defmethod sync_time_stamp-val ((m <GameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sync_time_stamp-val is deprecated.  Use rm_msgs-msg:sync_time_stamp instead.")
  (sync_time_stamp m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GameStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<GameStatus>)))
    "Constants for message type '<GameStatus>"
  '((:IN_BATTLE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'GameStatus)))
    "Constants for message type 'GameStatus"
  '((:IN_BATTLE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GameStatus>) ostream)
  "Serializes a message object of type '<GameStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'game_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'game_progress)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stage_remain_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stage_remain_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sync_time_stamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sync_time_stamp)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GameStatus>) istream)
  "Deserializes a message object of type '<GameStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'game_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'game_progress)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stage_remain_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stage_remain_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'sync_time_stamp)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GameStatus>)))
  "Returns string type for a message object of type '<GameStatus>"
  "rm_msgs/GameStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GameStatus)))
  "Returns string type for a message object of type 'GameStatus"
  "rm_msgs/GameStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GameStatus>)))
  "Returns md5sum for a message object of type '<GameStatus>"
  "9ea091244f69177ae6ba30273622db3a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GameStatus)))
  "Returns md5sum for a message object of type 'GameStatus"
  "9ea091244f69177ae6ba30273622db3a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GameStatus>)))
  "Returns full string definition for message of type '<GameStatus>"
  (cl:format cl:nil "uint8 game_type~%uint8 game_progress~%uint16 stage_remain_time~%uint64 sync_time_stamp~%~%uint8 IN_BATTLE = 4~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GameStatus)))
  "Returns full string definition for message of type 'GameStatus"
  (cl:format cl:nil "uint8 game_type~%uint8 game_progress~%uint16 stage_remain_time~%uint64 sync_time_stamp~%~%uint8 IN_BATTLE = 4~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GameStatus>))
  (cl:+ 0
     1
     1
     2
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GameStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'GameStatus
    (cl:cons ':game_type (game_type msg))
    (cl:cons ':game_progress (game_progress msg))
    (cl:cons ':stage_remain_time (stage_remain_time msg))
    (cl:cons ':sync_time_stamp (sync_time_stamp msg))
    (cl:cons ':stamp (stamp msg))
))
