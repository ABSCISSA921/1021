; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ChassisCmd.msg.html

(cl:defclass <ChassisCmd> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:Accel
    :initform (cl:make-instance 'geometry_msgs-msg:Accel))
   (power_limit
    :reader power_limit
    :initarg :power_limit
    :type cl:float
    :initform 0.0)
   (follow_vel_des
    :reader follow_vel_des
    :initarg :follow_vel_des
    :type cl:float
    :initform 0.0)
   (follow_source_frame
    :reader follow_source_frame
    :initarg :follow_source_frame
    :type cl:string
    :initform "")
   (command_source_frame
    :reader command_source_frame
    :initarg :command_source_frame
    :type cl:string
    :initform "")
   (wireless_state
    :reader wireless_state
    :initarg :wireless_state
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ChassisCmd (<ChassisCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChassisCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChassisCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ChassisCmd> is deprecated: use rm_msgs-msg:ChassisCmd instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:accel-val is deprecated.  Use rm_msgs-msg:accel instead.")
  (accel m))

(cl:ensure-generic-function 'power_limit-val :lambda-list '(m))
(cl:defmethod power_limit-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_limit-val is deprecated.  Use rm_msgs-msg:power_limit instead.")
  (power_limit m))

(cl:ensure-generic-function 'follow_vel_des-val :lambda-list '(m))
(cl:defmethod follow_vel_des-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:follow_vel_des-val is deprecated.  Use rm_msgs-msg:follow_vel_des instead.")
  (follow_vel_des m))

(cl:ensure-generic-function 'follow_source_frame-val :lambda-list '(m))
(cl:defmethod follow_source_frame-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:follow_source_frame-val is deprecated.  Use rm_msgs-msg:follow_source_frame instead.")
  (follow_source_frame m))

(cl:ensure-generic-function 'command_source_frame-val :lambda-list '(m))
(cl:defmethod command_source_frame-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command_source_frame-val is deprecated.  Use rm_msgs-msg:command_source_frame instead.")
  (command_source_frame m))

(cl:ensure-generic-function 'wireless_state-val :lambda-list '(m))
(cl:defmethod wireless_state-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wireless_state-val is deprecated.  Use rm_msgs-msg:wireless_state instead.")
  (wireless_state m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ChassisCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ChassisCmd>)))
    "Constants for message type '<ChassisCmd>"
  '((:RAW . 0)
    (:FOLLOW . 1)
    (:TWIST . 2)
    (:UP_SLOPE . 3)
    (:FALLEN . 4)
    (:DEPLOY . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ChassisCmd)))
    "Constants for message type 'ChassisCmd"
  '((:RAW . 0)
    (:FOLLOW . 1)
    (:TWIST . 2)
    (:UP_SLOPE . 3)
    (:FALLEN . 4)
    (:DEPLOY . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChassisCmd>) ostream)
  "Serializes a message object of type '<ChassisCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'power_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'follow_vel_des))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'follow_source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'follow_source_frame))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command_source_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command_source_frame))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'wireless_state) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChassisCmd>) istream)
  "Deserializes a message object of type '<ChassisCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power_limit) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'follow_vel_des) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'follow_source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'follow_source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command_source_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command_source_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'wireless_state) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChassisCmd>)))
  "Returns string type for a message object of type '<ChassisCmd>"
  "rm_msgs/ChassisCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChassisCmd)))
  "Returns string type for a message object of type 'ChassisCmd"
  "rm_msgs/ChassisCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChassisCmd>)))
  "Returns md5sum for a message object of type '<ChassisCmd>"
  "985b6722e3cae462f464a58691edb261")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChassisCmd)))
  "Returns md5sum for a message object of type 'ChassisCmd"
  "985b6722e3cae462f464a58691edb261")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChassisCmd>)))
  "Returns full string definition for message of type '<ChassisCmd>"
  (cl:format cl:nil "uint8 RAW = 0~%uint8 FOLLOW = 1~%uint8 TWIST = 2~%uint8 UP_SLOPE = 3~%uint8 FALLEN = 4~%uint8 DEPLOY = 5~%~%uint8 mode~%geometry_msgs/Accel accel~%float64 power_limit~%float64 follow_vel_des~%string follow_source_frame~%string command_source_frame~%bool wireless_state~%time stamp~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChassisCmd)))
  "Returns full string definition for message of type 'ChassisCmd"
  (cl:format cl:nil "uint8 RAW = 0~%uint8 FOLLOW = 1~%uint8 TWIST = 2~%uint8 UP_SLOPE = 3~%uint8 FALLEN = 4~%uint8 DEPLOY = 5~%~%uint8 mode~%geometry_msgs/Accel accel~%float64 power_limit~%float64 follow_vel_des~%string follow_source_frame~%string command_source_frame~%bool wireless_state~%time stamp~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChassisCmd>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
     8
     8
     4 (cl:length (cl:slot-value msg 'follow_source_frame))
     4 (cl:length (cl:slot-value msg 'command_source_frame))
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChassisCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'ChassisCmd
    (cl:cons ':mode (mode msg))
    (cl:cons ':accel (accel msg))
    (cl:cons ':power_limit (power_limit msg))
    (cl:cons ':follow_vel_des (follow_vel_des msg))
    (cl:cons ':follow_source_frame (follow_source_frame msg))
    (cl:cons ':command_source_frame (command_source_frame msg))
    (cl:cons ':wireless_state (wireless_state msg))
    (cl:cons ':stamp (stamp msg))
))
