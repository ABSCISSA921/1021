; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude VisualizeStateData.msg.html

(cl:defclass <VisualizeStateData> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass VisualizeStateData (<VisualizeStateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualizeStateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualizeStateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<VisualizeStateData> is deprecated: use rm_msgs-msg:VisualizeStateData instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <VisualizeStateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state-val is deprecated.  Use rm_msgs-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualizeStateData>) ostream)
  "Serializes a message object of type '<VisualizeStateData>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualizeStateData>) istream)
  "Deserializes a message object of type '<VisualizeStateData>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'state) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'state)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualizeStateData>)))
  "Returns string type for a message object of type '<VisualizeStateData>"
  "rm_msgs/VisualizeStateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualizeStateData)))
  "Returns string type for a message object of type 'VisualizeStateData"
  "rm_msgs/VisualizeStateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualizeStateData>)))
  "Returns md5sum for a message object of type '<VisualizeStateData>"
  "b5958fa30c9a253a1f2857ed1c1f2b7f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualizeStateData)))
  "Returns md5sum for a message object of type 'VisualizeStateData"
  "b5958fa30c9a253a1f2857ed1c1f2b7f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualizeStateData>)))
  "Returns full string definition for message of type '<VisualizeStateData>"
  (cl:format cl:nil "bool[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualizeStateData)))
  "Returns full string definition for message of type 'VisualizeStateData"
  (cl:format cl:nil "bool[] state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualizeStateData>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'state) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualizeStateData>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualizeStateData
    (cl:cons ':state (state msg))
))
