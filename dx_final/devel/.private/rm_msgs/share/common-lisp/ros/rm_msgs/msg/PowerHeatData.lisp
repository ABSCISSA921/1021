; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PowerHeatData.msg.html

(cl:defclass <PowerHeatData> (roslisp-msg-protocol:ros-message)
  ((chassis_power_buffer
    :reader chassis_power_buffer
    :initarg :chassis_power_buffer
    :type cl:fixnum
    :initform 0)
   (shooter_id_1_17_mm_cooling_heat
    :reader shooter_id_1_17_mm_cooling_heat
    :initarg :shooter_id_1_17_mm_cooling_heat
    :type cl:fixnum
    :initform 0)
   (shooter_id_2_17_mm_cooling_heat
    :reader shooter_id_2_17_mm_cooling_heat
    :initarg :shooter_id_2_17_mm_cooling_heat
    :type cl:fixnum
    :initform 0)
   (shooter_id_1_42_mm_cooling_heat
    :reader shooter_id_1_42_mm_cooling_heat
    :initarg :shooter_id_1_42_mm_cooling_heat
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PowerHeatData (<PowerHeatData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerHeatData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerHeatData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PowerHeatData> is deprecated: use rm_msgs-msg:PowerHeatData instead.")))

(cl:ensure-generic-function 'chassis_power_buffer-val :lambda-list '(m))
(cl:defmethod chassis_power_buffer-val ((m <PowerHeatData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_power_buffer-val is deprecated.  Use rm_msgs-msg:chassis_power_buffer instead.")
  (chassis_power_buffer m))

(cl:ensure-generic-function 'shooter_id_1_17_mm_cooling_heat-val :lambda-list '(m))
(cl:defmethod shooter_id_1_17_mm_cooling_heat-val ((m <PowerHeatData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_id_1_17_mm_cooling_heat-val is deprecated.  Use rm_msgs-msg:shooter_id_1_17_mm_cooling_heat instead.")
  (shooter_id_1_17_mm_cooling_heat m))

(cl:ensure-generic-function 'shooter_id_2_17_mm_cooling_heat-val :lambda-list '(m))
(cl:defmethod shooter_id_2_17_mm_cooling_heat-val ((m <PowerHeatData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_id_2_17_mm_cooling_heat-val is deprecated.  Use rm_msgs-msg:shooter_id_2_17_mm_cooling_heat instead.")
  (shooter_id_2_17_mm_cooling_heat m))

(cl:ensure-generic-function 'shooter_id_1_42_mm_cooling_heat-val :lambda-list '(m))
(cl:defmethod shooter_id_1_42_mm_cooling_heat-val ((m <PowerHeatData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shooter_id_1_42_mm_cooling_heat-val is deprecated.  Use rm_msgs-msg:shooter_id_1_42_mm_cooling_heat instead.")
  (shooter_id_1_42_mm_cooling_heat m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PowerHeatData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerHeatData>) ostream)
  "Serializes a message object of type '<PowerHeatData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_buffer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_buffer)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_1_17_mm_cooling_heat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_1_17_mm_cooling_heat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_2_17_mm_cooling_heat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_2_17_mm_cooling_heat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_1_42_mm_cooling_heat)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_1_42_mm_cooling_heat)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerHeatData>) istream)
  "Deserializes a message object of type '<PowerHeatData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'chassis_power_buffer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'chassis_power_buffer)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_1_17_mm_cooling_heat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_1_17_mm_cooling_heat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_2_17_mm_cooling_heat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_2_17_mm_cooling_heat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shooter_id_1_42_mm_cooling_heat)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'shooter_id_1_42_mm_cooling_heat)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerHeatData>)))
  "Returns string type for a message object of type '<PowerHeatData>"
  "rm_msgs/PowerHeatData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerHeatData)))
  "Returns string type for a message object of type 'PowerHeatData"
  "rm_msgs/PowerHeatData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerHeatData>)))
  "Returns md5sum for a message object of type '<PowerHeatData>"
  "c7e940fe2053cdcb11e24654dabd707c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerHeatData)))
  "Returns md5sum for a message object of type 'PowerHeatData"
  "c7e940fe2053cdcb11e24654dabd707c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerHeatData>)))
  "Returns full string definition for message of type '<PowerHeatData>"
  (cl:format cl:nil "uint16 chassis_power_buffer~%uint16 shooter_id_1_17_mm_cooling_heat~%uint16 shooter_id_2_17_mm_cooling_heat~%uint16 shooter_id_1_42_mm_cooling_heat~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerHeatData)))
  "Returns full string definition for message of type 'PowerHeatData"
  (cl:format cl:nil "uint16 chassis_power_buffer~%uint16 shooter_id_1_17_mm_cooling_heat~%uint16 shooter_id_2_17_mm_cooling_heat~%uint16 shooter_id_1_42_mm_cooling_heat~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerHeatData>))
  (cl:+ 0
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerHeatData>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerHeatData
    (cl:cons ':chassis_power_buffer (chassis_power_buffer msg))
    (cl:cons ':shooter_id_1_17_mm_cooling_heat (shooter_id_1_17_mm_cooling_heat msg))
    (cl:cons ':shooter_id_2_17_mm_cooling_heat (shooter_id_2_17_mm_cooling_heat msg))
    (cl:cons ':shooter_id_1_42_mm_cooling_heat (shooter_id_1_42_mm_cooling_heat msg))
    (cl:cons ':stamp (stamp msg))
))
