; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude KalmanData.msg.html

(cl:defclass <KalmanData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (real_detection_pose
    :reader real_detection_pose
    :initarg :real_detection_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (filtered_detection_pose
    :reader filtered_detection_pose
    :initarg :filtered_detection_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (real_detection_twist
    :reader real_detection_twist
    :initarg :real_detection_twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (filtered_detection_twist
    :reader filtered_detection_twist
    :initarg :filtered_detection_twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass KalmanData (<KalmanData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <KalmanData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'KalmanData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<KalmanData> is deprecated: use rm_msgs-msg:KalmanData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <KalmanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:header-val is deprecated.  Use rm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'real_detection_pose-val :lambda-list '(m))
(cl:defmethod real_detection_pose-val ((m <KalmanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:real_detection_pose-val is deprecated.  Use rm_msgs-msg:real_detection_pose instead.")
  (real_detection_pose m))

(cl:ensure-generic-function 'filtered_detection_pose-val :lambda-list '(m))
(cl:defmethod filtered_detection_pose-val ((m <KalmanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:filtered_detection_pose-val is deprecated.  Use rm_msgs-msg:filtered_detection_pose instead.")
  (filtered_detection_pose m))

(cl:ensure-generic-function 'real_detection_twist-val :lambda-list '(m))
(cl:defmethod real_detection_twist-val ((m <KalmanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:real_detection_twist-val is deprecated.  Use rm_msgs-msg:real_detection_twist instead.")
  (real_detection_twist m))

(cl:ensure-generic-function 'filtered_detection_twist-val :lambda-list '(m))
(cl:defmethod filtered_detection_twist-val ((m <KalmanData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:filtered_detection_twist-val is deprecated.  Use rm_msgs-msg:filtered_detection_twist instead.")
  (filtered_detection_twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <KalmanData>) ostream)
  "Serializes a message object of type '<KalmanData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real_detection_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtered_detection_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'real_detection_twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filtered_detection_twist) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <KalmanData>) istream)
  "Deserializes a message object of type '<KalmanData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real_detection_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtered_detection_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'real_detection_twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filtered_detection_twist) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<KalmanData>)))
  "Returns string type for a message object of type '<KalmanData>"
  "rm_msgs/KalmanData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'KalmanData)))
  "Returns string type for a message object of type 'KalmanData"
  "rm_msgs/KalmanData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<KalmanData>)))
  "Returns md5sum for a message object of type '<KalmanData>"
  "076b9f9dc5aab232f694a2e05a2a0a8c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'KalmanData)))
  "Returns md5sum for a message object of type 'KalmanData"
  "076b9f9dc5aab232f694a2e05a2a0a8c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<KalmanData>)))
  "Returns full string definition for message of type '<KalmanData>"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose real_detection_pose~%geometry_msgs/Pose filtered_detection_pose~%geometry_msgs/Twist real_detection_twist~%geometry_msgs/Twist filtered_detection_twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'KalmanData)))
  "Returns full string definition for message of type 'KalmanData"
  (cl:format cl:nil "std_msgs/Header header~%geometry_msgs/Pose real_detection_pose~%geometry_msgs/Pose filtered_detection_pose~%geometry_msgs/Twist real_detection_twist~%geometry_msgs/Twist filtered_detection_twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3 linear~%Vector3 angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <KalmanData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real_detection_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtered_detection_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'real_detection_twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filtered_detection_twist))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <KalmanData>))
  "Converts a ROS message object to a list"
  (cl:list 'KalmanData
    (cl:cons ':header (header msg))
    (cl:cons ':real_detection_pose (real_detection_pose msg))
    (cl:cons ':filtered_detection_pose (filtered_detection_pose msg))
    (cl:cons ':real_detection_twist (real_detection_twist msg))
    (cl:cons ':filtered_detection_twist (filtered_detection_twist msg))
))
