; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude EventData.msg.html

(cl:defclass <EventData> (roslisp-msg-protocol:ros-message)
  ((overlapping_supply_station_state
    :reader overlapping_supply_station_state
    :initarg :overlapping_supply_station_state
    :type cl:boolean
    :initform cl:nil)
   (nan_overlapping_supply_station_state
    :reader nan_overlapping_supply_station_state
    :initarg :nan_overlapping_supply_station_state
    :type cl:boolean
    :initform cl:nil)
   (supplier_zone_state
    :reader supplier_zone_state
    :initarg :supplier_zone_state
    :type cl:boolean
    :initform cl:nil)
   (small_power_rune_state
    :reader small_power_rune_state
    :initarg :small_power_rune_state
    :type cl:boolean
    :initform cl:nil)
   (large_power_rune_state
    :reader large_power_rune_state
    :initarg :large_power_rune_state
    :type cl:boolean
    :initform cl:nil)
   (central_elevated_ground_state
    :reader central_elevated_ground_state
    :initarg :central_elevated_ground_state
    :type cl:fixnum
    :initform 0)
   (trapezoidal_elevated_ground_state
    :reader trapezoidal_elevated_ground_state
    :initarg :trapezoidal_elevated_ground_state
    :type cl:fixnum
    :initform 0)
   (be_hit_time
    :reader be_hit_time
    :initarg :be_hit_time
    :type cl:fixnum
    :initform 0)
   (be_hit_target
    :reader be_hit_target
    :initarg :be_hit_target
    :type cl:fixnum
    :initform 0)
   (central_point_state
    :reader central_point_state
    :initarg :central_point_state
    :type cl:fixnum
    :initform 0)
   (own_fortress_state
    :reader own_fortress_state
    :initarg :own_fortress_state
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass EventData (<EventData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EventData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EventData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<EventData> is deprecated: use rm_msgs-msg:EventData instead.")))

(cl:ensure-generic-function 'overlapping_supply_station_state-val :lambda-list '(m))
(cl:defmethod overlapping_supply_station_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:overlapping_supply_station_state-val is deprecated.  Use rm_msgs-msg:overlapping_supply_station_state instead.")
  (overlapping_supply_station_state m))

(cl:ensure-generic-function 'nan_overlapping_supply_station_state-val :lambda-list '(m))
(cl:defmethod nan_overlapping_supply_station_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:nan_overlapping_supply_station_state-val is deprecated.  Use rm_msgs-msg:nan_overlapping_supply_station_state instead.")
  (nan_overlapping_supply_station_state m))

(cl:ensure-generic-function 'supplier_zone_state-val :lambda-list '(m))
(cl:defmethod supplier_zone_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:supplier_zone_state-val is deprecated.  Use rm_msgs-msg:supplier_zone_state instead.")
  (supplier_zone_state m))

(cl:ensure-generic-function 'small_power_rune_state-val :lambda-list '(m))
(cl:defmethod small_power_rune_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:small_power_rune_state-val is deprecated.  Use rm_msgs-msg:small_power_rune_state instead.")
  (small_power_rune_state m))

(cl:ensure-generic-function 'large_power_rune_state-val :lambda-list '(m))
(cl:defmethod large_power_rune_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:large_power_rune_state-val is deprecated.  Use rm_msgs-msg:large_power_rune_state instead.")
  (large_power_rune_state m))

(cl:ensure-generic-function 'central_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod central_elevated_ground_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:central_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:central_elevated_ground_state instead.")
  (central_elevated_ground_state m))

(cl:ensure-generic-function 'trapezoidal_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod trapezoidal_elevated_ground_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:trapezoidal_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:trapezoidal_elevated_ground_state instead.")
  (trapezoidal_elevated_ground_state m))

(cl:ensure-generic-function 'be_hit_time-val :lambda-list '(m))
(cl:defmethod be_hit_time-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:be_hit_time-val is deprecated.  Use rm_msgs-msg:be_hit_time instead.")
  (be_hit_time m))

(cl:ensure-generic-function 'be_hit_target-val :lambda-list '(m))
(cl:defmethod be_hit_target-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:be_hit_target-val is deprecated.  Use rm_msgs-msg:be_hit_target instead.")
  (be_hit_target m))

(cl:ensure-generic-function 'central_point_state-val :lambda-list '(m))
(cl:defmethod central_point_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:central_point_state-val is deprecated.  Use rm_msgs-msg:central_point_state instead.")
  (central_point_state m))

(cl:ensure-generic-function 'own_fortress_state-val :lambda-list '(m))
(cl:defmethod own_fortress_state-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_fortress_state-val is deprecated.  Use rm_msgs-msg:own_fortress_state instead.")
  (own_fortress_state m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <EventData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EventData>) ostream)
  "Serializes a message object of type '<EventData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overlapping_supply_station_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nan_overlapping_supply_station_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'supplier_zone_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'small_power_rune_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'large_power_rune_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_elevated_ground_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trapezoidal_elevated_ground_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'be_hit_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'be_hit_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'be_hit_target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_point_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'own_fortress_state)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EventData>) istream)
  "Deserializes a message object of type '<EventData>"
    (cl:setf (cl:slot-value msg 'overlapping_supply_station_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'nan_overlapping_supply_station_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'supplier_zone_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'small_power_rune_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'large_power_rune_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_elevated_ground_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'trapezoidal_elevated_ground_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'be_hit_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'be_hit_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'be_hit_target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'central_point_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'own_fortress_state)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EventData>)))
  "Returns string type for a message object of type '<EventData>"
  "rm_msgs/EventData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EventData)))
  "Returns string type for a message object of type 'EventData"
  "rm_msgs/EventData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EventData>)))
  "Returns md5sum for a message object of type '<EventData>"
  "0e0fe7f33f8d70cbb516e24d1e30721c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EventData)))
  "Returns md5sum for a message object of type 'EventData"
  "0e0fe7f33f8d70cbb516e24d1e30721c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EventData>)))
  "Returns full string definition for message of type '<EventData>"
  (cl:format cl:nil "bool overlapping_supply_station_state~%bool nan_overlapping_supply_station_state~%bool supplier_zone_state~%bool small_power_rune_state~%bool large_power_rune_state~%uint8 central_elevated_ground_state~%uint8 trapezoidal_elevated_ground_state~%uint16 be_hit_time~%uint8 be_hit_target~%uint8 central_point_state~%uint8 own_fortress_state~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EventData)))
  "Returns full string definition for message of type 'EventData"
  (cl:format cl:nil "bool overlapping_supply_station_state~%bool nan_overlapping_supply_station_state~%bool supplier_zone_state~%bool small_power_rune_state~%bool large_power_rune_state~%uint8 central_elevated_ground_state~%uint8 trapezoidal_elevated_ground_state~%uint16 be_hit_time~%uint8 be_hit_target~%uint8 central_point_state~%uint8 own_fortress_state~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EventData>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     2
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EventData>))
  "Converts a ROS message object to a list"
  (cl:list 'EventData
    (cl:cons ':overlapping_supply_station_state (overlapping_supply_station_state msg))
    (cl:cons ':nan_overlapping_supply_station_state (nan_overlapping_supply_station_state msg))
    (cl:cons ':supplier_zone_state (supplier_zone_state msg))
    (cl:cons ':small_power_rune_state (small_power_rune_state msg))
    (cl:cons ':large_power_rune_state (large_power_rune_state msg))
    (cl:cons ':central_elevated_ground_state (central_elevated_ground_state msg))
    (cl:cons ':trapezoidal_elevated_ground_state (trapezoidal_elevated_ground_state msg))
    (cl:cons ':be_hit_time (be_hit_time msg))
    (cl:cons ':be_hit_target (be_hit_target msg))
    (cl:cons ':central_point_state (central_point_state msg))
    (cl:cons ':own_fortress_state (own_fortress_state msg))
    (cl:cons ':stamp (stamp msg))
))
