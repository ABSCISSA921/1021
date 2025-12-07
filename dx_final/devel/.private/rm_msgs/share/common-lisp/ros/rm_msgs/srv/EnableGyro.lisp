; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude EnableGyro-request.msg.html

(cl:defclass <EnableGyro-request> (roslisp-msg-protocol:ros-message)
  ((gyro_speed
    :reader gyro_speed
    :initarg :gyro_speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass EnableGyro-request (<EnableGyro-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableGyro-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableGyro-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<EnableGyro-request> is deprecated: use rm_msgs-srv:EnableGyro-request instead.")))

(cl:ensure-generic-function 'gyro_speed-val :lambda-list '(m))
(cl:defmethod gyro_speed-val ((m <EnableGyro-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:gyro_speed-val is deprecated.  Use rm_msgs-srv:gyro_speed instead.")
  (gyro_speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableGyro-request>) ostream)
  "Serializes a message object of type '<EnableGyro-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableGyro-request>) istream)
  "Deserializes a message object of type '<EnableGyro-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableGyro-request>)))
  "Returns string type for a service object of type '<EnableGyro-request>"
  "rm_msgs/EnableGyroRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableGyro-request)))
  "Returns string type for a service object of type 'EnableGyro-request"
  "rm_msgs/EnableGyroRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableGyro-request>)))
  "Returns md5sum for a message object of type '<EnableGyro-request>"
  "b392a2bc1a18f8fd0a5d7f696d80a69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableGyro-request)))
  "Returns md5sum for a message object of type 'EnableGyro-request"
  "b392a2bc1a18f8fd0a5d7f696d80a69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableGyro-request>)))
  "Returns full string definition for message of type '<EnableGyro-request>"
  (cl:format cl:nil "float32 gyro_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableGyro-request)))
  "Returns full string definition for message of type 'EnableGyro-request"
  (cl:format cl:nil "float32 gyro_speed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableGyro-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableGyro-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableGyro-request
    (cl:cons ':gyro_speed (gyro_speed msg))
))
;//! \htmlinclude EnableGyro-response.msg.html

(cl:defclass <EnableGyro-response> (roslisp-msg-protocol:ros-message)
  ((is_gyro
    :reader is_gyro
    :initarg :is_gyro
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EnableGyro-response (<EnableGyro-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnableGyro-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnableGyro-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<EnableGyro-response> is deprecated: use rm_msgs-srv:EnableGyro-response instead.")))

(cl:ensure-generic-function 'is_gyro-val :lambda-list '(m))
(cl:defmethod is_gyro-val ((m <EnableGyro-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:is_gyro-val is deprecated.  Use rm_msgs-srv:is_gyro instead.")
  (is_gyro m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnableGyro-response>) ostream)
  "Serializes a message object of type '<EnableGyro-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_gyro) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnableGyro-response>) istream)
  "Deserializes a message object of type '<EnableGyro-response>"
    (cl:setf (cl:slot-value msg 'is_gyro) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnableGyro-response>)))
  "Returns string type for a service object of type '<EnableGyro-response>"
  "rm_msgs/EnableGyroResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableGyro-response)))
  "Returns string type for a service object of type 'EnableGyro-response"
  "rm_msgs/EnableGyroResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnableGyro-response>)))
  "Returns md5sum for a message object of type '<EnableGyro-response>"
  "b392a2bc1a18f8fd0a5d7f696d80a69d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnableGyro-response)))
  "Returns md5sum for a message object of type 'EnableGyro-response"
  "b392a2bc1a18f8fd0a5d7f696d80a69d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnableGyro-response>)))
  "Returns full string definition for message of type '<EnableGyro-response>"
  (cl:format cl:nil "bool is_gyro~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnableGyro-response)))
  "Returns full string definition for message of type 'EnableGyro-response"
  (cl:format cl:nil "bool is_gyro~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnableGyro-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnableGyro-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EnableGyro-response
    (cl:cons ':is_gyro (is_gyro msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EnableGyro)))
  'EnableGyro-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EnableGyro)))
  'EnableGyro-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnableGyro)))
  "Returns string type for a service object of type '<EnableGyro>"
  "rm_msgs/EnableGyro")