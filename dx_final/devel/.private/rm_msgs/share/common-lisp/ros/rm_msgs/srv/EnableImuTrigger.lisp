; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude EnableImuTrigger-request.msg.html

(cl:defclass <EnableImuTrigger-request> (roslisp-msg-protocol:ros-message)
  ((imu_name
    :reader imu_name
    :initarg :imu_name
    :type cl:string
    :initform "")
   (enable_trigger
    :reader enable_trigger
    :initarg :enable_trigger
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableImuTrigger-request (<EnableImuTrigger-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableImuTrigger-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableImuTrigger-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<EnableImuTrigger-request> is deprecated: use rm_msgs-srv:EnableImuTrigger-request instead.")))

(cl:ensure-generic-function 'imu_name-val :lambda-list '(m))
(cl:defmethod imu_name-val ((m <EnableImuTrigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:imu_name-val is deprecated.  Use rm_msgs-srv:imu_name instead.")
  (imu_name m))

(cl:ensure-generic-function 'enable_trigger-val :lambda-list '(m))
(cl:defmethod enable_trigger-val ((m <EnableImuTrigger-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:enable_trigger-val is deprecated.  Use rm_msgs-srv:enable_trigger instead.")
  (enable_trigger m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableImuTrigger-request>) ostream)
  "Serializes a message object of type '<EnableImuTrigger-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'imu_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'imu_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_trigger) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableImuTrigger-request>) istream)
  "Deserializes a message object of type '<EnableImuTrigger-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'imu_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'imu_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'enable_trigger) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableImuTrigger-request>)))
  "Returns string type for a service object of type '<EnableImuTrigger-request>"
  "rm_msgs/EnableImuTriggerRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableImuTrigger-request)))
  "Returns string type for a service object of type 'EnableImuTrigger-request"
  "rm_msgs/EnableImuTriggerRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableImuTrigger-request>)))
  "Returns md5sum for a message object of type '<EnableImuTrigger-request>"
  "1e2c36312701f0610562a77ad6902d8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableImuTrigger-request)))
  "Returns md5sum for a message object of type 'EnableImuTrigger-request"
  "1e2c36312701f0610562a77ad6902d8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableImuTrigger-request>)))
  "Returns full string definition for message of type '<EnableImuTrigger-request>"
  (cl:format cl:nil "string imu_name~%bool enable_trigger~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableImuTrigger-request)))
  "Returns full string definition for message of type 'EnableImuTrigger-request"
  (cl:format cl:nil "string imu_name~%bool enable_trigger~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableImuTrigger-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'imu_name))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableImuTrigger-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableImuTrigger-request
    (cl:cons ':imu_name (imu_name msg))
    (cl:cons ':enable_trigger (enable_trigger msg))
))
;//! \htmlinclude EnableImuTrigger-response.msg.html

(cl:defclass <EnableImuTrigger-response> (roslisp-msg-protocol:ros-message)
  ((is_success
    :reader is_success
    :initarg :is_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableImuTrigger-response (<EnableImuTrigger-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableImuTrigger-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableImuTrigger-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<EnableImuTrigger-response> is deprecated: use rm_msgs-srv:EnableImuTrigger-response instead.")))

(cl:ensure-generic-function 'is_success-val :lambda-list '(m))
(cl:defmethod is_success-val ((m <EnableImuTrigger-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:is_success-val is deprecated.  Use rm_msgs-srv:is_success instead.")
  (is_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableImuTrigger-response>) ostream)
  "Serializes a message object of type '<EnableImuTrigger-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableImuTrigger-response>) istream)
  "Deserializes a message object of type '<EnableImuTrigger-response>"
    (cl:setf (cl:slot-value msg 'is_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableImuTrigger-response>)))
  "Returns string type for a service object of type '<EnableImuTrigger-response>"
  "rm_msgs/EnableImuTriggerResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableImuTrigger-response)))
  "Returns string type for a service object of type 'EnableImuTrigger-response"
  "rm_msgs/EnableImuTriggerResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableImuTrigger-response>)))
  "Returns md5sum for a message object of type '<EnableImuTrigger-response>"
  "1e2c36312701f0610562a77ad6902d8f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableImuTrigger-response)))
  "Returns md5sum for a message object of type 'EnableImuTrigger-response"
  "1e2c36312701f0610562a77ad6902d8f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableImuTrigger-response>)))
  "Returns full string definition for message of type '<EnableImuTrigger-response>"
  (cl:format cl:nil "bool is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableImuTrigger-response)))
  "Returns full string definition for message of type 'EnableImuTrigger-response"
  (cl:format cl:nil "bool is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableImuTrigger-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableImuTrigger-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableImuTrigger-response
    (cl:cons ':is_success (is_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableImuTrigger)))
  'EnableImuTrigger-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableImuTrigger)))
  'EnableImuTrigger-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableImuTrigger)))
  "Returns string type for a service object of type '<EnableImuTrigger>"
  "rm_msgs/EnableImuTrigger")