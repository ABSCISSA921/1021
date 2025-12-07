; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarToSentry.msg.html

(cl:defclass <RadarToSentry> (roslisp-msg-protocol:ros-message)
  ((robot_ID
    :reader robot_ID
    :initarg :robot_ID
    :type cl:fixnum
    :initform 0)
   (position_x
    :reader position_x
    :initarg :position_x
    :type cl:float
    :initform 0.0)
   (position_y
    :reader position_y
    :initarg :position_y
    :type cl:float
    :initform 0.0)
   (engineer_marked
    :reader engineer_marked
    :initarg :engineer_marked
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RadarToSentry (<RadarToSentry>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarToSentry>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarToSentry)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarToSentry> is deprecated: use rm_msgs-msg:RadarToSentry instead.")))

(cl:ensure-generic-function 'robot_ID-val :lambda-list '(m))
(cl:defmethod robot_ID-val ((m <RadarToSentry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:robot_ID-val is deprecated.  Use rm_msgs-msg:robot_ID instead.")
  (robot_ID m))

(cl:ensure-generic-function 'position_x-val :lambda-list '(m))
(cl:defmethod position_x-val ((m <RadarToSentry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:position_x-val is deprecated.  Use rm_msgs-msg:position_x instead.")
  (position_x m))

(cl:ensure-generic-function 'position_y-val :lambda-list '(m))
(cl:defmethod position_y-val ((m <RadarToSentry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:position_y-val is deprecated.  Use rm_msgs-msg:position_y instead.")
  (position_y m))

(cl:ensure-generic-function 'engineer_marked-val :lambda-list '(m))
(cl:defmethod engineer_marked-val ((m <RadarToSentry>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_marked-val is deprecated.  Use rm_msgs-msg:engineer_marked instead.")
  (engineer_marked m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarToSentry>) ostream)
  "Serializes a message object of type '<RadarToSentry>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engineer_marked) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarToSentry>) istream)
  "Deserializes a message object of type '<RadarToSentry>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'engineer_marked) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarToSentry>)))
  "Returns string type for a message object of type '<RadarToSentry>"
  "rm_msgs/RadarToSentry")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarToSentry)))
  "Returns string type for a message object of type 'RadarToSentry"
  "rm_msgs/RadarToSentry")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarToSentry>)))
  "Returns md5sum for a message object of type '<RadarToSentry>"
  "55598f76d4bb77ccd6286fc50e5b4aed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarToSentry)))
  "Returns md5sum for a message object of type 'RadarToSentry"
  "55598f76d4bb77ccd6286fc50e5b4aed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarToSentry>)))
  "Returns full string definition for message of type '<RadarToSentry>"
  (cl:format cl:nil "uint8 robot_ID~%float32 position_x~%float32 position_y~%bool engineer_marked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarToSentry)))
  "Returns full string definition for message of type 'RadarToSentry"
  (cl:format cl:nil "uint8 robot_ID~%float32 position_x~%float32 position_y~%bool engineer_marked~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarToSentry>))
  (cl:+ 0
     1
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarToSentry>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarToSentry
    (cl:cons ':robot_ID (robot_ID msg))
    (cl:cons ':position_x (position_x msg))
    (cl:cons ':position_y (position_y msg))
    (cl:cons ':engineer_marked (engineer_marked msg))
))
