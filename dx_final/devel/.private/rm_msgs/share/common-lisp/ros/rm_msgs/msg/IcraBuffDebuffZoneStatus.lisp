; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude IcraBuffDebuffZoneStatus.msg.html

(cl:defclass <IcraBuffDebuffZoneStatus> (roslisp-msg-protocol:ros-message)
  ((f_1_zone_status
    :reader f_1_zone_status
    :initarg :f_1_zone_status
    :type cl:fixnum
    :initform 0)
   (f_1_zone_buff_debuff_status
    :reader f_1_zone_buff_debuff_status
    :initarg :f_1_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (f_2_zone_status
    :reader f_2_zone_status
    :initarg :f_2_zone_status
    :type cl:fixnum
    :initform 0)
   (f_2_zone_buff_debuff_status
    :reader f_2_zone_buff_debuff_status
    :initarg :f_2_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (f_3_zone_status
    :reader f_3_zone_status
    :initarg :f_3_zone_status
    :type cl:fixnum
    :initform 0)
   (f_3_zone_buff_debuff_status
    :reader f_3_zone_buff_debuff_status
    :initarg :f_3_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (f_4_zone_status
    :reader f_4_zone_status
    :initarg :f_4_zone_status
    :type cl:fixnum
    :initform 0)
   (f_4_zone_buff_debuff_status
    :reader f_4_zone_buff_debuff_status
    :initarg :f_4_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (f_5_zone_status
    :reader f_5_zone_status
    :initarg :f_5_zone_status
    :type cl:fixnum
    :initform 0)
   (f_5_zone_buff_debuff_status
    :reader f_5_zone_buff_debuff_status
    :initarg :f_5_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (f_6_zone_status
    :reader f_6_zone_status
    :initarg :f_6_zone_status
    :type cl:fixnum
    :initform 0)
   (f_6_zone_buff_debuff_status
    :reader f_6_zone_buff_debuff_status
    :initarg :f_6_zone_buff_debuff_status
    :type cl:fixnum
    :initform 0)
   (red_1_bullet_left
    :reader red_1_bullet_left
    :initarg :red_1_bullet_left
    :type cl:fixnum
    :initform 0)
   (red_2_bullet_left
    :reader red_2_bullet_left
    :initarg :red_2_bullet_left
    :type cl:fixnum
    :initform 0)
   (blue_1_bullet_left
    :reader blue_1_bullet_left
    :initarg :blue_1_bullet_left
    :type cl:fixnum
    :initform 0)
   (blue_2_bullet_left
    :reader blue_2_bullet_left
    :initarg :blue_2_bullet_left
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass IcraBuffDebuffZoneStatus (<IcraBuffDebuffZoneStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IcraBuffDebuffZoneStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IcraBuffDebuffZoneStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<IcraBuffDebuffZoneStatus> is deprecated: use rm_msgs-msg:IcraBuffDebuffZoneStatus instead.")))

(cl:ensure-generic-function 'f_1_zone_status-val :lambda-list '(m))
(cl:defmethod f_1_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_1_zone_status-val is deprecated.  Use rm_msgs-msg:f_1_zone_status instead.")
  (f_1_zone_status m))

(cl:ensure-generic-function 'f_1_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_1_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_1_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_1_zone_buff_debuff_status instead.")
  (f_1_zone_buff_debuff_status m))

(cl:ensure-generic-function 'f_2_zone_status-val :lambda-list '(m))
(cl:defmethod f_2_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_2_zone_status-val is deprecated.  Use rm_msgs-msg:f_2_zone_status instead.")
  (f_2_zone_status m))

(cl:ensure-generic-function 'f_2_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_2_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_2_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_2_zone_buff_debuff_status instead.")
  (f_2_zone_buff_debuff_status m))

(cl:ensure-generic-function 'f_3_zone_status-val :lambda-list '(m))
(cl:defmethod f_3_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_3_zone_status-val is deprecated.  Use rm_msgs-msg:f_3_zone_status instead.")
  (f_3_zone_status m))

(cl:ensure-generic-function 'f_3_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_3_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_3_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_3_zone_buff_debuff_status instead.")
  (f_3_zone_buff_debuff_status m))

(cl:ensure-generic-function 'f_4_zone_status-val :lambda-list '(m))
(cl:defmethod f_4_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_4_zone_status-val is deprecated.  Use rm_msgs-msg:f_4_zone_status instead.")
  (f_4_zone_status m))

(cl:ensure-generic-function 'f_4_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_4_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_4_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_4_zone_buff_debuff_status instead.")
  (f_4_zone_buff_debuff_status m))

(cl:ensure-generic-function 'f_5_zone_status-val :lambda-list '(m))
(cl:defmethod f_5_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_5_zone_status-val is deprecated.  Use rm_msgs-msg:f_5_zone_status instead.")
  (f_5_zone_status m))

(cl:ensure-generic-function 'f_5_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_5_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_5_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_5_zone_buff_debuff_status instead.")
  (f_5_zone_buff_debuff_status m))

(cl:ensure-generic-function 'f_6_zone_status-val :lambda-list '(m))
(cl:defmethod f_6_zone_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_6_zone_status-val is deprecated.  Use rm_msgs-msg:f_6_zone_status instead.")
  (f_6_zone_status m))

(cl:ensure-generic-function 'f_6_zone_buff_debuff_status-val :lambda-list '(m))
(cl:defmethod f_6_zone_buff_debuff_status-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:f_6_zone_buff_debuff_status-val is deprecated.  Use rm_msgs-msg:f_6_zone_buff_debuff_status instead.")
  (f_6_zone_buff_debuff_status m))

(cl:ensure-generic-function 'red_1_bullet_left-val :lambda-list '(m))
(cl:defmethod red_1_bullet_left-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_1_bullet_left-val is deprecated.  Use rm_msgs-msg:red_1_bullet_left instead.")
  (red_1_bullet_left m))

(cl:ensure-generic-function 'red_2_bullet_left-val :lambda-list '(m))
(cl:defmethod red_2_bullet_left-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:red_2_bullet_left-val is deprecated.  Use rm_msgs-msg:red_2_bullet_left instead.")
  (red_2_bullet_left m))

(cl:ensure-generic-function 'blue_1_bullet_left-val :lambda-list '(m))
(cl:defmethod blue_1_bullet_left-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_1_bullet_left-val is deprecated.  Use rm_msgs-msg:blue_1_bullet_left instead.")
  (blue_1_bullet_left m))

(cl:ensure-generic-function 'blue_2_bullet_left-val :lambda-list '(m))
(cl:defmethod blue_2_bullet_left-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:blue_2_bullet_left-val is deprecated.  Use rm_msgs-msg:blue_2_bullet_left instead.")
  (blue_2_bullet_left m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <IcraBuffDebuffZoneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IcraBuffDebuffZoneStatus>) ostream)
  "Serializes a message object of type '<IcraBuffDebuffZoneStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_1_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_1_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_2_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_2_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_3_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_3_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_4_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_4_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_5_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_5_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_6_zone_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_6_zone_buff_debuff_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_1_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_1_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_2_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_2_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_1_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_1_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_2_bullet_left)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_2_bullet_left)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IcraBuffDebuffZoneStatus>) istream)
  "Deserializes a message object of type '<IcraBuffDebuffZoneStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_1_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_1_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_2_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_2_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_3_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_3_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_4_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_4_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_5_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_5_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_6_zone_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'f_6_zone_buff_debuff_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_1_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_1_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'red_2_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'red_2_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_1_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_1_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'blue_2_bullet_left)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'blue_2_bullet_left)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IcraBuffDebuffZoneStatus>)))
  "Returns string type for a message object of type '<IcraBuffDebuffZoneStatus>"
  "rm_msgs/IcraBuffDebuffZoneStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IcraBuffDebuffZoneStatus)))
  "Returns string type for a message object of type 'IcraBuffDebuffZoneStatus"
  "rm_msgs/IcraBuffDebuffZoneStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IcraBuffDebuffZoneStatus>)))
  "Returns md5sum for a message object of type '<IcraBuffDebuffZoneStatus>"
  "2f6fc310c2ebda62f2d87ce47e0d1eb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IcraBuffDebuffZoneStatus)))
  "Returns md5sum for a message object of type 'IcraBuffDebuffZoneStatus"
  "2f6fc310c2ebda62f2d87ce47e0d1eb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IcraBuffDebuffZoneStatus>)))
  "Returns full string definition for message of type '<IcraBuffDebuffZoneStatus>"
  (cl:format cl:nil "uint8 f_1_zone_status~%uint8 f_1_zone_buff_debuff_status~%uint8 f_2_zone_status~%uint8 f_2_zone_buff_debuff_status~%uint8 f_3_zone_status~%uint8 f_3_zone_buff_debuff_status~%uint8 f_4_zone_status~%uint8 f_4_zone_buff_debuff_status~%uint8 f_5_zone_status~%uint8 f_5_zone_buff_debuff_status~%uint8 f_6_zone_status~%uint8 f_6_zone_buff_debuff_status~%uint16 red_1_bullet_left~%uint16 red_2_bullet_left~%uint16 blue_1_bullet_left~%uint16 blue_2_bullet_left~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IcraBuffDebuffZoneStatus)))
  "Returns full string definition for message of type 'IcraBuffDebuffZoneStatus"
  (cl:format cl:nil "uint8 f_1_zone_status~%uint8 f_1_zone_buff_debuff_status~%uint8 f_2_zone_status~%uint8 f_2_zone_buff_debuff_status~%uint8 f_3_zone_status~%uint8 f_3_zone_buff_debuff_status~%uint8 f_4_zone_status~%uint8 f_4_zone_buff_debuff_status~%uint8 f_5_zone_status~%uint8 f_5_zone_buff_debuff_status~%uint8 f_6_zone_status~%uint8 f_6_zone_buff_debuff_status~%uint16 red_1_bullet_left~%uint16 red_2_bullet_left~%uint16 blue_1_bullet_left~%uint16 blue_2_bullet_left~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IcraBuffDebuffZoneStatus>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IcraBuffDebuffZoneStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'IcraBuffDebuffZoneStatus
    (cl:cons ':f_1_zone_status (f_1_zone_status msg))
    (cl:cons ':f_1_zone_buff_debuff_status (f_1_zone_buff_debuff_status msg))
    (cl:cons ':f_2_zone_status (f_2_zone_status msg))
    (cl:cons ':f_2_zone_buff_debuff_status (f_2_zone_buff_debuff_status msg))
    (cl:cons ':f_3_zone_status (f_3_zone_status msg))
    (cl:cons ':f_3_zone_buff_debuff_status (f_3_zone_buff_debuff_status msg))
    (cl:cons ':f_4_zone_status (f_4_zone_status msg))
    (cl:cons ':f_4_zone_buff_debuff_status (f_4_zone_buff_debuff_status msg))
    (cl:cons ':f_5_zone_status (f_5_zone_status msg))
    (cl:cons ':f_5_zone_buff_debuff_status (f_5_zone_buff_debuff_status msg))
    (cl:cons ':f_6_zone_status (f_6_zone_status msg))
    (cl:cons ':f_6_zone_buff_debuff_status (f_6_zone_buff_debuff_status msg))
    (cl:cons ':red_1_bullet_left (red_1_bullet_left msg))
    (cl:cons ':red_2_bullet_left (red_2_bullet_left msg))
    (cl:cons ':blue_1_bullet_left (blue_1_bullet_left msg))
    (cl:cons ':blue_2_bullet_left (blue_2_bullet_left msg))
    (cl:cons ':stamp (stamp msg))
))
