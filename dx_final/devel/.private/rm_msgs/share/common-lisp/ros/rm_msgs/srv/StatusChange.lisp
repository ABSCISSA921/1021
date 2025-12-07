; Auto-generated. Do not edit!


(cl:in-package rm_msgs-srv)


;//! \htmlinclude StatusChange-request.msg.html

(cl:defclass <StatusChange-request> (roslisp-msg-protocol:ros-message)
  ((color
    :reader color
    :initarg :color
    :type cl:fixnum
    :initform 0)
   (target
    :reader target
    :initarg :target
    :type cl:fixnum
    :initform 0)
   (armor_target
    :reader armor_target
    :initarg :armor_target
    :type cl:fixnum
    :initform 0)
   (exposure
    :reader exposure
    :initarg :exposure
    :type cl:fixnum
    :initform 0)
   (use_id_classification
    :reader use_id_classification
    :initarg :use_id_classification
    :type cl:fixnum
    :initform 0))
)

(cl:defclass StatusChange-request (<StatusChange-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusChange-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusChange-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<StatusChange-request> is deprecated: use rm_msgs-srv:StatusChange-request instead.")))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <StatusChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:color-val is deprecated.  Use rm_msgs-srv:color instead.")
  (color m))

(cl:ensure-generic-function 'target-val :lambda-list '(m))
(cl:defmethod target-val ((m <StatusChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:target-val is deprecated.  Use rm_msgs-srv:target instead.")
  (target m))

(cl:ensure-generic-function 'armor_target-val :lambda-list '(m))
(cl:defmethod armor_target-val ((m <StatusChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:armor_target-val is deprecated.  Use rm_msgs-srv:armor_target instead.")
  (armor_target m))

(cl:ensure-generic-function 'exposure-val :lambda-list '(m))
(cl:defmethod exposure-val ((m <StatusChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:exposure-val is deprecated.  Use rm_msgs-srv:exposure instead.")
  (exposure m))

(cl:ensure-generic-function 'use_id_classification-val :lambda-list '(m))
(cl:defmethod use_id_classification-val ((m <StatusChange-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:use_id_classification-val is deprecated.  Use rm_msgs-srv:use_id_classification instead.")
  (use_id_classification m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StatusChange-request>)))
    "Constants for message type '<StatusChange-request>"
  '((:RED . 0)
    (:BLUE . 1)
    (:PURPLE . 2)
    (:ARMOR . 0)
    (:SMALL_BUFF . 1)
    (:BIG_BUFF . 2)
    (:ARMOR_ALL . 0)
    (:ARMOR_OUTPOST_BASE . 1)
    (:ARMOR_WITHOUT_OUTPOST_BASE . 2)
    (:EXPOSURE_LEVEL_0 . 0)
    (:EXPOSURE_LEVEL_1 . 1)
    (:EXPOSURE_LEVEL_2 . 2)
    (:EXPOSURE_LEVEL_3 . 3)
    (:EXPOSURE_LEVEL_4 . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StatusChange-request)))
    "Constants for message type 'StatusChange-request"
  '((:RED . 0)
    (:BLUE . 1)
    (:PURPLE . 2)
    (:ARMOR . 0)
    (:SMALL_BUFF . 1)
    (:BIG_BUFF . 2)
    (:ARMOR_ALL . 0)
    (:ARMOR_OUTPOST_BASE . 1)
    (:ARMOR_WITHOUT_OUTPOST_BASE . 2)
    (:EXPOSURE_LEVEL_0 . 0)
    (:EXPOSURE_LEVEL_1 . 1)
    (:EXPOSURE_LEVEL_2 . 2)
    (:EXPOSURE_LEVEL_3 . 3)
    (:EXPOSURE_LEVEL_4 . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusChange-request>) ostream)
  "Serializes a message object of type '<StatusChange-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armor_target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'use_id_classification)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusChange-request>) istream)
  "Deserializes a message object of type '<StatusChange-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'armor_target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'exposure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'use_id_classification)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusChange-request>)))
  "Returns string type for a service object of type '<StatusChange-request>"
  "rm_msgs/StatusChangeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusChange-request)))
  "Returns string type for a service object of type 'StatusChange-request"
  "rm_msgs/StatusChangeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusChange-request>)))
  "Returns md5sum for a message object of type '<StatusChange-request>"
  "6a08dcf232cfcfc7c322ef15785928fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusChange-request)))
  "Returns md5sum for a message object of type 'StatusChange-request"
  "6a08dcf232cfcfc7c322ef15785928fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusChange-request>)))
  "Returns full string definition for message of type '<StatusChange-request>"
  (cl:format cl:nil "uint8 color~%uint8 target~%uint8 armor_target~%uint8 exposure~%uint8 use_id_classification~%uint8 RED = 0~%uint8 BLUE = 1~%uint8 PURPLE = 2~%uint8 ARMOR = 0~%uint8 SMALL_BUFF = 1~%uint8 BIG_BUFF = 2~%uint8 ARMOR_ALL = 0~%uint8 ARMOR_OUTPOST_BASE = 1~%uint8 ARMOR_WITHOUT_OUTPOST_BASE = 2~%uint8 EXPOSURE_LEVEL_0 = 0~%uint8 EXPOSURE_LEVEL_1 = 1~%uint8 EXPOSURE_LEVEL_2 = 2~%uint8 EXPOSURE_LEVEL_3 = 3~%uint8 EXPOSURE_LEVEL_4 = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusChange-request)))
  "Returns full string definition for message of type 'StatusChange-request"
  (cl:format cl:nil "uint8 color~%uint8 target~%uint8 armor_target~%uint8 exposure~%uint8 use_id_classification~%uint8 RED = 0~%uint8 BLUE = 1~%uint8 PURPLE = 2~%uint8 ARMOR = 0~%uint8 SMALL_BUFF = 1~%uint8 BIG_BUFF = 2~%uint8 ARMOR_ALL = 0~%uint8 ARMOR_OUTPOST_BASE = 1~%uint8 ARMOR_WITHOUT_OUTPOST_BASE = 2~%uint8 EXPOSURE_LEVEL_0 = 0~%uint8 EXPOSURE_LEVEL_1 = 1~%uint8 EXPOSURE_LEVEL_2 = 2~%uint8 EXPOSURE_LEVEL_3 = 3~%uint8 EXPOSURE_LEVEL_4 = 4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusChange-request>))
  (cl:+ 0
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusChange-request>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusChange-request
    (cl:cons ':color (color msg))
    (cl:cons ':target (target msg))
    (cl:cons ':armor_target (armor_target msg))
    (cl:cons ':exposure (exposure msg))
    (cl:cons ':use_id_classification (use_id_classification msg))
))
;//! \htmlinclude StatusChange-response.msg.html

(cl:defclass <StatusChange-response> (roslisp-msg-protocol:ros-message)
  ((switch_is_success
    :reader switch_is_success
    :initarg :switch_is_success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StatusChange-response (<StatusChange-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StatusChange-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StatusChange-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-srv:<StatusChange-response> is deprecated: use rm_msgs-srv:StatusChange-response instead.")))

(cl:ensure-generic-function 'switch_is_success-val :lambda-list '(m))
(cl:defmethod switch_is_success-val ((m <StatusChange-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-srv:switch_is_success-val is deprecated.  Use rm_msgs-srv:switch_is_success instead.")
  (switch_is_success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StatusChange-response>) ostream)
  "Serializes a message object of type '<StatusChange-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch_is_success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StatusChange-response>) istream)
  "Deserializes a message object of type '<StatusChange-response>"
    (cl:setf (cl:slot-value msg 'switch_is_success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StatusChange-response>)))
  "Returns string type for a service object of type '<StatusChange-response>"
  "rm_msgs/StatusChangeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusChange-response)))
  "Returns string type for a service object of type 'StatusChange-response"
  "rm_msgs/StatusChangeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StatusChange-response>)))
  "Returns md5sum for a message object of type '<StatusChange-response>"
  "6a08dcf232cfcfc7c322ef15785928fb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StatusChange-response)))
  "Returns md5sum for a message object of type 'StatusChange-response"
  "6a08dcf232cfcfc7c322ef15785928fb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StatusChange-response>)))
  "Returns full string definition for message of type '<StatusChange-response>"
  (cl:format cl:nil "bool switch_is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StatusChange-response)))
  "Returns full string definition for message of type 'StatusChange-response"
  (cl:format cl:nil "bool switch_is_success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StatusChange-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StatusChange-response>))
  "Converts a ROS message object to a list"
  (cl:list 'StatusChange-response
    (cl:cons ':switch_is_success (switch_is_success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'StatusChange)))
  'StatusChange-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'StatusChange)))
  'StatusChange-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StatusChange)))
  "Returns string type for a service object of type '<StatusChange>"
  "rm_msgs/StatusChange")