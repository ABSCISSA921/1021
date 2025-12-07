; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude CameraStatus-request.msg.html

(cl:defclass <CameraStatus-request> (roslisp-msg-protocol:ros-message)
  ((imu_request
    :reader imu_request
    :initarg :imu_request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStatus-request (<CameraStatus-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStatus-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStatus-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<CameraStatus-request> is deprecated: use rm_msgs-srv:CameraStatus-request instead.")))

(cl:ensure-generic-function 'imu_request-val :lambda-list '(m))
(cl:defmethod imu_request-val ((m <CameraStatus-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:imu_request-val is deprecated.  Use rm_msgs-srv:imu_request instead.")
  (imu_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStatus-request>) ostream)
  "Serializes a message object of type '<CameraStatus-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'imu_request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStatus-request>) istream)
  "Deserializes a message object of type '<CameraStatus-request>"
    (cl:setf (cl:slot-value msg 'imu_request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStatus-request>)))
  "Returns string type for a service object of type '<CameraStatus-request>"
  "rm_msgs/CameraStatusRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStatus-request)))
  "Returns string type for a service object of type 'CameraStatus-request"
  "rm_msgs/CameraStatusRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStatus-request>)))
  "Returns md5sum for a message object of type '<CameraStatus-request>"
  "86773025f35634422f96dc69ae7b5cfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStatus-request)))
  "Returns md5sum for a message object of type 'CameraStatus-request"
  "86773025f35634422f96dc69ae7b5cfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStatus-request>)))
  "Returns full string definition for message of type '<CameraStatus-request>"
  (cl:format cl:nil "bool imu_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStatus-request)))
  "Returns full string definition for message of type 'CameraStatus-request"
  (cl:format cl:nil "bool imu_request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStatus-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStatus-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStatus-request
    (cl:cons ':imu_request (imu_request msg))
))
;//! \htmlinclude CameraStatus-response.msg.html

(cl:defclass <CameraStatus-response> (roslisp-msg-protocol:ros-message)
  ((is_open
    :reader is_open
    :initarg :is_open
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass CameraStatus-response (<CameraStatus-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CameraStatus-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CameraStatus-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<CameraStatus-response> is deprecated: use rm_msgs-srv:CameraStatus-response instead.")))

(cl:ensure-generic-function 'is_open-val :lambda-list '(m))
(cl:defmethod is_open-val ((m <CameraStatus-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:is_open-val is deprecated.  Use rm_msgs-srv:is_open instead.")
  (is_open m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CameraStatus-response>) ostream)
  "Serializes a message object of type '<CameraStatus-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_open) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CameraStatus-response>) istream)
  "Deserializes a message object of type '<CameraStatus-response>"
    (cl:setf (cl:slot-value msg 'is_open) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CameraStatus-response>)))
  "Returns string type for a service object of type '<CameraStatus-response>"
  "rm_msgs/CameraStatusResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStatus-response)))
  "Returns string type for a service object of type 'CameraStatus-response"
  "rm_msgs/CameraStatusResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CameraStatus-response>)))
  "Returns md5sum for a message object of type '<CameraStatus-response>"
  "86773025f35634422f96dc69ae7b5cfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CameraStatus-response)))
  "Returns md5sum for a message object of type 'CameraStatus-response"
  "86773025f35634422f96dc69ae7b5cfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CameraStatus-response>)))
  "Returns full string definition for message of type '<CameraStatus-response>"
  (cl:format cl:nil "bool is_open~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CameraStatus-response)))
  "Returns full string definition for message of type 'CameraStatus-response"
  (cl:format cl:nil "bool is_open~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CameraStatus-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CameraStatus-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CameraStatus-response
    (cl:cons ':is_open (is_open msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CameraStatus)))
  'CameraStatus-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CameraStatus)))
  'CameraStatus-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CameraStatus)))
  "Returns string type for a service object of type '<CameraStatus>"
  "rm_msgs/CameraStatus")