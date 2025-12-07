; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ClientMapSendData.msg.html

(cl:defclass <ClientMapSendData> (roslisp-msg-protocol:ros-message)
  ((target_position_x
    :reader target_position_x
    :initarg :target_position_x
    :type cl:float
    :initform 0.0)
   (target_position_y
    :reader target_position_y
    :initarg :target_position_y
    :type cl:float
    :initform 0.0)
   (command_keyboard
    :reader command_keyboard
    :initarg :command_keyboard
    :type cl:fixnum
    :initform 0)
   (target_robot_ID
    :reader target_robot_ID
    :initarg :target_robot_ID
    :type cl:fixnum
    :initform 0)
   (cmd_source
    :reader cmd_source
    :initarg :cmd_source
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClientMapSendData (<ClientMapSendData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientMapSendData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientMapSendData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ClientMapSendData> is deprecated: use rm_msgs-msg:ClientMapSendData instead.")))

(cl:ensure-generic-function 'target_position_x-val :lambda-list '(m))
(cl:defmethod target_position_x-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_x-val is deprecated.  Use rm_msgs-msg:target_position_x instead.")
  (target_position_x m))

(cl:ensure-generic-function 'target_position_y-val :lambda-list '(m))
(cl:defmethod target_position_y-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_y-val is deprecated.  Use rm_msgs-msg:target_position_y instead.")
  (target_position_y m))

(cl:ensure-generic-function 'command_keyboard-val :lambda-list '(m))
(cl:defmethod command_keyboard-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command_keyboard-val is deprecated.  Use rm_msgs-msg:command_keyboard instead.")
  (command_keyboard m))

(cl:ensure-generic-function 'target_robot_ID-val :lambda-list '(m))
(cl:defmethod target_robot_ID-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_robot_ID-val is deprecated.  Use rm_msgs-msg:target_robot_ID instead.")
  (target_robot_ID m))

(cl:ensure-generic-function 'cmd_source-val :lambda-list '(m))
(cl:defmethod cmd_source-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:cmd_source-val is deprecated.  Use rm_msgs-msg:cmd_source instead.")
  (cmd_source m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ClientMapSendData>)))
    "Constants for message type '<ClientMapSendData>"
  '((:KEY_Q . 81)
    (:KEY_W . 87)
    (:KEY_E . 69)
    (:KEY_R . 82)
    (:KEY_T . 84)
    (:KEY_Y . 89)
    (:KEY_U . 85)
    (:KEY_O . 79)
    (:KEY_A . 65)
    (:KEY_S . 83)
    (:KEY_D . 68)
    (:KEY_F . 70)
    (:KEY_G . 71)
    (:KEY_H . 72)
    (:KEY_J . 74)
    (:KEY_K . 75)
    (:KEY_L . 76)
    (:KEY_Z . 90)
    (:KEY_X . 88)
    (:KEY_C . 67)
    (:KEY_V . 86)
    (:KEY_N . 78))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ClientMapSendData)))
    "Constants for message type 'ClientMapSendData"
  '((:KEY_Q . 81)
    (:KEY_W . 87)
    (:KEY_E . 69)
    (:KEY_R . 82)
    (:KEY_T . 84)
    (:KEY_Y . 89)
    (:KEY_U . 85)
    (:KEY_O . 79)
    (:KEY_A . 65)
    (:KEY_S . 83)
    (:KEY_D . 68)
    (:KEY_F . 70)
    (:KEY_G . 71)
    (:KEY_H . 72)
    (:KEY_J . 74)
    (:KEY_K . 75)
    (:KEY_L . 76)
    (:KEY_Z . 90)
    (:KEY_X . 88)
    (:KEY_C . 67)
    (:KEY_V . 86)
    (:KEY_N . 78))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientMapSendData>) ostream)
  "Serializes a message object of type '<ClientMapSendData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_keyboard)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_source)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientMapSendData>) istream)
  "Deserializes a message object of type '<ClientMapSendData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_keyboard)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cmd_source)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientMapSendData>)))
  "Returns string type for a message object of type '<ClientMapSendData>"
  "rm_msgs/ClientMapSendData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientMapSendData)))
  "Returns string type for a message object of type 'ClientMapSendData"
  "rm_msgs/ClientMapSendData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientMapSendData>)))
  "Returns md5sum for a message object of type '<ClientMapSendData>"
  "aee27039134a834173f127a33eff61f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientMapSendData)))
  "Returns md5sum for a message object of type 'ClientMapSendData"
  "aee27039134a834173f127a33eff61f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientMapSendData>)))
  "Returns full string definition for message of type '<ClientMapSendData>"
  (cl:format cl:nil "uint8 KEY_Q = 81~%uint8 KEY_W = 87~%uint8 KEY_E = 69~%uint8 KEY_R = 82~%uint8 KEY_T = 84~%uint8 KEY_Y = 89~%uint8 KEY_U = 85~%uint8 KEY_O = 79~%~%uint8 KEY_A = 65~%uint8 KEY_S = 83~%uint8 KEY_D = 68~%uint8 KEY_F = 70~%uint8 KEY_G = 71~%uint8 KEY_H = 72~%uint8 KEY_J = 74~%uint8 KEY_K = 75~%uint8 KEY_L = 76~%~%uint8 KEY_Z = 90~%uint8 KEY_X = 88~%uint8 KEY_C = 67~%uint8 KEY_V = 86~%uint8 KEY_N = 78~%~%float32 target_position_x~%float32 target_position_y~%uint8 command_keyboard~%uint8 target_robot_ID~%uint8 cmd_source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientMapSendData)))
  "Returns full string definition for message of type 'ClientMapSendData"
  (cl:format cl:nil "uint8 KEY_Q = 81~%uint8 KEY_W = 87~%uint8 KEY_E = 69~%uint8 KEY_R = 82~%uint8 KEY_T = 84~%uint8 KEY_Y = 89~%uint8 KEY_U = 85~%uint8 KEY_O = 79~%~%uint8 KEY_A = 65~%uint8 KEY_S = 83~%uint8 KEY_D = 68~%uint8 KEY_F = 70~%uint8 KEY_G = 71~%uint8 KEY_H = 72~%uint8 KEY_J = 74~%uint8 KEY_K = 75~%uint8 KEY_L = 76~%~%uint8 KEY_Z = 90~%uint8 KEY_X = 88~%uint8 KEY_C = 67~%uint8 KEY_V = 86~%uint8 KEY_N = 78~%~%float32 target_position_x~%float32 target_position_y~%uint8 command_keyboard~%uint8 target_robot_ID~%uint8 cmd_source~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientMapSendData>))
  (cl:+ 0
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientMapSendData>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientMapSendData
    (cl:cons ':target_position_x (target_position_x msg))
    (cl:cons ':target_position_y (target_position_y msg))
    (cl:cons ':command_keyboard (command_keyboard msg))
    (cl:cons ':target_robot_ID (target_robot_ID msg))
    (cl:cons ':cmd_source (cmd_source msg))
))
