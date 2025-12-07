; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ExchangerMsg.msg.html

(cl:defclass <ExchangerMsg> (roslisp-msg-protocol:ros-message)
  ((flag
    :reader flag
    :initarg :flag
    :type cl:fixnum
    :initform 0)
   (shape
    :reader shape
    :initarg :shape
    :type cl:fixnum
    :initform 0)
   (middle_point
    :reader middle_point
    :initarg :middle_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass ExchangerMsg (<ExchangerMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExchangerMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExchangerMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ExchangerMsg> is deprecated: use rm_msgs-msg:ExchangerMsg instead.")))

(cl:ensure-generic-function 'flag-val :lambda-list '(m))
(cl:defmethod flag-val ((m <ExchangerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:flag-val is deprecated.  Use rm_msgs-msg:flag instead.")
  (flag m))

(cl:ensure-generic-function 'shape-val :lambda-list '(m))
(cl:defmethod shape-val ((m <ExchangerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shape-val is deprecated.  Use rm_msgs-msg:shape instead.")
  (shape m))

(cl:ensure-generic-function 'middle_point-val :lambda-list '(m))
(cl:defmethod middle_point-val ((m <ExchangerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:middle_point-val is deprecated.  Use rm_msgs-msg:middle_point instead.")
  (middle_point m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ExchangerMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:pose-val is deprecated.  Use rm_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExchangerMsg>) ostream)
  "Serializes a message object of type '<ExchangerMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'middle_point) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExchangerMsg>) istream)
  "Deserializes a message object of type '<ExchangerMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'flag)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shape)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'middle_point) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExchangerMsg>)))
  "Returns string type for a message object of type '<ExchangerMsg>"
  "rm_msgs/ExchangerMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExchangerMsg)))
  "Returns string type for a message object of type 'ExchangerMsg"
  "rm_msgs/ExchangerMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExchangerMsg>)))
  "Returns md5sum for a message object of type '<ExchangerMsg>"
  "b6d3cfca8ef03650140ca2d366044574")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExchangerMsg)))
  "Returns md5sum for a message object of type 'ExchangerMsg"
  "b6d3cfca8ef03650140ca2d366044574")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExchangerMsg>)))
  "Returns full string definition for message of type '<ExchangerMsg>"
  (cl:format cl:nil "uint8 flag~%uint8 shape~%geometry_msgs/Point middle_point~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExchangerMsg)))
  "Returns full string definition for message of type 'ExchangerMsg"
  (cl:format cl:nil "uint8 flag~%uint8 shape~%geometry_msgs/Point middle_point~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExchangerMsg>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'middle_point))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExchangerMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'ExchangerMsg
    (cl:cons ':flag (flag msg))
    (cl:cons ':shape (shape msg))
    (cl:cons ':middle_point (middle_point msg))
    (cl:cons ':pose (pose msg))
))
