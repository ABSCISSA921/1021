; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude TagMsg.msg.html

(cl:defclass <TagMsg> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (letter
    :reader letter
    :initarg :letter
    :type cl:fixnum
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass TagMsg (<TagMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<TagMsg> is deprecated: use rm_msgs-msg:TagMsg instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <TagMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:color-val is deprecated.  Use rm_msgs-msg:color instead.")
  (color m))

(cl:ensure-generic-function 'letter-val :lambda-list '(m))
(cl:defmethod letter-val ((m <TagMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:letter-val is deprecated.  Use rm_msgs-msg:letter instead.")
  (letter m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <TagMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:pose-val is deprecated.  Use rm_msgs-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagMsg>) ostream)
  "Serializes a message object of type '<TagMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagMsg>) istream)
  "Deserializes a message object of type '<TagMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'letter)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagMsg>)))
  "Returns string type for a message object of type '<TagMsg>"
  "rm_msgs/TagMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagMsg)))
  "Returns string type for a message object of type 'TagMsg"
  "rm_msgs/TagMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagMsg>)))
  "Returns md5sum for a message object of type '<TagMsg>"
  "20cfdd82cc6da3ba1e2608103b8aa270")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagMsg)))
  "Returns md5sum for a message object of type 'TagMsg"
  "20cfdd82cc6da3ba1e2608103b8aa270")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagMsg>)))
  "Returns full string definition for message of type '<TagMsg>"
  (cl:format cl:nil "uint8 color~%uint8 letter~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagMsg)))
  "Returns full string definition for message of type 'TagMsg"
  (cl:format cl:nil "uint8 color~%uint8 letter~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagMsg>))
  (cl:+ 0
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TagMsg
    (cl:cons ':color (color msg))
    (cl:cons ':letter (letter msg))
    (cl:cons ':pose (pose msg))
))
