; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude TargetDetectionArray.msg.html

(cl:defclass <TargetDetectionArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_red
    :reader is_red
    :initarg :is_red
    :type cl:boolean
    :initform cl:nil)
   (detections
    :reader detections
    :initarg :detections
    :type (cl:vector rm_msgs-msg:TargetDetection)
   :initform (cl:make-array 0 :element-type 'rm_msgs-msg:TargetDetection :initial-element (cl:make-instance 'rm_msgs-msg:TargetDetection))))
)

(cl:defclass TargetDetectionArray (<TargetDetectionArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetDetectionArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetDetectionArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<TargetDetectionArray> is deprecated: use rm_msgs-msg:TargetDetectionArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TargetDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:header-val is deprecated.  Use rm_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_red-val :lambda-list '(m))
(cl:defmethod is_red-val ((m <TargetDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:is_red-val is deprecated.  Use rm_msgs-msg:is_red instead.")
  (is_red m))

(cl:ensure-generic-function 'detections-val :lambda-list '(m))
(cl:defmethod detections-val ((m <TargetDetectionArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:detections-val is deprecated.  Use rm_msgs-msg:detections instead.")
  (detections m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetDetectionArray>) ostream)
  "Serializes a message object of type '<TargetDetectionArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_red) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'detections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'detections))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetDetectionArray>) istream)
  "Deserializes a message object of type '<TargetDetectionArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_red) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'detections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'detections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rm_msgs-msg:TargetDetection))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetDetectionArray>)))
  "Returns string type for a message object of type '<TargetDetectionArray>"
  "rm_msgs/TargetDetectionArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetDetectionArray)))
  "Returns string type for a message object of type 'TargetDetectionArray"
  "rm_msgs/TargetDetectionArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetDetectionArray>)))
  "Returns md5sum for a message object of type '<TargetDetectionArray>"
  "9e86cc7ec7550de1d0f3128a731a89a2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetDetectionArray)))
  "Returns md5sum for a message object of type 'TargetDetectionArray"
  "9e86cc7ec7550de1d0f3128a731a89a2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetDetectionArray>)))
  "Returns full string definition for message of type '<TargetDetectionArray>"
  (cl:format cl:nil "std_msgs/Header header~%bool is_red~%TargetDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rm_msgs/TargetDetection~%uint8 id~%float64 distance_to_image_center~%float64 confidence~%bool is_large_armor~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetDetectionArray)))
  "Returns full string definition for message of type 'TargetDetectionArray"
  (cl:format cl:nil "std_msgs/Header header~%bool is_red~%TargetDetection[] detections~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rm_msgs/TargetDetection~%uint8 id~%float64 distance_to_image_center~%float64 confidence~%bool is_large_armor~%geometry_msgs/Pose pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetDetectionArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'detections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetDetectionArray>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetDetectionArray
    (cl:cons ':header (header msg))
    (cl:cons ':is_red (is_red msg))
    (cl:cons ':detections (detections msg))
))
