; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PowerManagementUnknownExceptionData.msg.html

(cl:defclass <PowerManagementUnknownExceptionData> (roslisp-msg-protocol:ros-message)
  ((abnormal_reset_reason
    :reader abnormal_reset_reason
    :initarg :abnormal_reset_reason
    :type cl:fixnum
    :initform 0)
   (state_machine_before_reset_mode
    :reader state_machine_before_reset_mode
    :initarg :state_machine_before_reset_mode
    :type cl:fixnum
    :initform 0)
   (power_management_before_reset_topology
    :reader power_management_before_reset_topology
    :initarg :power_management_before_reset_topology
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PowerManagementUnknownExceptionData (<PowerManagementUnknownExceptionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerManagementUnknownExceptionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerManagementUnknownExceptionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PowerManagementUnknownExceptionData> is deprecated: use rm_msgs-msg:PowerManagementUnknownExceptionData instead.")))

(cl:ensure-generic-function 'abnormal_reset_reason-val :lambda-list '(m))
(cl:defmethod abnormal_reset_reason-val ((m <PowerManagementUnknownExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:abnormal_reset_reason-val is deprecated.  Use rm_msgs-msg:abnormal_reset_reason instead.")
  (abnormal_reset_reason m))

(cl:ensure-generic-function 'state_machine_before_reset_mode-val :lambda-list '(m))
(cl:defmethod state_machine_before_reset_mode-val ((m <PowerManagementUnknownExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state_machine_before_reset_mode-val is deprecated.  Use rm_msgs-msg:state_machine_before_reset_mode instead.")
  (state_machine_before_reset_mode m))

(cl:ensure-generic-function 'power_management_before_reset_topology-val :lambda-list '(m))
(cl:defmethod power_management_before_reset_topology-val ((m <PowerManagementUnknownExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_management_before_reset_topology-val is deprecated.  Use rm_msgs-msg:power_management_before_reset_topology instead.")
  (power_management_before_reset_topology m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PowerManagementUnknownExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerManagementUnknownExceptionData>) ostream)
  "Serializes a message object of type '<PowerManagementUnknownExceptionData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abnormal_reset_reason)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_machine_before_reset_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_before_reset_topology)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerManagementUnknownExceptionData>) istream)
  "Deserializes a message object of type '<PowerManagementUnknownExceptionData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'abnormal_reset_reason)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_machine_before_reset_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_before_reset_topology)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerManagementUnknownExceptionData>)))
  "Returns string type for a message object of type '<PowerManagementUnknownExceptionData>"
  "rm_msgs/PowerManagementUnknownExceptionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerManagementUnknownExceptionData)))
  "Returns string type for a message object of type 'PowerManagementUnknownExceptionData"
  "rm_msgs/PowerManagementUnknownExceptionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerManagementUnknownExceptionData>)))
  "Returns md5sum for a message object of type '<PowerManagementUnknownExceptionData>"
  "fe5796a7df8d9f8ea5253e8284933a59")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerManagementUnknownExceptionData)))
  "Returns md5sum for a message object of type 'PowerManagementUnknownExceptionData"
  "fe5796a7df8d9f8ea5253e8284933a59")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerManagementUnknownExceptionData>)))
  "Returns full string definition for message of type '<PowerManagementUnknownExceptionData>"
  (cl:format cl:nil "uint8 abnormal_reset_reason~%uint8 state_machine_before_reset_mode~%uint8 power_management_before_reset_topology~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerManagementUnknownExceptionData)))
  "Returns full string definition for message of type 'PowerManagementUnknownExceptionData"
  (cl:format cl:nil "uint8 abnormal_reset_reason~%uint8 state_machine_before_reset_mode~%uint8 power_management_before_reset_topology~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerManagementUnknownExceptionData>))
  (cl:+ 0
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerManagementUnknownExceptionData>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerManagementUnknownExceptionData
    (cl:cons ':abnormal_reset_reason (abnormal_reset_reason msg))
    (cl:cons ':state_machine_before_reset_mode (state_machine_before_reset_mode msg))
    (cl:cons ':power_management_before_reset_topology (power_management_before_reset_topology msg))
    (cl:cons ':stamp (stamp msg))
))
