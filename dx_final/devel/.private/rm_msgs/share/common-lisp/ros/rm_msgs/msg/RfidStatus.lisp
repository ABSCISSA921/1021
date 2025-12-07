; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RfidStatus.msg.html

(cl:defclass <RfidStatus> (roslisp-msg-protocol:ros-message)
  ((base_buff_point_state
    :reader base_buff_point_state
    :initarg :base_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (own_central_elevated_ground_state
    :reader own_central_elevated_ground_state
    :initarg :own_central_elevated_ground_state
    :type cl:boolean
    :initform cl:nil)
   (enemy_central_elevated_ground_state
    :reader enemy_central_elevated_ground_state
    :initarg :enemy_central_elevated_ground_state
    :type cl:boolean
    :initform cl:nil)
   (own_trapezoidal_elevated_ground_state
    :reader own_trapezoidal_elevated_ground_state
    :initarg :own_trapezoidal_elevated_ground_state
    :type cl:boolean
    :initform cl:nil)
   (enemy_trapezoidal_elevated_ground_state
    :reader enemy_trapezoidal_elevated_ground_state
    :initarg :enemy_trapezoidal_elevated_ground_state
    :type cl:boolean
    :initform cl:nil)
   (forward_own_terrain_span_buff_point_state
    :reader forward_own_terrain_span_buff_point_state
    :initarg :forward_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (behind_own_terrain_span_buff_point_state
    :reader behind_own_terrain_span_buff_point_state
    :initarg :behind_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (forward_enemy_terrain_span_buff_point_state
    :reader forward_enemy_terrain_span_buff_point_state
    :initarg :forward_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (behind_enemy_terrain_span_buff_point_state
    :reader behind_enemy_terrain_span_buff_point_state
    :initarg :behind_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (below_central_own_terrain_span_buff_point_state
    :reader below_central_own_terrain_span_buff_point_state
    :initarg :below_central_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (upper_central_own_terrain_span_buff_point_state
    :reader upper_central_own_terrain_span_buff_point_state
    :initarg :upper_central_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (below_central_enemy_terrain_span_buff_point_state
    :reader below_central_enemy_terrain_span_buff_point_state
    :initarg :below_central_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (upper_central_enemy_terrain_span_buff_point_state
    :reader upper_central_enemy_terrain_span_buff_point_state
    :initarg :upper_central_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (below_road_own_terrain_span_buff_point_state
    :reader below_road_own_terrain_span_buff_point_state
    :initarg :below_road_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (upper_road_own_terrain_span_buff_point_state
    :reader upper_road_own_terrain_span_buff_point_state
    :initarg :upper_road_own_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (below_road_enemy_terrain_span_buff_point_state
    :reader below_road_enemy_terrain_span_buff_point_state
    :initarg :below_road_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (upper_road_enemy_terrain_span_buff_point_state
    :reader upper_road_enemy_terrain_span_buff_point_state
    :initarg :upper_road_enemy_terrain_span_buff_point_state
    :type cl:boolean
    :initform cl:nil)
   (own_fort_buff_point
    :reader own_fort_buff_point
    :initarg :own_fort_buff_point
    :type cl:boolean
    :initform cl:nil)
   (own_outpost_buff_point
    :reader own_outpost_buff_point
    :initarg :own_outpost_buff_point
    :type cl:boolean
    :initform cl:nil)
   (nan_overlapping_supplier_zone
    :reader nan_overlapping_supplier_zone
    :initarg :nan_overlapping_supplier_zone
    :type cl:boolean
    :initform cl:nil)
   (overlapping_supplier_zone
    :reader overlapping_supplier_zone
    :initarg :overlapping_supplier_zone
    :type cl:boolean
    :initform cl:nil)
   (own_large_resource_island_point
    :reader own_large_resource_island_point
    :initarg :own_large_resource_island_point
    :type cl:boolean
    :initform cl:nil)
   (enemy_large_resource_island_point
    :reader enemy_large_resource_island_point
    :initarg :enemy_large_resource_island_point
    :type cl:boolean
    :initform cl:nil)
   (central_buff_point
    :reader central_buff_point
    :initarg :central_buff_point
    :type cl:boolean
    :initform cl:nil)
   (enemy_fortress_buff_point
    :reader enemy_fortress_buff_point
    :initarg :enemy_fortress_buff_point
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass RfidStatus (<RfidStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RfidStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RfidStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RfidStatus> is deprecated: use rm_msgs-msg:RfidStatus instead.")))

(cl:ensure-generic-function 'base_buff_point_state-val :lambda-list '(m))
(cl:defmethod base_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:base_buff_point_state-val is deprecated.  Use rm_msgs-msg:base_buff_point_state instead.")
  (base_buff_point_state m))

(cl:ensure-generic-function 'own_central_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod own_central_elevated_ground_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_central_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:own_central_elevated_ground_state instead.")
  (own_central_elevated_ground_state m))

(cl:ensure-generic-function 'enemy_central_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod enemy_central_elevated_ground_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_central_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:enemy_central_elevated_ground_state instead.")
  (enemy_central_elevated_ground_state m))

(cl:ensure-generic-function 'own_trapezoidal_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod own_trapezoidal_elevated_ground_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_trapezoidal_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:own_trapezoidal_elevated_ground_state instead.")
  (own_trapezoidal_elevated_ground_state m))

(cl:ensure-generic-function 'enemy_trapezoidal_elevated_ground_state-val :lambda-list '(m))
(cl:defmethod enemy_trapezoidal_elevated_ground_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_trapezoidal_elevated_ground_state-val is deprecated.  Use rm_msgs-msg:enemy_trapezoidal_elevated_ground_state instead.")
  (enemy_trapezoidal_elevated_ground_state m))

(cl:ensure-generic-function 'forward_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod forward_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:forward_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:forward_own_terrain_span_buff_point_state instead.")
  (forward_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'behind_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod behind_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:behind_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:behind_own_terrain_span_buff_point_state instead.")
  (behind_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'forward_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod forward_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:forward_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:forward_enemy_terrain_span_buff_point_state instead.")
  (forward_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'behind_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod behind_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:behind_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:behind_enemy_terrain_span_buff_point_state instead.")
  (behind_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'below_central_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod below_central_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:below_central_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:below_central_own_terrain_span_buff_point_state instead.")
  (below_central_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'upper_central_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod upper_central_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:upper_central_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:upper_central_own_terrain_span_buff_point_state instead.")
  (upper_central_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'below_central_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod below_central_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:below_central_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:below_central_enemy_terrain_span_buff_point_state instead.")
  (below_central_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'upper_central_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod upper_central_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:upper_central_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:upper_central_enemy_terrain_span_buff_point_state instead.")
  (upper_central_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'below_road_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod below_road_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:below_road_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:below_road_own_terrain_span_buff_point_state instead.")
  (below_road_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'upper_road_own_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod upper_road_own_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:upper_road_own_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:upper_road_own_terrain_span_buff_point_state instead.")
  (upper_road_own_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'below_road_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod below_road_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:below_road_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:below_road_enemy_terrain_span_buff_point_state instead.")
  (below_road_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'upper_road_enemy_terrain_span_buff_point_state-val :lambda-list '(m))
(cl:defmethod upper_road_enemy_terrain_span_buff_point_state-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:upper_road_enemy_terrain_span_buff_point_state-val is deprecated.  Use rm_msgs-msg:upper_road_enemy_terrain_span_buff_point_state instead.")
  (upper_road_enemy_terrain_span_buff_point_state m))

(cl:ensure-generic-function 'own_fort_buff_point-val :lambda-list '(m))
(cl:defmethod own_fort_buff_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_fort_buff_point-val is deprecated.  Use rm_msgs-msg:own_fort_buff_point instead.")
  (own_fort_buff_point m))

(cl:ensure-generic-function 'own_outpost_buff_point-val :lambda-list '(m))
(cl:defmethod own_outpost_buff_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_outpost_buff_point-val is deprecated.  Use rm_msgs-msg:own_outpost_buff_point instead.")
  (own_outpost_buff_point m))

(cl:ensure-generic-function 'nan_overlapping_supplier_zone-val :lambda-list '(m))
(cl:defmethod nan_overlapping_supplier_zone-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:nan_overlapping_supplier_zone-val is deprecated.  Use rm_msgs-msg:nan_overlapping_supplier_zone instead.")
  (nan_overlapping_supplier_zone m))

(cl:ensure-generic-function 'overlapping_supplier_zone-val :lambda-list '(m))
(cl:defmethod overlapping_supplier_zone-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:overlapping_supplier_zone-val is deprecated.  Use rm_msgs-msg:overlapping_supplier_zone instead.")
  (overlapping_supplier_zone m))

(cl:ensure-generic-function 'own_large_resource_island_point-val :lambda-list '(m))
(cl:defmethod own_large_resource_island_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:own_large_resource_island_point-val is deprecated.  Use rm_msgs-msg:own_large_resource_island_point instead.")
  (own_large_resource_island_point m))

(cl:ensure-generic-function 'enemy_large_resource_island_point-val :lambda-list '(m))
(cl:defmethod enemy_large_resource_island_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_large_resource_island_point-val is deprecated.  Use rm_msgs-msg:enemy_large_resource_island_point instead.")
  (enemy_large_resource_island_point m))

(cl:ensure-generic-function 'central_buff_point-val :lambda-list '(m))
(cl:defmethod central_buff_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:central_buff_point-val is deprecated.  Use rm_msgs-msg:central_buff_point instead.")
  (central_buff_point m))

(cl:ensure-generic-function 'enemy_fortress_buff_point-val :lambda-list '(m))
(cl:defmethod enemy_fortress_buff_point-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:enemy_fortress_buff_point-val is deprecated.  Use rm_msgs-msg:enemy_fortress_buff_point instead.")
  (enemy_fortress_buff_point m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RfidStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RfidStatus>) ostream)
  "Serializes a message object of type '<RfidStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'base_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'own_central_elevated_ground_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_central_elevated_ground_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'own_trapezoidal_elevated_ground_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_trapezoidal_elevated_ground_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'behind_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'forward_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'behind_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'below_central_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'upper_central_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'below_central_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'upper_central_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'below_road_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'upper_road_own_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'below_road_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'upper_road_enemy_terrain_span_buff_point_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'own_fort_buff_point) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'own_outpost_buff_point) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'nan_overlapping_supplier_zone) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overlapping_supplier_zone) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'own_large_resource_island_point) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_large_resource_island_point) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'central_buff_point) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enemy_fortress_buff_point) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RfidStatus>) istream)
  "Deserializes a message object of type '<RfidStatus>"
    (cl:setf (cl:slot-value msg 'base_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'own_central_elevated_ground_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_central_elevated_ground_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'own_trapezoidal_elevated_ground_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_trapezoidal_elevated_ground_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'behind_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'forward_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'behind_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'below_central_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'upper_central_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'below_central_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'upper_central_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'below_road_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'upper_road_own_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'below_road_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'upper_road_enemy_terrain_span_buff_point_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'own_fort_buff_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'own_outpost_buff_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'nan_overlapping_supplier_zone) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overlapping_supplier_zone) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'own_large_resource_island_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_large_resource_island_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'central_buff_point) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'enemy_fortress_buff_point) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RfidStatus>)))
  "Returns string type for a message object of type '<RfidStatus>"
  "rm_msgs/RfidStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RfidStatus)))
  "Returns string type for a message object of type 'RfidStatus"
  "rm_msgs/RfidStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RfidStatus>)))
  "Returns md5sum for a message object of type '<RfidStatus>"
  "7a24d6646cadd38d0b3cc4cdc34de56b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RfidStatus)))
  "Returns md5sum for a message object of type 'RfidStatus"
  "7a24d6646cadd38d0b3cc4cdc34de56b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RfidStatus>)))
  "Returns full string definition for message of type '<RfidStatus>"
  (cl:format cl:nil "bool base_buff_point_state~%bool own_central_elevated_ground_state~%bool enemy_central_elevated_ground_state~%bool own_trapezoidal_elevated_ground_state~%bool enemy_trapezoidal_elevated_ground_state~%bool forward_own_terrain_span_buff_point_state~%bool behind_own_terrain_span_buff_point_state~%bool forward_enemy_terrain_span_buff_point_state~%bool behind_enemy_terrain_span_buff_point_state~%bool below_central_own_terrain_span_buff_point_state~%bool upper_central_own_terrain_span_buff_point_state~%bool below_central_enemy_terrain_span_buff_point_state~%bool upper_central_enemy_terrain_span_buff_point_state~%bool below_road_own_terrain_span_buff_point_state~%bool upper_road_own_terrain_span_buff_point_state~%bool below_road_enemy_terrain_span_buff_point_state~%bool upper_road_enemy_terrain_span_buff_point_state~%bool own_fort_buff_point~%bool own_outpost_buff_point~%bool nan_overlapping_supplier_zone~%bool overlapping_supplier_zone~%bool own_large_resource_island_point~%bool enemy_large_resource_island_point~%bool central_buff_point~%bool enemy_fortress_buff_point~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RfidStatus)))
  "Returns full string definition for message of type 'RfidStatus"
  (cl:format cl:nil "bool base_buff_point_state~%bool own_central_elevated_ground_state~%bool enemy_central_elevated_ground_state~%bool own_trapezoidal_elevated_ground_state~%bool enemy_trapezoidal_elevated_ground_state~%bool forward_own_terrain_span_buff_point_state~%bool behind_own_terrain_span_buff_point_state~%bool forward_enemy_terrain_span_buff_point_state~%bool behind_enemy_terrain_span_buff_point_state~%bool below_central_own_terrain_span_buff_point_state~%bool upper_central_own_terrain_span_buff_point_state~%bool below_central_enemy_terrain_span_buff_point_state~%bool upper_central_enemy_terrain_span_buff_point_state~%bool below_road_own_terrain_span_buff_point_state~%bool upper_road_own_terrain_span_buff_point_state~%bool below_road_enemy_terrain_span_buff_point_state~%bool upper_road_enemy_terrain_span_buff_point_state~%bool own_fort_buff_point~%bool own_outpost_buff_point~%bool nan_overlapping_supplier_zone~%bool overlapping_supplier_zone~%bool own_large_resource_island_point~%bool enemy_large_resource_island_point~%bool central_buff_point~%bool enemy_fortress_buff_point~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RfidStatus>))
  (cl:+ 0
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
     1
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RfidStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RfidStatus
    (cl:cons ':base_buff_point_state (base_buff_point_state msg))
    (cl:cons ':own_central_elevated_ground_state (own_central_elevated_ground_state msg))
    (cl:cons ':enemy_central_elevated_ground_state (enemy_central_elevated_ground_state msg))
    (cl:cons ':own_trapezoidal_elevated_ground_state (own_trapezoidal_elevated_ground_state msg))
    (cl:cons ':enemy_trapezoidal_elevated_ground_state (enemy_trapezoidal_elevated_ground_state msg))
    (cl:cons ':forward_own_terrain_span_buff_point_state (forward_own_terrain_span_buff_point_state msg))
    (cl:cons ':behind_own_terrain_span_buff_point_state (behind_own_terrain_span_buff_point_state msg))
    (cl:cons ':forward_enemy_terrain_span_buff_point_state (forward_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':behind_enemy_terrain_span_buff_point_state (behind_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':below_central_own_terrain_span_buff_point_state (below_central_own_terrain_span_buff_point_state msg))
    (cl:cons ':upper_central_own_terrain_span_buff_point_state (upper_central_own_terrain_span_buff_point_state msg))
    (cl:cons ':below_central_enemy_terrain_span_buff_point_state (below_central_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':upper_central_enemy_terrain_span_buff_point_state (upper_central_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':below_road_own_terrain_span_buff_point_state (below_road_own_terrain_span_buff_point_state msg))
    (cl:cons ':upper_road_own_terrain_span_buff_point_state (upper_road_own_terrain_span_buff_point_state msg))
    (cl:cons ':below_road_enemy_terrain_span_buff_point_state (below_road_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':upper_road_enemy_terrain_span_buff_point_state (upper_road_enemy_terrain_span_buff_point_state msg))
    (cl:cons ':own_fort_buff_point (own_fort_buff_point msg))
    (cl:cons ':own_outpost_buff_point (own_outpost_buff_point msg))
    (cl:cons ':nan_overlapping_supplier_zone (nan_overlapping_supplier_zone msg))
    (cl:cons ':overlapping_supplier_zone (overlapping_supplier_zone msg))
    (cl:cons ':own_large_resource_island_point (own_large_resource_island_point msg))
    (cl:cons ':enemy_large_resource_island_point (enemy_large_resource_island_point msg))
    (cl:cons ':central_buff_point (central_buff_point msg))
    (cl:cons ':enemy_fortress_buff_point (enemy_fortress_buff_point msg))
    (cl:cons ':stamp (stamp msg))
))
