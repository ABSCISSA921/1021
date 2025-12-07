; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarData.msg.html

(cl:defclass <RadarData> (roslisp-msg-protocol:ros-message)
  ((robot_id
    :reader robot_id
    :initarg :robot_id
    :type cl:fixnum
    :initform 0)
   (state
    :reader state
    :initarg :state
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RadarData (<RadarData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarData> is deprecated: use rm_msgs-msg:RadarData instead.")))

(cl:ensure-generic-function 'robot_id-val :lambda-list '(m))
(cl:defmethod robot_id-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:robot_id-val is deprecated.  Use rm_msgs-msg:robot_id instead.")
  (robot_id m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <RadarData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RadarData>)))
    "Constants for message type '<RadarData>"
  '((:FLYING_SLOPE . 1)
    (:MARKING . 2)
    (:POINT_ONE_SHOOTING . 3)
    (:POINT_TWO_SHOOTING . 4)
    (:REFILLING . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RadarData)))
    "Constants for message type 'RadarData"
  '((:FLYING_SLOPE . 1)
    (:MARKING . 2)
    (:POINT_ONE_SHOOTING . 3)
    (:POINT_TWO_SHOOTING . 4)
    (:REFILLING . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarData>) ostream)
  "Serializes a message object of type '<RadarData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarData>) istream)
  "Deserializes a message object of type '<RadarData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'robot_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarData>)))
  "Returns string type for a message object of type '<RadarData>"
  "rm_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarData)))
  "Returns string type for a message object of type 'RadarData"
  "rm_msgs/RadarData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarData>)))
  "Returns md5sum for a message object of type '<RadarData>"
  "d804292969a0f67322d7ec462883ef13")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarData)))
  "Returns md5sum for a message object of type 'RadarData"
  "d804292969a0f67322d7ec462883ef13")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarData>)))
  "Returns full string definition for message of type '<RadarData>"
  (cl:format cl:nil "uint8 FLYING_SLOPE = 1~%uint8 MARKING = 2~%uint8 POINT_ONE_SHOOTING = 3~%uint8 POINT_TWO_SHOOTING = 4~%uint8 REFILLING = 5~%uint8 robot_id~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarData)))
  "Returns full string definition for message of type 'RadarData"
  (cl:format cl:nil "uint8 FLYING_SLOPE = 1~%uint8 MARKING = 2~%uint8 POINT_ONE_SHOOTING = 3~%uint8 POINT_TWO_SHOOTING = 4~%uint8 REFILLING = 5~%uint8 robot_id~%~%uint8 state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarData>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarData>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarData
    (cl:cons ':robot_id (robot_id msg))
    (cl:cons ':state (state msg))
))
