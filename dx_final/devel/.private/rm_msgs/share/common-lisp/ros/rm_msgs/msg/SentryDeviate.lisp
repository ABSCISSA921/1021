; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude SentryDeviate.msg.html

(cl:defclass <SentryDeviate> (roslisp-msg-protocol:ros-message)
  ((deviate_x
    :reader deviate_x
    :initarg :deviate_x
    :type cl:float
    :initform 0.0)
   (deviate_y
    :reader deviate_y
    :initarg :deviate_y
    :type cl:float
    :initform 0.0)
   (isDeviate
    :reader isDeviate
    :initarg :isDeviate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SentryDeviate (<SentryDeviate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SentryDeviate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SentryDeviate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<SentryDeviate> is deprecated: use rm_msgs-msg:SentryDeviate instead.")))

(cl:ensure-generic-function 'deviate_x-val :lambda-list '(m))
(cl:defmethod deviate_x-val ((m <SentryDeviate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:deviate_x-val is deprecated.  Use rm_msgs-msg:deviate_x instead.")
  (deviate_x m))

(cl:ensure-generic-function 'deviate_y-val :lambda-list '(m))
(cl:defmethod deviate_y-val ((m <SentryDeviate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:deviate_y-val is deprecated.  Use rm_msgs-msg:deviate_y instead.")
  (deviate_y m))

(cl:ensure-generic-function 'isDeviate-val :lambda-list '(m))
(cl:defmethod isDeviate-val ((m <SentryDeviate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:isDeviate-val is deprecated.  Use rm_msgs-msg:isDeviate instead.")
  (isDeviate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SentryDeviate>) ostream)
  "Serializes a message object of type '<SentryDeviate>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deviate_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'deviate_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isDeviate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SentryDeviate>) istream)
  "Deserializes a message object of type '<SentryDeviate>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deviate_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'deviate_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'isDeviate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SentryDeviate>)))
  "Returns string type for a message object of type '<SentryDeviate>"
  "rm_msgs/SentryDeviate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SentryDeviate)))
  "Returns string type for a message object of type 'SentryDeviate"
  "rm_msgs/SentryDeviate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SentryDeviate>)))
  "Returns md5sum for a message object of type '<SentryDeviate>"
  "3c69b176feecb141daf67e3748f91a86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SentryDeviate)))
  "Returns md5sum for a message object of type 'SentryDeviate"
  "3c69b176feecb141daf67e3748f91a86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SentryDeviate>)))
  "Returns full string definition for message of type '<SentryDeviate>"
  (cl:format cl:nil "float32 deviate_x~%float32 deviate_y~%bool isDeviate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SentryDeviate)))
  "Returns full string definition for message of type 'SentryDeviate"
  (cl:format cl:nil "float32 deviate_x~%float32 deviate_y~%bool isDeviate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SentryDeviate>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SentryDeviate>))
  "Converts a ROS message object to a list"
  (cl:list 'SentryDeviate
    (cl:cons ':deviate_x (deviate_x msg))
    (cl:cons ':deviate_y (deviate_y msg))
    (cl:cons ':isDeviate (isDeviate msg))
))
