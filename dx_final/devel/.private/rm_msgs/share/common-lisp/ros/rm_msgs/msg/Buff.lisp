; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude Buff.msg.html

(cl:defclass <Buff> (roslisp-msg-protocol:ros-message)
  ((recovery_buff
    :reader recovery_buff
    :initarg :recovery_buff
    :type cl:fixnum
    :initform 0)
   (cooling_buff
    :reader cooling_buff
    :initarg :cooling_buff
    :type cl:fixnum
    :initform 0)
   (defence_buff
    :reader defence_buff
    :initarg :defence_buff
    :type cl:fixnum
    :initform 0)
   (vulnerability_buff
    :reader vulnerability_buff
    :initarg :vulnerability_buff
    :type cl:fixnum
    :initform 0)
   (attack_buff
    :reader attack_buff
    :initarg :attack_buff
    :type cl:fixnum
    :initform 0)
   (remaining_energy
    :reader remaining_energy
    :initarg :remaining_energy
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Buff (<Buff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Buff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Buff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<Buff> is deprecated: use rm_msgs-msg:Buff instead.")))

(cl:ensure-generic-function 'recovery_buff-val :lambda-list '(m))
(cl:defmethod recovery_buff-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:recovery_buff-val is deprecated.  Use rm_msgs-msg:recovery_buff instead.")
  (recovery_buff m))

(cl:ensure-generic-function 'cooling_buff-val :lambda-list '(m))
(cl:defmethod cooling_buff-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:cooling_buff-val is deprecated.  Use rm_msgs-msg:cooling_buff instead.")
  (cooling_buff m))

(cl:ensure-generic-function 'defence_buff-val :lambda-list '(m))
(cl:defmethod defence_buff-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:defence_buff-val is deprecated.  Use rm_msgs-msg:defence_buff instead.")
  (defence_buff m))

(cl:ensure-generic-function 'vulnerability_buff-val :lambda-list '(m))
(cl:defmethod vulnerability_buff-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:vulnerability_buff-val is deprecated.  Use rm_msgs-msg:vulnerability_buff instead.")
  (vulnerability_buff m))

(cl:ensure-generic-function 'attack_buff-val :lambda-list '(m))
(cl:defmethod attack_buff-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:attack_buff-val is deprecated.  Use rm_msgs-msg:attack_buff instead.")
  (attack_buff m))

(cl:ensure-generic-function 'remaining_energy-val :lambda-list '(m))
(cl:defmethod remaining_energy-val ((m <Buff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:remaining_energy-val is deprecated.  Use rm_msgs-msg:remaining_energy instead.")
  (remaining_energy m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Buff>) ostream)
  "Serializes a message object of type '<Buff>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recovery_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooling_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'defence_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vulnerability_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attack_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'attack_buff)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_energy)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Buff>) istream)
  "Deserializes a message object of type '<Buff>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'recovery_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cooling_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'defence_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vulnerability_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'attack_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'attack_buff)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'remaining_energy)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Buff>)))
  "Returns string type for a message object of type '<Buff>"
  "rm_msgs/Buff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Buff)))
  "Returns string type for a message object of type 'Buff"
  "rm_msgs/Buff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Buff>)))
  "Returns md5sum for a message object of type '<Buff>"
  "0350c419b72e90cb811a4148874b61cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Buff)))
  "Returns md5sum for a message object of type 'Buff"
  "0350c419b72e90cb811a4148874b61cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Buff>)))
  "Returns full string definition for message of type '<Buff>"
  (cl:format cl:nil "uint8 recovery_buff~%uint8 cooling_buff~%uint8 defence_buff~%uint8 vulnerability_buff~%uint16 attack_buff~%uint8 remaining_energy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Buff)))
  "Returns full string definition for message of type 'Buff"
  (cl:format cl:nil "uint8 recovery_buff~%uint8 cooling_buff~%uint8 defence_buff~%uint8 vulnerability_buff~%uint16 attack_buff~%uint8 remaining_energy~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Buff>))
  (cl:+ 0
     1
     1
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Buff>))
  "Converts a ROS message object to a list"
  (cl:list 'Buff
    (cl:cons ':recovery_buff (recovery_buff msg))
    (cl:cons ':cooling_buff (cooling_buff msg))
    (cl:cons ':defence_buff (defence_buff msg))
    (cl:cons ':vulnerability_buff (vulnerability_buff msg))
    (cl:cons ':attack_buff (attack_buff msg))
    (cl:cons ':remaining_energy (remaining_energy msg))
))
