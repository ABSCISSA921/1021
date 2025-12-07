; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DbusData.msg.html

(cl:defclass <DbusData> (roslisp-msg-protocol:ros-message)
  ((ch_l_x
    :reader ch_l_x
    :initarg :ch_l_x
    :type cl:float
    :initform 0.0)
   (ch_l_y
    :reader ch_l_y
    :initarg :ch_l_y
    :type cl:float
    :initform 0.0)
   (ch_r_x
    :reader ch_r_x
    :initarg :ch_r_x
    :type cl:float
    :initform 0.0)
   (ch_r_y
    :reader ch_r_y
    :initarg :ch_r_y
    :type cl:float
    :initform 0.0)
   (s_l
    :reader s_l
    :initarg :s_l
    :type cl:fixnum
    :initform 0)
   (s_r
    :reader s_r
    :initarg :s_r
    :type cl:fixnum
    :initform 0)
   (wheel
    :reader wheel
    :initarg :wheel
    :type cl:float
    :initform 0.0)
   (m_x
    :reader m_x
    :initarg :m_x
    :type cl:float
    :initform 0.0)
   (m_y
    :reader m_y
    :initarg :m_y
    :type cl:float
    :initform 0.0)
   (m_z
    :reader m_z
    :initarg :m_z
    :type cl:float
    :initform 0.0)
   (p_l
    :reader p_l
    :initarg :p_l
    :type cl:boolean
    :initform cl:nil)
   (p_r
    :reader p_r
    :initarg :p_r
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
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DbusData (<DbusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DbusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DbusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DbusData> is deprecated: use rm_msgs-msg:DbusData instead.")))

(cl:ensure-generic-function 'ch_l_x-val :lambda-list '(m))
(cl:defmethod ch_l_x-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ch_l_x-val is deprecated.  Use rm_msgs-msg:ch_l_x instead.")
  (ch_l_x m))

(cl:ensure-generic-function 'ch_l_y-val :lambda-list '(m))
(cl:defmethod ch_l_y-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ch_l_y-val is deprecated.  Use rm_msgs-msg:ch_l_y instead.")
  (ch_l_y m))

(cl:ensure-generic-function 'ch_r_x-val :lambda-list '(m))
(cl:defmethod ch_r_x-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ch_r_x-val is deprecated.  Use rm_msgs-msg:ch_r_x instead.")
  (ch_r_x m))

(cl:ensure-generic-function 'ch_r_y-val :lambda-list '(m))
(cl:defmethod ch_r_y-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ch_r_y-val is deprecated.  Use rm_msgs-msg:ch_r_y instead.")
  (ch_r_y m))

(cl:ensure-generic-function 's_l-val :lambda-list '(m))
(cl:defmethod s_l-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:s_l-val is deprecated.  Use rm_msgs-msg:s_l instead.")
  (s_l m))

(cl:ensure-generic-function 's_r-val :lambda-list '(m))
(cl:defmethod s_r-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:s_r-val is deprecated.  Use rm_msgs-msg:s_r instead.")
  (s_r m))

(cl:ensure-generic-function 'wheel-val :lambda-list '(m))
(cl:defmethod wheel-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:wheel-val is deprecated.  Use rm_msgs-msg:wheel instead.")
  (wheel m))

(cl:ensure-generic-function 'm_x-val :lambda-list '(m))
(cl:defmethod m_x-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:m_x-val is deprecated.  Use rm_msgs-msg:m_x instead.")
  (m_x m))

(cl:ensure-generic-function 'm_y-val :lambda-list '(m))
(cl:defmethod m_y-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:m_y-val is deprecated.  Use rm_msgs-msg:m_y instead.")
  (m_y m))

(cl:ensure-generic-function 'm_z-val :lambda-list '(m))
(cl:defmethod m_z-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:m_z-val is deprecated.  Use rm_msgs-msg:m_z instead.")
  (m_z m))

(cl:ensure-generic-function 'p_l-val :lambda-list '(m))
(cl:defmethod p_l-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:p_l-val is deprecated.  Use rm_msgs-msg:p_l instead.")
  (p_l m))

(cl:ensure-generic-function 'p_r-val :lambda-list '(m))
(cl:defmethod p_r-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:p_r-val is deprecated.  Use rm_msgs-msg:p_r instead.")
  (p_r m))

(cl:ensure-generic-function 'key_w-val :lambda-list '(m))
(cl:defmethod key_w-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_w-val is deprecated.  Use rm_msgs-msg:key_w instead.")
  (key_w m))

(cl:ensure-generic-function 'key_s-val :lambda-list '(m))
(cl:defmethod key_s-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_s-val is deprecated.  Use rm_msgs-msg:key_s instead.")
  (key_s m))

(cl:ensure-generic-function 'key_a-val :lambda-list '(m))
(cl:defmethod key_a-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_a-val is deprecated.  Use rm_msgs-msg:key_a instead.")
  (key_a m))

(cl:ensure-generic-function 'key_d-val :lambda-list '(m))
(cl:defmethod key_d-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_d-val is deprecated.  Use rm_msgs-msg:key_d instead.")
  (key_d m))

(cl:ensure-generic-function 'key_shift-val :lambda-list '(m))
(cl:defmethod key_shift-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_shift-val is deprecated.  Use rm_msgs-msg:key_shift instead.")
  (key_shift m))

(cl:ensure-generic-function 'key_ctrl-val :lambda-list '(m))
(cl:defmethod key_ctrl-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_ctrl-val is deprecated.  Use rm_msgs-msg:key_ctrl instead.")
  (key_ctrl m))

(cl:ensure-generic-function 'key_q-val :lambda-list '(m))
(cl:defmethod key_q-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_q-val is deprecated.  Use rm_msgs-msg:key_q instead.")
  (key_q m))

(cl:ensure-generic-function 'key_e-val :lambda-list '(m))
(cl:defmethod key_e-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_e-val is deprecated.  Use rm_msgs-msg:key_e instead.")
  (key_e m))

(cl:ensure-generic-function 'key_r-val :lambda-list '(m))
(cl:defmethod key_r-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_r-val is deprecated.  Use rm_msgs-msg:key_r instead.")
  (key_r m))

(cl:ensure-generic-function 'key_f-val :lambda-list '(m))
(cl:defmethod key_f-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_f-val is deprecated.  Use rm_msgs-msg:key_f instead.")
  (key_f m))

(cl:ensure-generic-function 'key_g-val :lambda-list '(m))
(cl:defmethod key_g-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_g-val is deprecated.  Use rm_msgs-msg:key_g instead.")
  (key_g m))

(cl:ensure-generic-function 'key_z-val :lambda-list '(m))
(cl:defmethod key_z-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_z-val is deprecated.  Use rm_msgs-msg:key_z instead.")
  (key_z m))

(cl:ensure-generic-function 'key_x-val :lambda-list '(m))
(cl:defmethod key_x-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_x-val is deprecated.  Use rm_msgs-msg:key_x instead.")
  (key_x m))

(cl:ensure-generic-function 'key_c-val :lambda-list '(m))
(cl:defmethod key_c-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_c-val is deprecated.  Use rm_msgs-msg:key_c instead.")
  (key_c m))

(cl:ensure-generic-function 'key_v-val :lambda-list '(m))
(cl:defmethod key_v-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_v-val is deprecated.  Use rm_msgs-msg:key_v instead.")
  (key_v m))

(cl:ensure-generic-function 'key_b-val :lambda-list '(m))
(cl:defmethod key_b-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:key_b-val is deprecated.  Use rm_msgs-msg:key_b instead.")
  (key_b m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DbusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DbusData>)))
    "Constants for message type '<DbusData>"
  '((:UP . 1)
    (:DOWN . 2)
    (:MID . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DbusData)))
    "Constants for message type 'DbusData"
  '((:UP . 1)
    (:DOWN . 2)
    (:MID . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DbusData>) ostream)
  "Serializes a message object of type '<DbusData>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_l_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_l_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_r_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ch_r_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_l)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_r)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'm_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'p_l) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'p_r) 1 0)) ostream)
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
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DbusData>) istream)
  "Deserializes a message object of type '<DbusData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_l_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_l_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_r_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ch_r_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_l)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 's_r)) (cl:read-byte istream))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_y) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'm_z) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:slot-value msg 'p_l) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'p_r) (cl:not (cl:zerop (cl:read-byte istream))))
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
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DbusData>)))
  "Returns string type for a message object of type '<DbusData>"
  "rm_msgs/DbusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DbusData)))
  "Returns string type for a message object of type 'DbusData"
  "rm_msgs/DbusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DbusData>)))
  "Returns md5sum for a message object of type '<DbusData>"
  "0220a682827f4bc1471e95e351489508")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DbusData)))
  "Returns md5sum for a message object of type 'DbusData"
  "0220a682827f4bc1471e95e351489508")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DbusData>)))
  "Returns full string definition for message of type '<DbusData>"
  (cl:format cl:nil "uint8 UP = 1~%uint8 DOWN = 2~%uint8 MID = 3~%~%float64 ch_l_x~%float64 ch_l_y~%float64 ch_r_x~%float64 ch_r_y~%~%uint8 s_l~%uint8 s_r~%float64 wheel~%#mouse~%float64 m_x~%float64 m_y~%float64 m_z~%bool p_l~%bool p_r~%#key board~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DbusData)))
  "Returns full string definition for message of type 'DbusData"
  (cl:format cl:nil "uint8 UP = 1~%uint8 DOWN = 2~%uint8 MID = 3~%~%float64 ch_l_x~%float64 ch_l_y~%float64 ch_r_x~%float64 ch_r_y~%~%uint8 s_l~%uint8 s_r~%float64 wheel~%#mouse~%float64 m_x~%float64 m_y~%float64 m_z~%bool p_l~%bool p_r~%#key board~%bool key_w~%bool key_s~%bool key_a~%bool key_d~%bool key_shift~%bool key_ctrl~%bool key_q~%bool key_e~%bool key_r~%bool key_f~%bool key_g~%bool key_z~%bool key_x~%bool key_c~%bool key_v~%bool key_b~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DbusData>))
  (cl:+ 0
     8
     8
     8
     8
     1
     1
     8
     8
     8
     8
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
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DbusData>))
  "Converts a ROS message object to a list"
  (cl:list 'DbusData
    (cl:cons ':ch_l_x (ch_l_x msg))
    (cl:cons ':ch_l_y (ch_l_y msg))
    (cl:cons ':ch_r_x (ch_r_x msg))
    (cl:cons ':ch_r_y (ch_r_y msg))
    (cl:cons ':s_l (s_l msg))
    (cl:cons ':s_r (s_r msg))
    (cl:cons ':wheel (wheel msg))
    (cl:cons ':m_x (m_x msg))
    (cl:cons ':m_y (m_y msg))
    (cl:cons ':m_z (m_z msg))
    (cl:cons ':p_l (p_l msg))
    (cl:cons ':p_r (p_r msg))
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
    (cl:cons ':stamp (stamp msg))
))
