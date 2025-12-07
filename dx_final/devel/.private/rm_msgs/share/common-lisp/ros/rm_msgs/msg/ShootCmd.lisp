; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ShootCmd.msg.html

(cl:defclass <ShootCmd> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (wheel_speed
    :reader wheel_speed
    :initarg :wheel_speed
    :type cl:float
    :initform 0.0)
   (hz
    :reader hz
    :initarg :hz
    :type cl:float
    :initform 0.0)
   (wheels_speed_offset_front
    :reader wheels_speed_offset_front
    :initarg :wheels_speed_offset_front
    :type cl:float
    :initform 0.0)
   (wheels_speed_offset_back
    :reader wheels_speed_offset_back
    :initarg :wheels_speed_offset_back
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ShootCmd (<ShootCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ShootCmd> is deprecated: use rm_msgs-msg:ShootCmd instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'wheel_speed-val :lambda-list '(m))
(cl:defmethod wheel_speed-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wheel_speed-val is deprecated.  Use rm_msgs-msg:wheel_speed instead.")
  (wheel_speed m))

(cl:ensure-generic-function 'hz-val :lambda-list '(m))
(cl:defmethod hz-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hz-val is deprecated.  Use rm_msgs-msg:hz instead.")
  (hz m))

(cl:ensure-generic-function 'wheels_speed_offset_front-val :lambda-list '(m))
(cl:defmethod wheels_speed_offset_front-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wheels_speed_offset_front-val is deprecated.  Use rm_msgs-msg:wheels_speed_offset_front instead.")
  (wheels_speed_offset_front m))

(cl:ensure-generic-function 'wheels_speed_offset_back-val :lambda-list '(m))
(cl:defmethod wheels_speed_offset_back-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wheels_speed_offset_back-val is deprecated.  Use rm_msgs-msg:wheels_speed_offset_back instead.")
  (wheels_speed_offset_back m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShootCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ShootCmd>)))
    "Constants for message type '<ShootCmd>"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:SPEED_ZERO_FOR_TEST . 0)
    (:SPEED_10M_PER_SECOND . 1)
    (:SPEED_15M_PER_SECOND . 2)
    (:SPEED_16M_PER_SECOND . 3)
    (:SPEED_18M_PER_SECOND . 4)
    (:SPEED_30M_PER_SECOND . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ShootCmd)))
    "Constants for message type 'ShootCmd"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:SPEED_ZERO_FOR_TEST . 0)
    (:SPEED_10M_PER_SECOND . 1)
    (:SPEED_15M_PER_SECOND . 2)
    (:SPEED_16M_PER_SECOND . 3)
    (:SPEED_18M_PER_SECOND . 4)
    (:SPEED_30M_PER_SECOND . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootCmd>) ostream)
  "Serializes a message object of type '<ShootCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheels_speed_offset_front))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheels_speed_offset_back))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootCmd>) istream)
  "Deserializes a message object of type '<ShootCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheels_speed_offset_front) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheels_speed_offset_back) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootCmd>)))
  "Returns string type for a message object of type '<ShootCmd>"
  "rm_msgs/ShootCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootCmd)))
  "Returns string type for a message object of type 'ShootCmd"
  "rm_msgs/ShootCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootCmd>)))
  "Returns md5sum for a message object of type '<ShootCmd>"
  "de2a1327d879df57bb352ed872ea65fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootCmd)))
  "Returns md5sum for a message object of type 'ShootCmd"
  "de2a1327d879df57bb352ed872ea65fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootCmd>)))
  "Returns full string definition for message of type '<ShootCmd>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%~%uint8 SPEED_ZERO_FOR_TEST = 0~%uint8 SPEED_10M_PER_SECOND = 1~%uint8 SPEED_15M_PER_SECOND = 2~%uint8 SPEED_16M_PER_SECOND = 3~%uint8 SPEED_18M_PER_SECOND = 4~%uint8 SPEED_30M_PER_SECOND = 5~%~%uint8 mode~%float64 wheel_speed~%float64 hz~%float64 wheels_speed_offset_front~%float64 wheels_speed_offset_back~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootCmd)))
  "Returns full string definition for message of type 'ShootCmd"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%~%uint8 SPEED_ZERO_FOR_TEST = 0~%uint8 SPEED_10M_PER_SECOND = 1~%uint8 SPEED_15M_PER_SECOND = 2~%uint8 SPEED_16M_PER_SECOND = 3~%uint8 SPEED_18M_PER_SECOND = 4~%uint8 SPEED_30M_PER_SECOND = 5~%~%uint8 mode~%float64 wheel_speed~%float64 hz~%float64 wheels_speed_offset_front~%float64 wheels_speed_offset_back~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootCmd>))
  (cl:+ 0
     1
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootCmd
    (cl:cons ':mode (mode msg))
    (cl:cons ':wheel_speed (wheel_speed msg))
    (cl:cons ':hz (hz msg))
    (cl:cons ':wheels_speed_offset_front (wheels_speed_offset_front msg))
    (cl:cons ':wheels_speed_offset_back (wheels_speed_offset_back msg))
    (cl:cons ':stamp (stamp msg))
))
