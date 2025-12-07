; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude SetLimitVel-request.msg.html

(cl:defclass <SetLimitVel-request> (roslisp-msg-protocol:ros-message)
  ((limit_vel
    :reader limit_vel
    :initarg :limit_vel
    :type cl:float
    :initform 0.0)
   (slide_window
    :reader slide_window
    :initarg :slide_window
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetLimitVel-request (<SetLimitVel-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLimitVel-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLimitVel-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<SetLimitVel-request> is deprecated: use rm_msgs-srv:SetLimitVel-request instead.")))

(cl:ensure-generic-function 'limit_vel-val :lambda-list '(m))
(cl:defmethod limit_vel-val ((m <SetLimitVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:limit_vel-val is deprecated.  Use rm_msgs-srv:limit_vel instead.")
  (limit_vel m))

(cl:ensure-generic-function 'slide_window-val :lambda-list '(m))
(cl:defmethod slide_window-val ((m <SetLimitVel-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:slide_window-val is deprecated.  Use rm_msgs-srv:slide_window instead.")
  (slide_window m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLimitVel-request>) ostream)
  "Serializes a message object of type '<SetLimitVel-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'limit_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'slide_window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLimitVel-request>) istream)
  "Deserializes a message object of type '<SetLimitVel-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'limit_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'slide_window) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLimitVel-request>)))
  "Returns string type for a service object of type '<SetLimitVel-request>"
  "rm_msgs/SetLimitVelRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLimitVel-request)))
  "Returns string type for a service object of type 'SetLimitVel-request"
  "rm_msgs/SetLimitVelRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLimitVel-request>)))
  "Returns md5sum for a message object of type '<SetLimitVel-request>"
  "2245c522444d13b16c8466a61157b141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLimitVel-request)))
  "Returns md5sum for a message object of type 'SetLimitVel-request"
  "2245c522444d13b16c8466a61157b141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLimitVel-request>)))
  "Returns full string definition for message of type '<SetLimitVel-request>"
  (cl:format cl:nil "float32 limit_vel~%float32 slide_window~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLimitVel-request)))
  "Returns full string definition for message of type 'SetLimitVel-request"
  (cl:format cl:nil "float32 limit_vel~%float32 slide_window~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLimitVel-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLimitVel-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLimitVel-request
    (cl:cons ':limit_vel (limit_vel msg))
    (cl:cons ':slide_window (slide_window msg))
))
;//! \htmlinclude SetLimitVel-response.msg.html

(cl:defclass <SetLimitVel-response> (roslisp-msg-protocol:ros-message)
  ((current_limit_vel
    :reader current_limit_vel
    :initarg :current_limit_vel
    :type cl:float
    :initform 0.0)
   (current_slide_window
    :reader current_slide_window
    :initarg :current_slide_window
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetLimitVel-response (<SetLimitVel-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetLimitVel-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetLimitVel-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<SetLimitVel-response> is deprecated: use rm_msgs-srv:SetLimitVel-response instead.")))

(cl:ensure-generic-function 'current_limit_vel-val :lambda-list '(m))
(cl:defmethod current_limit_vel-val ((m <SetLimitVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:current_limit_vel-val is deprecated.  Use rm_msgs-srv:current_limit_vel instead.")
  (current_limit_vel m))

(cl:ensure-generic-function 'current_slide_window-val :lambda-list '(m))
(cl:defmethod current_slide_window-val ((m <SetLimitVel-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:current_slide_window-val is deprecated.  Use rm_msgs-srv:current_slide_window instead.")
  (current_slide_window m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetLimitVel-response>) ostream)
  "Serializes a message object of type '<SetLimitVel-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_limit_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'current_slide_window))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetLimitVel-response>) istream)
  "Deserializes a message object of type '<SetLimitVel-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_limit_vel) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'current_slide_window) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetLimitVel-response>)))
  "Returns string type for a service object of type '<SetLimitVel-response>"
  "rm_msgs/SetLimitVelResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLimitVel-response)))
  "Returns string type for a service object of type 'SetLimitVel-response"
  "rm_msgs/SetLimitVelResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetLimitVel-response>)))
  "Returns md5sum for a message object of type '<SetLimitVel-response>"
  "2245c522444d13b16c8466a61157b141")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetLimitVel-response)))
  "Returns md5sum for a message object of type 'SetLimitVel-response"
  "2245c522444d13b16c8466a61157b141")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetLimitVel-response>)))
  "Returns full string definition for message of type '<SetLimitVel-response>"
  (cl:format cl:nil "float32 current_limit_vel~%float32 current_slide_window~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetLimitVel-response)))
  "Returns full string definition for message of type 'SetLimitVel-response"
  (cl:format cl:nil "float32 current_limit_vel~%float32 current_slide_window~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetLimitVel-response>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetLimitVel-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetLimitVel-response
    (cl:cons ':current_limit_vel (current_limit_vel msg))
    (cl:cons ':current_slide_window (current_slide_window msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetLimitVel)))
  'SetLimitVel-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetLimitVel)))
  'SetLimitVel-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetLimitVel)))
  "Returns string type for a service object of type '<SetLimitVel>"
  "rm_msgs/SetLimitVel")