; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude ContinousDetectorSwitch-request.msg.html

(cl:defclass <ContinousDetectorSwitch-request> (roslisp-msg-protocol:ros-message)
  ((detector_switch
    :reader detector_switch
    :initarg :detector_switch
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ContinousDetectorSwitch-request (<ContinousDetectorSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinousDetectorSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinousDetectorSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<ContinousDetectorSwitch-request> is deprecated: use rm_msgs-srv:ContinousDetectorSwitch-request instead.")))

(cl:ensure-generic-function 'detector_switch-val :lambda-list '(m))
(cl:defmethod detector_switch-val ((m <ContinousDetectorSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:detector_switch-val is deprecated.  Use rm_msgs-srv:detector_switch instead.")
  (detector_switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinousDetectorSwitch-request>) ostream)
  "Serializes a message object of type '<ContinousDetectorSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'detector_switch) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinousDetectorSwitch-request>) istream)
  "Deserializes a message object of type '<ContinousDetectorSwitch-request>"
    (cl:setf (cl:slot-value msg 'detector_switch) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinousDetectorSwitch-request>)))
  "Returns string type for a service object of type '<ContinousDetectorSwitch-request>"
  "rm_msgs/ContinousDetectorSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousDetectorSwitch-request)))
  "Returns string type for a service object of type 'ContinousDetectorSwitch-request"
  "rm_msgs/ContinousDetectorSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinousDetectorSwitch-request>)))
  "Returns md5sum for a message object of type '<ContinousDetectorSwitch-request>"
  "124ca6e89084b28197084359298c939c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinousDetectorSwitch-request)))
  "Returns md5sum for a message object of type 'ContinousDetectorSwitch-request"
  "124ca6e89084b28197084359298c939c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinousDetectorSwitch-request>)))
  "Returns full string definition for message of type '<ContinousDetectorSwitch-request>"
  (cl:format cl:nil "bool detector_switch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinousDetectorSwitch-request)))
  "Returns full string definition for message of type 'ContinousDetectorSwitch-request"
  (cl:format cl:nil "bool detector_switch~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinousDetectorSwitch-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinousDetectorSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinousDetectorSwitch-request
    (cl:cons ':detector_switch (detector_switch msg))
))
;//! \htmlinclude ContinousDetectorSwitch-response.msg.html

(cl:defclass <ContinousDetectorSwitch-response> (roslisp-msg-protocol:ros-message)
  ((continous_is_success
    :reader continous_is_success
    :initarg :continous_is_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ContinousDetectorSwitch-response (<ContinousDetectorSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ContinousDetectorSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ContinousDetectorSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<ContinousDetectorSwitch-response> is deprecated: use rm_msgs-srv:ContinousDetectorSwitch-response instead.")))

(cl:ensure-generic-function 'continous_is_success-val :lambda-list '(m))
(cl:defmethod continous_is_success-val ((m <ContinousDetectorSwitch-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:continous_is_success-val is deprecated.  Use rm_msgs-srv:continous_is_success instead.")
  (continous_is_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ContinousDetectorSwitch-response>) ostream)
  "Serializes a message object of type '<ContinousDetectorSwitch-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'continous_is_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ContinousDetectorSwitch-response>) istream)
  "Deserializes a message object of type '<ContinousDetectorSwitch-response>"
    (cl:setf (cl:slot-value msg 'continous_is_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ContinousDetectorSwitch-response>)))
  "Returns string type for a service object of type '<ContinousDetectorSwitch-response>"
  "rm_msgs/ContinousDetectorSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousDetectorSwitch-response)))
  "Returns string type for a service object of type 'ContinousDetectorSwitch-response"
  "rm_msgs/ContinousDetectorSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ContinousDetectorSwitch-response>)))
  "Returns md5sum for a message object of type '<ContinousDetectorSwitch-response>"
  "124ca6e89084b28197084359298c939c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ContinousDetectorSwitch-response)))
  "Returns md5sum for a message object of type 'ContinousDetectorSwitch-response"
  "124ca6e89084b28197084359298c939c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ContinousDetectorSwitch-response>)))
  "Returns full string definition for message of type '<ContinousDetectorSwitch-response>"
  (cl:format cl:nil "bool continous_is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ContinousDetectorSwitch-response)))
  "Returns full string definition for message of type 'ContinousDetectorSwitch-response"
  (cl:format cl:nil "bool continous_is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ContinousDetectorSwitch-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ContinousDetectorSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ContinousDetectorSwitch-response
    (cl:cons ':continous_is_success (continous_is_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ContinousDetectorSwitch)))
  'ContinousDetectorSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ContinousDetectorSwitch)))
  'ContinousDetectorSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ContinousDetectorSwitch)))
  "Returns string type for a service object of type '<ContinousDetectorSwitch>"
  "rm_msgs/ContinousDetectorSwitch")