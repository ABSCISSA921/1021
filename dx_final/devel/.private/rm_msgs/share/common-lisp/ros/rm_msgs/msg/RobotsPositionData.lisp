; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RobotsPositionData.msg.html

(cl:defclass <RobotsPositionData> (roslisp-msg-protocol:ros-message)
  ((hero_x
    :reader hero_x
    :initarg :hero_x
    :type cl:float
    :initform 0.0)
   (hero_y
    :reader hero_y
    :initarg :hero_y
    :type cl:float
    :initform 0.0)
   (engineer_x
    :reader engineer_x
    :initarg :engineer_x
    :type cl:float
    :initform 0.0)
   (engineer_y
    :reader engineer_y
    :initarg :engineer_y
    :type cl:float
    :initform 0.0)
   (standard_3_x
    :reader standard_3_x
    :initarg :standard_3_x
    :type cl:float
    :initform 0.0)
   (standard_3_y
    :reader standard_3_y
    :initarg :standard_3_y
    :type cl:float
    :initform 0.0)
   (standard_4_x
    :reader standard_4_x
    :initarg :standard_4_x
    :type cl:float
    :initform 0.0)
   (standard_4_y
    :reader standard_4_y
    :initarg :standard_4_y
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass RobotsPositionData (<RobotsPositionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotsPositionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotsPositionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RobotsPositionData> is deprecated: use rm_msgs-msg:RobotsPositionData instead.")))

(cl:ensure-generic-function 'hero_x-val :lambda-list '(m))
(cl:defmethod hero_x-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_x-val is deprecated.  Use rm_msgs-msg:hero_x instead.")
  (hero_x m))

(cl:ensure-generic-function 'hero_y-val :lambda-list '(m))
(cl:defmethod hero_y-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_y-val is deprecated.  Use rm_msgs-msg:hero_y instead.")
  (hero_y m))

(cl:ensure-generic-function 'engineer_x-val :lambda-list '(m))
(cl:defmethod engineer_x-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_x-val is deprecated.  Use rm_msgs-msg:engineer_x instead.")
  (engineer_x m))

(cl:ensure-generic-function 'engineer_y-val :lambda-list '(m))
(cl:defmethod engineer_y-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_y-val is deprecated.  Use rm_msgs-msg:engineer_y instead.")
  (engineer_y m))

(cl:ensure-generic-function 'standard_3_x-val :lambda-list '(m))
(cl:defmethod standard_3_x-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_x-val is deprecated.  Use rm_msgs-msg:standard_3_x instead.")
  (standard_3_x m))

(cl:ensure-generic-function 'standard_3_y-val :lambda-list '(m))
(cl:defmethod standard_3_y-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_3_y-val is deprecated.  Use rm_msgs-msg:standard_3_y instead.")
  (standard_3_y m))

(cl:ensure-generic-function 'standard_4_x-val :lambda-list '(m))
(cl:defmethod standard_4_x-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_x-val is deprecated.  Use rm_msgs-msg:standard_4_x instead.")
  (standard_4_x m))

(cl:ensure-generic-function 'standard_4_y-val :lambda-list '(m))
(cl:defmethod standard_4_y-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:standard_4_y-val is deprecated.  Use rm_msgs-msg:standard_4_y instead.")
  (standard_4_y m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RobotsPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotsPositionData>) ostream)
  "Serializes a message object of type '<RobotsPositionData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hero_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'hero_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engineer_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'engineer_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_3_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_3_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_4_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'standard_4_y))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotsPositionData>) istream)
  "Deserializes a message object of type '<RobotsPositionData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hero_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hero_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineer_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'engineer_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_3_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_3_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_4_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'standard_4_y) (roslisp-utils:decode-single-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotsPositionData>)))
  "Returns string type for a message object of type '<RobotsPositionData>"
  "rm_msgs/RobotsPositionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotsPositionData)))
  "Returns string type for a message object of type 'RobotsPositionData"
  "rm_msgs/RobotsPositionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotsPositionData>)))
  "Returns md5sum for a message object of type '<RobotsPositionData>"
  "4fc7b9661d2bf5a2e44c637cb346cf29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotsPositionData)))
  "Returns md5sum for a message object of type 'RobotsPositionData"
  "4fc7b9661d2bf5a2e44c637cb346cf29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotsPositionData>)))
  "Returns full string definition for message of type '<RobotsPositionData>"
  (cl:format cl:nil "float32 hero_x~%float32 hero_y~%float32 engineer_x~%float32 engineer_y~%float32 standard_3_x~%float32 standard_3_y~%float32 standard_4_x~%float32 standard_4_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotsPositionData)))
  "Returns full string definition for message of type 'RobotsPositionData"
  (cl:format cl:nil "float32 hero_x~%float32 hero_y~%float32 engineer_x~%float32 engineer_y~%float32 standard_3_x~%float32 standard_3_y~%float32 standard_4_x~%float32 standard_4_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotsPositionData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotsPositionData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotsPositionData
    (cl:cons ':hero_x (hero_x msg))
    (cl:cons ':hero_y (hero_y msg))
    (cl:cons ':engineer_x (engineer_x msg))
    (cl:cons ':engineer_y (engineer_y msg))
    (cl:cons ':standard_3_x (standard_3_x msg))
    (cl:cons ':standard_3_y (standard_3_y msg))
    (cl:cons ':standard_4_x (standard_4_x msg))
    (cl:cons ':standard_4_y (standard_4_y msg))
    (cl:cons ':stamp (stamp msg))
))
