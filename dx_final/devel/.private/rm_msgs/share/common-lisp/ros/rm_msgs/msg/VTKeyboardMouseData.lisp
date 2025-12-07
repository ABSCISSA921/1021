; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude VTKeyboardMouseData.msg.html

(cl:defclass <VTKeyboardMouseData> (roslisp-msg-protocol:ros-message)
  ((mouse_x
    :reader mouse_x
    :initarg :mouse_x
    :type cl:fixnum
    :initform 0)
   (mouse_y
    :reader mouse_y
    :initarg :mouse_y
    :type cl:fixnum
    :initform 0)
   (mouse_z
    :reader mouse_z
    :initarg :mouse_z
    :type cl:fixnum
    :initform 0)
   (left_button_down
    :reader left_button_down
    :initarg :left_button_down
    :type cl:boolean
    :initform cl:nil)
   (right_button_down
    :reader right_button_down
    :initarg :right_button_down
    :type cl:boolean
    :initform cl:nil)
   (key_w
    :reader key_w
    :initarg :key_w
    :type cl:boolean
    :initform cl:nil)
   (key_s
    :reader key_s
    :initarg :key_s
    :type cl:boolean
    :initform cl:nil)
   (key_a
    :reader key_a
    :initarg :key_a
    :type cl:boolean
    :initform cl:nil)
   (key_d
    :reader key_d
    :initarg :key_d
    :type cl:boolean
    :initform cl:nil)
   (key_shift
    :reader key_shift
    :initarg :key_shift
    :type cl:boolean
    :initform cl:nil)
   (key_ctrl
    :reader key_ctrl
    :initarg :key_ctrl
    :type cl:boolean
    :initform cl:nil)
   (key_q
    :reader key_q
    :initarg :key_q
    :type cl:boolean
    :initform cl:nil)
   (key_e
    :reader key_e
    :initarg :key_e
    :type cl:boolean
    :initform cl:nil)
   (key_r
    :reader key_r
    :initarg :key_r
    :type cl:boolean
    :initform cl:nil)
   (key_f
    :reader key_f
    :initarg :key_f
    :type cl:boolean
    :initform cl:nil)
   (key_g
    :reader key_g
    :initarg :key_g
    :type cl:boolean
    :initform cl:nil)
   (key_z
    :reader key_z
    :initarg :key_z
    :type cl:boolean
    :initform cl:nil)
   (key_x
    :reader key_x
    :initarg :key_x
    :type cl:boolean
    :initform cl:nil)
   (key_c
    :reader key_c
    :initarg :key_c
    :type cl:boolean
    :initform cl:nil)
   (key_v
    :reader key_v
    :initarg :key_v
    :type cl:boolean
    :initform cl:nil)
   (key_b
    :reader key_b
    :initarg :key_b
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass VTKeyboardMouseData (<VTKeyboardMouseData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VTKeyboardMouseData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VTKeyboardMouseData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<VTKeyboardMouseData> is deprecated: use rm_msgs-msg:VTKeyboardMouseData instead.")))

(cl:ensure-generic-function 'mouse_x-val :lambda-list '(m))
(cl:defmethod mouse_x-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_x-val is deprecated.  Use rm_msgs-msg:mouse_x instead.")
  (mouse_x m))

(cl:ensure-generic-function 'mouse_y-val :lambda-list '(m))
(cl:defmethod mouse_y-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_y-val is deprecated.  Use rm_msgs-msg:mouse_y instead.")
  (mouse_y m))

(cl:ensure-generic-function 'mouse_z-val :lambda-list '(m))
(cl:defmethod mouse_z-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_z-val is deprecated.  Use rm_msgs-msg:mouse_z instead.")
  (mouse_z m))

(cl:ensure-generic-function 'left_button_down-val :lambda-list '(m))
(cl:defmethod left_button_down-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:left_button_down-val is deprecated.  Use rm_msgs-msg:left_button_down instead.")
  (left_button_down m))

(cl:ensure-generic-function 'right_button_down-val :lambda-list '(m))
(cl:defmethod right_button_down-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:right_button_down-val is deprecated.  Use rm_msgs-msg:right_button_down instead.")
  (right_button_down m))

(cl:ensure-generic-function 'key_w-val :lambda-list '(m))
(cl:defmethod key_w-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_w-val is deprecated.  Use rm_msgs-msg:key_w instead.")
  (key_w m))

(cl:ensure-generic-function 'key_s-val :lambda-list '(m))
(cl:defmethod key_s-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_s-val is deprecated.  Use rm_msgs-msg:key_s instead.")
  (key_s m))

(cl:ensure-generic-function 'key_a-val :lambda-list '(m))
(cl:defmethod key_a-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_a-val is deprecated.  Use rm_msgs-msg:key_a instead.")
  (key_a m))

(cl:ensure-generic-function 'key_d-val :lambda-list '(m))
(cl:defmethod key_d-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_d-val is deprecated.  Use rm_msgs-msg:key_d instead.")
  (key_d m))

(cl:ensure-generic-function 'key_shift-val :lambda-list '(m))
(cl:defmethod key_shift-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_shift-val is deprecated.  Use rm_msgs-msg:key_shift instead.")
  (key_shift m))

(cl:ensure-generic-function 'key_ctrl-val :lambda-list '(m))
(cl:defmethod key_ctrl-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_ctrl-val is deprecated.  Use rm_msgs-msg:key_ctrl instead.")
  (key_ctrl m))

(cl:ensure-generic-function 'key_q-val :lambda-list '(m))
(cl:defmethod key_q-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_q-val is deprecated.  Use rm_msgs-msg:key_q instead.")
  (key_q m))

(cl:ensure-generic-function 'key_e-val :lambda-list '(m))
(cl:defmethod key_e-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_e-val is deprecated.  Use rm_msgs-msg:key_e instead.")
  (key_e m))

(cl:ensure-generic-function 'key_r-val :lambda-list '(m))
(cl:defmethod key_r-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_r-val is deprecated.  Use rm_msgs-msg:key_r instead.")
  (key_r m))

(cl:ensure-generic-function 'key_f-val :lambda-list '(m))
(cl:defmethod key_f-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_f-val is deprecated.  Use rm_msgs-msg:key_f instead.")
  (key_f m))

(cl:ensure-generic-function 'key_g-val :lambda-list '(m))
(cl:defmethod key_g-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_g-val is deprecated.  Use rm_msgs-msg:key_g instead.")
  (key_g m))

(cl:ensure-generic-function 'key_z-val :lambda-list '(m))
(cl:defmethod key_z-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_z-val is deprecated.  Use rm_msgs-msg:key_z instead.")
  (key_z m))

(cl:ensure-generic-function 'key_x-val :lambda-list '(m))
(cl:defmethod key_x-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_x-val is deprecated.  Use rm_msgs-msg:key_x instead.")
  (key_x m))

(cl:ensure-generic-function 'key_c-val :lambda-list '(m))
(cl:defmethod key_c-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_c-val is deprecated.  Use rm_msgs-msg:key_c instead.")
  (key_c m))

(cl:ensure-generic-function 'key_v-val :lambda-list '(m))
(cl:defmethod key_v-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_v-val is deprecated.  Use rm_msgs-msg:key_v instead.")
  (key_v m))

(cl:ensure-generic-function 'key_b-val :lambda-list '(m))
(cl:defmethod key_b-val ((m <VTKeyboardMouseData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_b-val is deprecated.  Use rm_msgs-msg:key_b instead.")
  (key_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VTKeyboardMouseData>) ostream)
  "Serializes a message object of type '<VTKeyboardMouseData>"
  (cl:let* ((signed (cl:slot-value msg 'mouse_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left_button_down) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right_button_down) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_w) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_s) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_a) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_d) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_shift) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_ctrl) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_q) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_e) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_r) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_f) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_g) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_c) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_v) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'key_b) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VTKeyboardMouseData>) istream)
  "Deserializes a message object of type '<VTKeyboardMouseData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'mouse_z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'left_button_down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right_button_down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_w) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_s) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_a) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_d) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_shift) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_ctrl) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_q) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_e) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_r) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_f) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_g) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_c) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_v) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'key_b) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VTKeyboardMouseData>)))
  "Returns string type for a message object of type '<VTKeyboardMouseData>"
  "rm_msgs/VTKeyboardMouseData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VTKeyboardMouseData)))
  "Returns string type for a message object of type 'VTKeyboardMouseData"
  "rm_msgs/VTKeyboardMouseData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VTKeyboardMouseData>)))
  "Returns md5sum for a message object of type '<VTKeyboardMouseData>"
  "d9f68e8d3ee2022670ec30249830ac1d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VTKeyboardMouseData)))
  "Returns md5sum for a message object of type 'VTKeyboardMouseData"
  "d9f68e8d3ee2022670ec30249830ac1d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VTKeyboardMouseData>)))
  "Returns full string definition for message of type '<VTKeyboardMouseData>"
  (cl:format cl:nil "int16 mouse_x~%int16 mouse_y~%int16 mouse_z~%bool left_button_down~%bool right_button_down~%~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VTKeyboardMouseData)))
  "Returns full string definition for message of type 'VTKeyboardMouseData"
  (cl:format cl:nil "int16 mouse_x~%int16 mouse_y~%int16 mouse_z~%bool left_button_down~%bool right_button_down~%~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VTKeyboardMouseData>))
  (cl:+ 0
     2
     2
     2
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VTKeyboardMouseData>))
  "Converts a ROS message object to a list"
  (cl:list 'VTKeyboardMouseData
    (cl:cons ':mouse_x (mouse_x msg))
    (cl:cons ':mouse_y (mouse_y msg))
    (cl:cons ':mouse_z (mouse_z msg))
    (cl:cons ':left_button_down (left_button_down msg))
    (cl:cons ':right_button_down (right_button_down msg))
    (cl:cons ':key_w (key_w msg))
    (cl:cons ':key_s (key_s msg))
    (cl:cons ':key_a (key_a msg))
    (cl:cons ':key_d (key_d msg))
    (cl:cons ':key_shift (key_shift msg))
    (cl:cons ':key_ctrl (key_ctrl msg))
    (cl:cons ':key_q (key_q msg))
    (cl:cons ':key_e (key_e msg))
    (cl:cons ':key_r (key_r msg))
    (cl:cons ':key_f (key_f msg))
    (cl:cons ':key_g (key_g msg))
    (cl:cons ':key_z (key_z msg))
    (cl:cons ':key_x (key_x msg))
    (cl:cons ':key_c (key_c msg))
    (cl:cons ':key_v (key_v msg))
    (cl:cons ':key_b (key_b msg))
))
