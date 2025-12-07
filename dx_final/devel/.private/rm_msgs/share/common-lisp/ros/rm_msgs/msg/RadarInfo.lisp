; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarInfo.msg.html

(cl:defclass <RadarInfo> (roslisp-msg-protocol:ros-message)
  ((radar_info
    :reader radar_info
    :initarg :radar_info
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarInfo (<RadarInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarInfo> is deprecated: use rm_msgs-msg:RadarInfo instead.")))

(cl:ensure-generic-function 'radar_info-val :lambda-list '(m))
(cl:defmethod radar_info-val ((m <RadarInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:radar_info-val is deprecated.  Use rm_msgs-msg:radar_info instead.")
  (radar_info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarInfo>) ostream)
  "Serializes a message object of type '<RadarInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_info)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarInfo>) istream)
  "Deserializes a message object of type '<RadarInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'radar_info)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarInfo>)))
  "Returns string type for a message object of type '<RadarInfo>"
  "rm_msgs/RadarInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarInfo)))
  "Returns string type for a message object of type 'RadarInfo"
  "rm_msgs/RadarInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarInfo>)))
  "Returns md5sum for a message object of type '<RadarInfo>"
  "e33b2c279afbab996e05f5134608f519")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarInfo)))
  "Returns md5sum for a message object of type 'RadarInfo"
  "e33b2c279afbab996e05f5134608f519")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarInfo>)))
  "Returns full string definition for message of type '<RadarInfo>"
  (cl:format cl:nil "uint8 radar_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarInfo)))
  "Returns full string definition for message of type 'RadarInfo"
  (cl:format cl:nil "uint8 radar_info~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarInfo>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarInfo
    (cl:cons ':radar_info (radar_info msg))
))
