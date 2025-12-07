; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude MultiDofCmd.msg.html

(cl:defclass <MultiDofCmd> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (linear
    :reader linear
    :initarg :linear
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass MultiDofCmd (<MultiDofCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiDofCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiDofCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<MultiDofCmd> is deprecated: use rm_msgs-msg:MultiDofCmd instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MultiDofCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <MultiDofCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode-val is deprecated.  Use rm_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <MultiDofCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:linear-val is deprecated.  Use rm_msgs-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <MultiDofCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:angular-val is deprecated.  Use rm_msgs-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MultiDofCmd>)))
    "Constants for message type '<MultiDofCmd>"
  '((:VELOCITY . 0)
    (:POSITION . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MultiDofCmd)))
    "Constants for message type 'MultiDofCmd"
  '((:VELOCITY . 0)
    (:POSITION . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiDofCmd>) ostream)
  "Serializes a message object of type '<MultiDofCmd>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiDofCmd>) istream)
  "Deserializes a message object of type '<MultiDofCmd>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiDofCmd>)))
  "Returns string type for a message object of type '<MultiDofCmd>"
  "rm_msgs/MultiDofCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiDofCmd)))
  "Returns string type for a message object of type 'MultiDofCmd"
  "rm_msgs/MultiDofCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiDofCmd>)))
  "Returns md5sum for a message object of type '<MultiDofCmd>"
  "0ef5d8d462010858e9cd0f8a34969a34")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiDofCmd)))
  "Returns md5sum for a message object of type 'MultiDofCmd"
  "0ef5d8d462010858e9cd0f8a34969a34")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiDofCmd>)))
  "Returns full string definition for message of type '<MultiDofCmd>"
  (cl:format cl:nil "uint8 VELOCITY = 0~%uint8 POSITION = 1~%~%time stamp~%uint8 mode~%~%# VELOCITY/POSITION~%geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiDofCmd)))
  "Returns full string definition for message of type 'MultiDofCmd"
  (cl:format cl:nil "uint8 VELOCITY = 0~%uint8 POSITION = 1~%~%time stamp~%uint8 mode~%~%# VELOCITY/POSITION~%geometry_msgs/Vector3 linear~%geometry_msgs/Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiDofCmd>))
  (cl:+ 0
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiDofCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiDofCmd
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
