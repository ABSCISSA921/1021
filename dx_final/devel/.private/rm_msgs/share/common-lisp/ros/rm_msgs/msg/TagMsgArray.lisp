; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude TagMsgArray.msg.html

(cl:defclass <TagMsgArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tag_msgs_array
    :reader tag_msgs_array
    :initarg :tag_msgs_array
    :type (cl:vector rm_msgs-msg:TagMsg)
   :initform (cl:make-array 0 :element-type 'rm_msgs-msg:TagMsg :initial-element (cl:make-instance 'rm_msgs-msg:TagMsg))))
)

(cl:defclass TagMsgArray (<TagMsgArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TagMsgArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TagMsgArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<TagMsgArray> is deprecated: use rm_msgs-msg:TagMsgArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TagMsgArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:header-val is deprecated.  Use rm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tag_msgs_array-val :lambda-list '(m))
(cl:defmethod tag_msgs_array-val ((m <TagMsgArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:tag_msgs_array-val is deprecated.  Use rm_msgs-msg:tag_msgs_array instead.")
  (tag_msgs_array m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TagMsgArray>) ostream)
  "Serializes a message object of type '<TagMsgArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tag_msgs_array))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'tag_msgs_array))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TagMsgArray>) istream)
  "Deserializes a message object of type '<TagMsgArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tag_msgs_array) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tag_msgs_array)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rm_msgs-msg:TagMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TagMsgArray>)))
  "Returns string type for a message object of type '<TagMsgArray>"
  "rm_msgs/TagMsgArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TagMsgArray)))
  "Returns string type for a message object of type 'TagMsgArray"
  "rm_msgs/TagMsgArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TagMsgArray>)))
  "Returns md5sum for a message object of type '<TagMsgArray>"
  "902a772db603bf3e4cf94e3aa203838c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TagMsgArray)))
  "Returns md5sum for a message object of type 'TagMsgArray"
  "902a772db603bf3e4cf94e3aa203838c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TagMsgArray>)))
  "Returns full string definition for message of type '<TagMsgArray>"
  (cl:format cl:nil "std_msgs/Header header~%TagMsg[] tag_msgs_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rm_msgs/TagMsg~%uint8 color~%uint8 letter~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TagMsgArray)))
  "Returns full string definition for message of type 'TagMsgArray"
  (cl:format cl:nil "std_msgs/Header header~%TagMsg[] tag_msgs_array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rm_msgs/TagMsg~%uint8 color~%uint8 letter~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TagMsgArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tag_msgs_array) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TagMsgArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TagMsgArray
    (cl:cons ':header (header msg))
    (cl:cons ':tag_msgs_array (tag_msgs_array msg))
))
