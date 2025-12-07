; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude VTReceiverControlData.msg.html

(cl:defclass <VTReceiverControlData> (roslisp-msg-protocol:ros-message)
  ((joystick_r_x
    :reader joystick_r_x
    :initarg :joystick_r_x
    :type cl:float
    :initform 0.0)
   (joystick_r_y
    :reader joystick_r_y
    :initarg :joystick_r_y
    :type cl:float
    :initform 0.0)
   (joystick_l_y
    :reader joystick_l_y
    :initarg :joystick_l_y
    :type cl:float
    :initform 0.0)
   (joystick_l_x
    :reader joystick_l_x
    :initarg :joystick_l_x
    :type cl:float
    :initform 0.0)
   (mode_switch
    :reader mode_switch
    :initarg :mode_switch
    :type cl:fixnum
    :initform 0)
   (pause_button
    :reader pause_button
    :initarg :pause_button
    :type cl:boolean
    :initform cl:nil)
   (custom_button_l
    :reader custom_button_l
    :initarg :custom_button_l
    :type cl:boolean
    :initform cl:nil)
   (custom_button_r
    :reader custom_button_r
    :initarg :custom_button_r
    :type cl:boolean
    :initform cl:nil)
   (wheel
    :reader wheel
    :initarg :wheel
    :type cl:float
    :initform 0.0)
   (trigger
    :reader trigger
    :initarg :trigger
    :type cl:boolean
    :initform cl:nil)
   (mouse_x
    :reader mouse_x
    :initarg :mouse_x
    :type cl:fixnum
    :initform 0)
   (mouse_y
    :reader mouse_y
    :initarg :mouse_y
    :type cl:fixnum
    :initform 0)
   (mouse_wheel
    :reader mouse_wheel
    :initarg :mouse_wheel
    :type cl:fixnum
    :initform 0)
   (mouse_left_down
    :reader mouse_left_down
    :initarg :mouse_left_down
    :type cl:boolean
    :initform cl:nil)
   (mouse_right_down
    :reader mouse_right_down
    :initarg :mouse_right_down
    :type cl:boolean
    :initform cl:nil)
   (mouse_mid_down
    :reader mouse_mid_down
    :initarg :mouse_mid_down
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

(cl:defclass VTReceiverControlData (<VTReceiverControlData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VTReceiverControlData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VTReceiverControlData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<VTReceiverControlData> is deprecated: use rm_msgs-msg:VTReceiverControlData instead.")))

(cl:ensure-generic-function 'joystick_r_x-val :lambda-list '(m))
(cl:defmethod joystick_r_x-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_r_x-val is deprecated.  Use rm_msgs-msg:joystick_r_x instead.")
  (joystick_r_x m))

(cl:ensure-generic-function 'joystick_r_y-val :lambda-list '(m))
(cl:defmethod joystick_r_y-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_r_y-val is deprecated.  Use rm_msgs-msg:joystick_r_y instead.")
  (joystick_r_y m))

(cl:ensure-generic-function 'joystick_l_y-val :lambda-list '(m))
(cl:defmethod joystick_l_y-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_l_y-val is deprecated.  Use rm_msgs-msg:joystick_l_y instead.")
  (joystick_l_y m))

(cl:ensure-generic-function 'joystick_l_x-val :lambda-list '(m))
(cl:defmethod joystick_l_x-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_l_x-val is deprecated.  Use rm_msgs-msg:joystick_l_x instead.")
  (joystick_l_x m))

(cl:ensure-generic-function 'mode_switch-val :lambda-list '(m))
(cl:defmethod mode_switch-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mode_switch-val is deprecated.  Use rm_msgs-msg:mode_switch instead.")
  (mode_switch m))

(cl:ensure-generic-function 'pause_button-val :lambda-list '(m))
(cl:defmethod pause_button-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:pause_button-val is deprecated.  Use rm_msgs-msg:pause_button instead.")
  (pause_button m))

(cl:ensure-generic-function 'custom_button_l-val :lambda-list '(m))
(cl:defmethod custom_button_l-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:custom_button_l-val is deprecated.  Use rm_msgs-msg:custom_button_l instead.")
  (custom_button_l m))

(cl:ensure-generic-function 'custom_button_r-val :lambda-list '(m))
(cl:defmethod custom_button_r-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:custom_button_r-val is deprecated.  Use rm_msgs-msg:custom_button_r instead.")
  (custom_button_r m))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wheel-val is deprecated.  Use rm_msgs-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'trigger-val :lambda-list '(m))
(cl:defmethod trigger-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:trigger-val is deprecated.  Use rm_msgs-msg:trigger instead.")
  (trigger m))

(cl:ensure-generic-function 'mouse_x-val :lambda-list '(m))
(cl:defmethod mouse_x-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_x-val is deprecated.  Use rm_msgs-msg:mouse_x instead.")
  (mouse_x m))

(cl:ensure-generic-function 'mouse_y-val :lambda-list '(m))
(cl:defmethod mouse_y-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_y-val is deprecated.  Use rm_msgs-msg:mouse_y instead.")
  (mouse_y m))

(cl:ensure-generic-function 'mouse_wheel-val :lambda-list '(m))
(cl:defmethod mouse_wheel-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_wheel-val is deprecated.  Use rm_msgs-msg:mouse_wheel instead.")
  (mouse_wheel m))

(cl:ensure-generic-function 'mouse_left_down-val :lambda-list '(m))
(cl:defmethod mouse_left_down-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_left_down-val is deprecated.  Use rm_msgs-msg:mouse_left_down instead.")
  (mouse_left_down m))

(cl:ensure-generic-function 'mouse_right_down-val :lambda-list '(m))
(cl:defmethod mouse_right_down-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_right_down-val is deprecated.  Use rm_msgs-msg:mouse_right_down instead.")
  (mouse_right_down m))

(cl:ensure-generic-function 'mouse_mid_down-val :lambda-list '(m))
(cl:defmethod mouse_mid_down-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mouse_mid_down-val is deprecated.  Use rm_msgs-msg:mouse_mid_down instead.")
  (mouse_mid_down m))

(cl:ensure-generic-function 'key_w-val :lambda-list '(m))
(cl:defmethod key_w-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_w-val is deprecated.  Use rm_msgs-msg:key_w instead.")
  (key_w m))

(cl:ensure-generic-function 'key_s-val :lambda-list '(m))
(cl:defmethod key_s-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_s-val is deprecated.  Use rm_msgs-msg:key_s instead.")
  (key_s m))

(cl:ensure-generic-function 'key_a-val :lambda-list '(m))
(cl:defmethod key_a-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_a-val is deprecated.  Use rm_msgs-msg:key_a instead.")
  (key_a m))

(cl:ensure-generic-function 'key_d-val :lambda-list '(m))
(cl:defmethod key_d-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_d-val is deprecated.  Use rm_msgs-msg:key_d instead.")
  (key_d m))

(cl:ensure-generic-function 'key_shift-val :lambda-list '(m))
(cl:defmethod key_shift-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_shift-val is deprecated.  Use rm_msgs-msg:key_shift instead.")
  (key_shift m))

(cl:ensure-generic-function 'key_ctrl-val :lambda-list '(m))
(cl:defmethod key_ctrl-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_ctrl-val is deprecated.  Use rm_msgs-msg:key_ctrl instead.")
  (key_ctrl m))

(cl:ensure-generic-function 'key_q-val :lambda-list '(m))
(cl:defmethod key_q-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_q-val is deprecated.  Use rm_msgs-msg:key_q instead.")
  (key_q m))

(cl:ensure-generic-function 'key_e-val :lambda-list '(m))
(cl:defmethod key_e-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_e-val is deprecated.  Use rm_msgs-msg:key_e instead.")
  (key_e m))

(cl:ensure-generic-function 'key_r-val :lambda-list '(m))
(cl:defmethod key_r-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_r-val is deprecated.  Use rm_msgs-msg:key_r instead.")
  (key_r m))

(cl:ensure-generic-function 'key_f-val :lambda-list '(m))
(cl:defmethod key_f-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_f-val is deprecated.  Use rm_msgs-msg:key_f instead.")
  (key_f m))

(cl:ensure-generic-function 'key_g-val :lambda-list '(m))
(cl:defmethod key_g-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_g-val is deprecated.  Use rm_msgs-msg:key_g instead.")
  (key_g m))

(cl:ensure-generic-function 'key_z-val :lambda-list '(m))
(cl:defmethod key_z-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_z-val is deprecated.  Use rm_msgs-msg:key_z instead.")
  (key_z m))

(cl:ensure-generic-function 'key_x-val :lambda-list '(m))
(cl:defmethod key_x-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_x-val is deprecated.  Use rm_msgs-msg:key_x instead.")
  (key_x m))

(cl:ensure-generic-function 'key_c-val :lambda-list '(m))
(cl:defmethod key_c-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_c-val is deprecated.  Use rm_msgs-msg:key_c instead.")
  (key_c m))

(cl:ensure-generic-function 'key_v-val :lambda-list '(m))
(cl:defmethod key_v-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_v-val is deprecated.  Use rm_msgs-msg:key_v instead.")
  (key_v m))

(cl:ensure-generic-function 'key_b-val :lambda-list '(m))
(cl:defmethod key_b-val ((m <VTReceiverControlData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_b-val is deprecated.  Use rm_msgs-msg:key_b instead.")
  (key_b m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VTReceiverControlData>)))
    "Constants for message type '<VTReceiverControlData>"
  '((:MODE_C . 0)
    (:MODE_N . 1)
    (:MODE_S . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VTReceiverControlData)))
    "Constants for message type 'VTReceiverControlData"
  '((:MODE_C . 0)
    (:MODE_N . 1)
    (:MODE_S . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VTReceiverControlData>) ostream)
  "Serializes a message object of type '<VTReceiverControlData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joystick_r_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joystick_r_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joystick_l_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'joystick_l_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_switch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pause_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'custom_button_l) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'custom_button_r) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'trigger) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'mouse_x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'mouse_wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mouse_left_down) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mouse_right_down) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mouse_mid_down) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VTReceiverControlData>) istream)
  "Deserializes a message object of type '<VTReceiverControlData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joystick_r_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joystick_r_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joystick_l_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'joystick_l_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode_switch)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pause_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'custom_button_l) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'custom_button_r) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'trigger) (cl:not (cl:zerop (cl:read-byte istream))))
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
      (cl:setf (cl:slot-value msg 'mouse_wheel) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:slot-value msg 'mouse_left_down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mouse_right_down) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mouse_mid_down) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VTReceiverControlData>)))
  "Returns string type for a message object of type '<VTReceiverControlData>"
  "rm_msgs/VTReceiverControlData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VTReceiverControlData)))
  "Returns string type for a message object of type 'VTReceiverControlData"
  "rm_msgs/VTReceiverControlData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VTReceiverControlData>)))
  "Returns md5sum for a message object of type '<VTReceiverControlData>"
  "ccb3d14b76ed93d4c7a7597427ff5b6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VTReceiverControlData)))
  "Returns md5sum for a message object of type 'VTReceiverControlData"
  "ccb3d14b76ed93d4c7a7597427ff5b6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VTReceiverControlData>)))
  "Returns full string definition for message of type '<VTReceiverControlData>"
  (cl:format cl:nil "float64 joystick_r_x~%float64 joystick_r_y~%float64 joystick_l_y~%float64 joystick_l_x~%~%uint8 mode_switch~%uint8 MODE_C = 0~%uint8 MODE_N = 1~%uint8 MODE_S = 2~%~%bool pause_button~%bool custom_button_l~%bool custom_button_r~%float64 wheel~%bool trigger~%~%int16 mouse_x~%int16 mouse_y~%int16 mouse_wheel~%bool mouse_left_down~%bool mouse_right_down~%bool mouse_mid_down~%~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VTReceiverControlData)))
  "Returns full string definition for message of type 'VTReceiverControlData"
  (cl:format cl:nil "float64 joystick_r_x~%float64 joystick_r_y~%float64 joystick_l_y~%float64 joystick_l_x~%~%uint8 mode_switch~%uint8 MODE_C = 0~%uint8 MODE_N = 1~%uint8 MODE_S = 2~%~%bool pause_button~%bool custom_button_l~%bool custom_button_r~%float64 wheel~%bool trigger~%~%int16 mouse_x~%int16 mouse_y~%int16 mouse_wheel~%bool mouse_left_down~%bool mouse_right_down~%bool mouse_mid_down~%~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VTReceiverControlData>))
  (cl:+ 0
     8
     8
     8
     8
     1
     1
     1
     1
     8
     1
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
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VTReceiverControlData>))
  "Converts a ROS message object to a list"
  (cl:list 'VTReceiverControlData
    (cl:cons ':joystick_r_x (joystick_r_x msg))
    (cl:cons ':joystick_r_y (joystick_r_y msg))
    (cl:cons ':joystick_l_y (joystick_l_y msg))
    (cl:cons ':joystick_l_x (joystick_l_x msg))
    (cl:cons ':mode_switch (mode_switch msg))
    (cl:cons ':pause_button (pause_button msg))
    (cl:cons ':custom_button_l (custom_button_l msg))
    (cl:cons ':custom_button_r (custom_button_r msg))
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':trigger (trigger msg))
    (cl:cons ':mouse_x (mouse_x msg))
    (cl:cons ':mouse_y (mouse_y msg))
    (cl:cons ':mouse_wheel (mouse_wheel msg))
    (cl:cons ':mouse_left_down (mouse_left_down msg))
    (cl:cons ':mouse_right_down (mouse_right_down msg))
    (cl:cons ':mouse_mid_down (mouse_mid_down msg))
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
