; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude EngineerUi.msg.html

(cl:defclass <EngineerUi> (roslisp-msg-protocol:ros-message)
  ((control_mode
    :reader control_mode
    :initarg :control_mode
    :type cl:string
    :initform "")
   (gripper_state
    :reader gripper_state
    :initarg :gripper_state
    :type cl:string
    :initform "")
   (ex_arm_state
    :reader ex_arm_state
    :initarg :ex_arm_state
    :type cl:string
    :initform "")
   (stone_num
    :reader stone_num
    :initarg :stone_num
    :type cl:integer
    :initform 0)
   (step_queue_name
    :reader step_queue_name
    :initarg :step_queue_name
    :type cl:string
    :initform "")
   (symbol
    :reader symbol
    :initarg :symbol
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass EngineerUi (<EngineerUi>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EngineerUi>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EngineerUi)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<EngineerUi> is deprecated: use rm_msgs-msg:EngineerUi instead.")))

(cl:ensure-generic-function 'control_mode-val :lambda-list '(m))
(cl:defmethod control_mode-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:control_mode-val is deprecated.  Use rm_msgs-msg:control_mode instead.")
  (control_mode m))

(cl:ensure-generic-function 'gripper_state-val :lambda-list '(m))
(cl:defmethod gripper_state-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:gripper_state-val is deprecated.  Use rm_msgs-msg:gripper_state instead.")
  (gripper_state m))

(cl:ensure-generic-function 'ex_arm_state-val :lambda-list '(m))
(cl:defmethod ex_arm_state-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:ex_arm_state-val is deprecated.  Use rm_msgs-msg:ex_arm_state instead.")
  (ex_arm_state m))

(cl:ensure-generic-function 'stone_num-val :lambda-list '(m))
(cl:defmethod stone_num-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stone_num-val is deprecated.  Use rm_msgs-msg:stone_num instead.")
  (stone_num m))

(cl:ensure-generic-function 'step_queue_name-val :lambda-list '(m))
(cl:defmethod step_queue_name-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:step_queue_name-val is deprecated.  Use rm_msgs-msg:step_queue_name instead.")
  (step_queue_name m))

(cl:ensure-generic-function 'symbol-val :lambda-list '(m))
(cl:defmethod symbol-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:symbol-val is deprecated.  Use rm_msgs-msg:symbol instead.")
  (symbol m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <EngineerUi>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EngineerUi>) ostream)
  "Serializes a message object of type '<EngineerUi>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'control_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'control_mode))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gripper_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gripper_state))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ex_arm_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ex_arm_state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stone_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stone_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stone_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stone_num)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'step_queue_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'step_queue_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'symbol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'symbol)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'symbol)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EngineerUi>) istream)
  "Deserializes a message object of type '<EngineerUi>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'control_mode) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'control_mode) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gripper_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gripper_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ex_arm_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ex_arm_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stone_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'stone_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'stone_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'stone_num)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step_queue_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'step_queue_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'symbol)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EngineerUi>)))
  "Returns string type for a message object of type '<EngineerUi>"
  "rm_msgs/EngineerUi")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EngineerUi)))
  "Returns string type for a message object of type 'EngineerUi"
  "rm_msgs/EngineerUi")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EngineerUi>)))
  "Returns md5sum for a message object of type '<EngineerUi>"
  "d63975e3d07f2008b665b034a02c094f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EngineerUi)))
  "Returns md5sum for a message object of type 'EngineerUi"
  "d63975e3d07f2008b665b034a02c094f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EngineerUi>)))
  "Returns full string definition for message of type '<EngineerUi>"
  (cl:format cl:nil "string control_mode~%string gripper_state~%string ex_arm_state~%uint32 stone_num~%~%string step_queue_name~%uint32 symbol~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EngineerUi)))
  "Returns full string definition for message of type 'EngineerUi"
  (cl:format cl:nil "string control_mode~%string gripper_state~%string ex_arm_state~%uint32 stone_num~%~%string step_queue_name~%uint32 symbol~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EngineerUi>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'control_mode))
     4 (cl:length (cl:slot-value msg 'gripper_state))
     4 (cl:length (cl:slot-value msg 'ex_arm_state))
     4
     4 (cl:length (cl:slot-value msg 'step_queue_name))
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EngineerUi>))
  "Converts a ROS message object to a list"
  (cl:list 'EngineerUi
    (cl:cons ':control_mode (control_mode msg))
    (cl:cons ':gripper_state (gripper_state msg))
    (cl:cons ':ex_arm_state (ex_arm_state msg))
    (cl:cons ':stone_num (stone_num msg))
    (cl:cons ':step_queue_name (step_queue_name msg))
    (cl:cons ':symbol (symbol msg))
    (cl:cons ':stamp (stamp msg))
))
