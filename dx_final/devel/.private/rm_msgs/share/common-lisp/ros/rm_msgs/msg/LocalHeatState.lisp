; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude LocalHeatState.msg.html

(cl:defclass <LocalHeatState> (roslisp-msg-protocol:ros-message)
  ((friction_speed
    :reader friction_speed
    :initarg :friction_speed
    :type cl:float
    :initform 0.0)
   (friction_change_speed
    :reader friction_change_speed
    :initarg :friction_change_speed
    :type cl:float
    :initform 0.0)
   (friction_change_speed_derivative
    :reader friction_change_speed_derivative
    :initarg :friction_change_speed_derivative
    :type cl:float
    :initform 0.0)
   (has_shoot
    :reader has_shoot
    :initarg :has_shoot
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass LocalHeatState (<LocalHeatState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalHeatState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalHeatState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<LocalHeatState> is deprecated: use rm_msgs-msg:LocalHeatState instead.")))

(cl:ensure-generic-function 'friction_speed-val :lambda-list '(m))
(cl:defmethod friction_speed-val ((m <LocalHeatState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:friction_speed-val is deprecated.  Use rm_msgs-msg:friction_speed instead.")
  (friction_speed m))

(cl:ensure-generic-function 'friction_change_speed-val :lambda-list '(m))
(cl:defmethod friction_change_speed-val ((m <LocalHeatState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:friction_change_speed-val is deprecated.  Use rm_msgs-msg:friction_change_speed instead.")
  (friction_change_speed m))

(cl:ensure-generic-function 'friction_change_speed_derivative-val :lambda-list '(m))
(cl:defmethod friction_change_speed_derivative-val ((m <LocalHeatState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:friction_change_speed_derivative-val is deprecated.  Use rm_msgs-msg:friction_change_speed_derivative instead.")
  (friction_change_speed_derivative m))

(cl:ensure-generic-function 'has_shoot-val :lambda-list '(m))
(cl:defmethod has_shoot-val ((m <LocalHeatState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:has_shoot-val is deprecated.  Use rm_msgs-msg:has_shoot instead.")
  (has_shoot m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LocalHeatState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalHeatState>) ostream)
  "Serializes a message object of type '<LocalHeatState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'friction_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'friction_change_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'friction_change_speed_derivative))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'has_shoot) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalHeatState>) istream)
  "Deserializes a message object of type '<LocalHeatState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_change_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'friction_change_speed_derivative) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'has_shoot) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalHeatState>)))
  "Returns string type for a message object of type '<LocalHeatState>"
  "rm_msgs/LocalHeatState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalHeatState)))
  "Returns string type for a message object of type 'LocalHeatState"
  "rm_msgs/LocalHeatState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalHeatState>)))
  "Returns md5sum for a message object of type '<LocalHeatState>"
  "29a8a14a26935854a78d9ab8fc58289b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalHeatState)))
  "Returns md5sum for a message object of type 'LocalHeatState"
  "29a8a14a26935854a78d9ab8fc58289b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalHeatState>)))
  "Returns full string definition for message of type '<LocalHeatState>"
  (cl:format cl:nil "float64 friction_speed~%float64 friction_change_speed~%float64 friction_change_speed_derivative~%bool has_shoot~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalHeatState)))
  "Returns full string definition for message of type 'LocalHeatState"
  (cl:format cl:nil "float64 friction_speed~%float64 friction_change_speed~%float64 friction_change_speed_derivative~%bool has_shoot~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalHeatState>))
  (cl:+ 0
     8
     8
     8
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalHeatState>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalHeatState
    (cl:cons ':friction_speed (friction_speed msg))
    (cl:cons ':friction_change_speed (friction_change_speed msg))
    (cl:cons ':friction_change_speed_derivative (friction_change_speed_derivative msg))
    (cl:cons ':has_shoot (has_shoot msg))
    (cl:cons ':stamp (stamp msg))
))
