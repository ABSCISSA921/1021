; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ShootState.msg.html

(cl:defclass <ShootState> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ShootState (<ShootState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShootState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShootState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ShootState> is deprecated: use rm_msgs-msg:ShootState instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ShootState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ShootState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ShootState>)))
    "Constants for message type '<ShootState>"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:BLOCK . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ShootState)))
    "Constants for message type 'ShootState"
  '((:STOP . 0)
    (:READY . 1)
    (:PUSH . 2)
    (:BLOCK . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShootState>) ostream)
  "Serializes a message object of type '<ShootState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShootState>) istream)
  "Deserializes a message object of type '<ShootState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShootState>)))
  "Returns string type for a message object of type '<ShootState>"
  "rm_msgs/ShootState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShootState)))
  "Returns string type for a message object of type 'ShootState"
  "rm_msgs/ShootState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShootState>)))
  "Returns md5sum for a message object of type '<ShootState>"
  "b15fb3b0295db9ecded84ae23a7dcfc0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShootState)))
  "Returns md5sum for a message object of type 'ShootState"
  "b15fb3b0295db9ecded84ae23a7dcfc0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShootState>)))
  "Returns full string definition for message of type '<ShootState>"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%uint8 BLOCK = 3~%~%uint8 state~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShootState)))
  "Returns full string definition for message of type 'ShootState"
  (cl:format cl:nil "uint8 STOP = 0~%uint8 READY = 1~%uint8 PUSH = 2~%uint8 BLOCK = 3~%~%uint8 state~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShootState>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShootState>))
  "Converts a ROS message object to a list"
  (cl:list 'ShootState
    (cl:cons ':state (state msg))
    (cl:cons ':stamp (stamp msg))
))
