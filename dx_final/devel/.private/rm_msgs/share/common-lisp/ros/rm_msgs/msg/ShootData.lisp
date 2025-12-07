; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ShootData.msg.html

(cl:defclass <ShootData> (roslisp-msg-protocol:ros-message)
  ((bullet_type
    :reader bullet_type
    :initarg :bullet_type
    :type cl:fixnum
    :initform 0)
   (shooter_id
    :reader shooter_id
    :initarg :shooter_id
    :type cl:fixnum
    :initform 0)
   (bullet_freq
    :reader bullet_freq
    :initarg :bullet_freq
    :type cl:fixnum
    :initform 0)
   (bullet_speed
    :reader bullet_speed
    :initarg :bullet_speed
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ShootData (<ShootData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ShootData> is deprecated: use rm_msgs-msg:ShootData instead.")))

(cl:ensure-generic-function 'bullet_type-val :lambda-list '(m))
(cl:defmethod bullet_type-val ((m <ShootData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_type-val is deprecated.  Use rm_msgs-msg:bullet_type instead.")
  (bullet_type m))

(cl:ensure-generic-function 'shooter_id-val :lambda-list '(m))
(cl:defmethod shooter_id-val ((m <ShootData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_id-val is deprecated.  Use rm_msgs-msg:shooter_id instead.")
  (shooter_id m))

(cl:ensure-generic-function 'bullet_freq-val :lambda-list '(m))
(cl:defmethod bullet_freq-val ((m <ShootData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_freq-val is deprecated.  Use rm_msgs-msg:bullet_freq instead.")
  (bullet_freq m))

(cl:ensure-generic-function 'bullet_speed-val :lambda-list '(m))
(cl:defmethod bullet_speed-val ((m <ShootData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_speed-val is deprecated.  Use rm_msgs-msg:bullet_speed instead.")
  (bullet_speed m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShootData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootData>) ostream)
  "Serializes a message object of type '<ShootData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_freq)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bullet_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootData>) istream)
  "Deserializes a message object of type '<ShootData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_freq)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bullet_speed) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootData>)))
  "Returns string type for a message object of type '<ShootData>"
  "rm_msgs/ShootData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootData)))
  "Returns string type for a message object of type 'ShootData"
  "rm_msgs/ShootData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootData>)))
  "Returns md5sum for a message object of type '<ShootData>"
  "974d24ddaca58a0fd7ae13376c5c9d3c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootData)))
  "Returns md5sum for a message object of type 'ShootData"
  "974d24ddaca58a0fd7ae13376c5c9d3c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootData>)))
  "Returns full string definition for message of type '<ShootData>"
  (cl:format cl:nil "uint8 bullet_type~%uint8 shooter_id~%uint8 bullet_freq~%float32 bullet_speed~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootData)))
  "Returns full string definition for message of type 'ShootData"
  (cl:format cl:nil "uint8 bullet_type~%uint8 shooter_id~%uint8 bullet_freq~%float32 bullet_speed~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootData>))
  (cl:+ 0
     1
     1
     1
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootData>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootData
    (cl:cons ':bullet_type (bullet_type msg))
    (cl:cons ':shooter_id (shooter_id msg))
    (cl:cons ':bullet_freq (bullet_freq msg))
    (cl:cons ':bullet_speed (bullet_speed msg))
    (cl:cons ':stamp (stamp msg))
))
