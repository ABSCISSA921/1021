; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude BulletAllowance.msg.html

(cl:defclass <BulletAllowance> (roslisp-msg-protocol:ros-message)
  ((bullet_allowance_num_17_mm
    :reader bullet_allowance_num_17_mm
    :initarg :bullet_allowance_num_17_mm
    :type cl:fixnum
    :initform 0)
   (bullet_allowance_num_42_mm
    :reader bullet_allowance_num_42_mm
    :initarg :bullet_allowance_num_42_mm
    :type cl:fixnum
    :initform 0)
   (coin_remaining_num
    :reader coin_remaining_num
    :initarg :coin_remaining_num
    :type cl:fixnum
    :initform 0)
   (projectile_allowance_fortress
    :reader projectile_allowance_fortress
    :initarg :projectile_allowance_fortress
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass BulletAllowance (<BulletAllowance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BulletAllowance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BulletAllowance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<BulletAllowance> is deprecated: use rm_msgs-msg:BulletAllowance instead.")))

(cl:ensure-generic-function 'bullet_allowance_num_17_mm-val :lambda-list '(m))
(cl:defmethod bullet_allowance_num_17_mm-val ((m <BulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_allowance_num_17_mm-val is deprecated.  Use rm_msgs-msg:bullet_allowance_num_17_mm instead.")
  (bullet_allowance_num_17_mm m))

(cl:ensure-generic-function 'bullet_allowance_num_42_mm-val :lambda-list '(m))
(cl:defmethod bullet_allowance_num_42_mm-val ((m <BulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:bullet_allowance_num_42_mm-val is deprecated.  Use rm_msgs-msg:bullet_allowance_num_42_mm instead.")
  (bullet_allowance_num_42_mm m))

(cl:ensure-generic-function 'coin_remaining_num-val :lambda-list '(m))
(cl:defmethod coin_remaining_num-val ((m <BulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:coin_remaining_num-val is deprecated.  Use rm_msgs-msg:coin_remaining_num instead.")
  (coin_remaining_num m))

(cl:ensure-generic-function 'projectile_allowance_fortress-val :lambda-list '(m))
(cl:defmethod projectile_allowance_fortress-val ((m <BulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:projectile_allowance_fortress-val is deprecated.  Use rm_msgs-msg:projectile_allowance_fortress instead.")
  (projectile_allowance_fortress m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <BulletAllowance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BulletAllowance>) ostream)
  "Serializes a message object of type '<BulletAllowance>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_allowance_num_17_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_allowance_num_17_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_allowance_num_42_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_allowance_num_42_mm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coin_remaining_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coin_remaining_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'projectile_allowance_fortress)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'projectile_allowance_fortress)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BulletAllowance>) istream)
  "Deserializes a message object of type '<BulletAllowance>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_allowance_num_17_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_allowance_num_17_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bullet_allowance_num_42_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bullet_allowance_num_42_mm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'coin_remaining_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'coin_remaining_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'projectile_allowance_fortress)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'projectile_allowance_fortress)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BulletAllowance>)))
  "Returns string type for a message object of type '<BulletAllowance>"
  "rm_msgs/BulletAllowance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BulletAllowance)))
  "Returns string type for a message object of type 'BulletAllowance"
  "rm_msgs/BulletAllowance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BulletAllowance>)))
  "Returns md5sum for a message object of type '<BulletAllowance>"
  "d37e99d879c3fd6d3eb6ff551cb04737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BulletAllowance)))
  "Returns md5sum for a message object of type 'BulletAllowance"
  "d37e99d879c3fd6d3eb6ff551cb04737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BulletAllowance>)))
  "Returns full string definition for message of type '<BulletAllowance>"
  (cl:format cl:nil "uint16 bullet_allowance_num_17_mm~%uint16 bullet_allowance_num_42_mm~%uint16 coin_remaining_num~%uint16 projectile_allowance_fortress~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BulletAllowance)))
  "Returns full string definition for message of type 'BulletAllowance"
  (cl:format cl:nil "uint16 bullet_allowance_num_17_mm~%uint16 bullet_allowance_num_42_mm~%uint16 coin_remaining_num~%uint16 projectile_allowance_fortress~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BulletAllowance>))
  (cl:+ 0
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BulletAllowance>))
  "Converts a ROS message object to a list"
  (cl:list 'BulletAllowance
    (cl:cons ':bullet_allowance_num_17_mm (bullet_allowance_num_17_mm msg))
    (cl:cons ':bullet_allowance_num_42_mm (bullet_allowance_num_42_mm msg))
    (cl:cons ':coin_remaining_num (coin_remaining_num msg))
    (cl:cons ':projectile_allowance_fortress (projectile_allowance_fortress msg))
    (cl:cons ':stamp (stamp msg))
))
