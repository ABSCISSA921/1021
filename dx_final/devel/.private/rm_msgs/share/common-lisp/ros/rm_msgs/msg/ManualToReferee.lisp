; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ManualToReferee.msg.html

(cl:defclass <ManualToReferee> (roslisp-msg-protocol:ros-message)
  ((power_limit_state
    :reader power_limit_state
    :initarg :power_limit_state
    :type cl:fixnum
    :initform 0)
   (start_burst_time
    :reader start_burst_time
    :initarg :start_burst_time
    :type cl:real
    :initform 0)
   (shoot_frequency
    :reader shoot_frequency
    :initarg :shoot_frequency
    :type cl:fixnum
    :initform 0)
   (cover_state
    :reader cover_state
    :initarg :cover_state
    :type cl:boolean
    :initform cl:nil)
   (gimbal_eject
    :reader gimbal_eject
    :initarg :gimbal_eject
    :type cl:boolean
    :initform cl:nil)
   (hero_eject_flag
    :reader hero_eject_flag
    :initarg :hero_eject_flag
    :type cl:boolean
    :initform cl:nil)
   (engineer_calibration_state
    :reader engineer_calibration_state
    :initarg :engineer_calibration_state
    :type cl:boolean
    :initform cl:nil)
   (det_color
    :reader det_color
    :initarg :det_color
    :type cl:fixnum
    :initform 0)
   (det_target
    :reader det_target
    :initarg :det_target
    :type cl:fixnum
    :initform 0)
   (det_armor_target
    :reader det_armor_target
    :initarg :det_armor_target
    :type cl:fixnum
    :initform 0)
   (det_exposure
    :reader det_exposure
    :initarg :det_exposure
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ManualToReferee (<ManualToReferee>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ManualToReferee>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ManualToReferee)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ManualToReferee> is deprecated: use rm_msgs-msg:ManualToReferee instead.")))

(cl:ensure-generic-function 'power_limit_state-val :lambda-list '(m))
(cl:defmethod power_limit_state-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_limit_state-val is deprecated.  Use rm_msgs-msg:power_limit_state instead.")
  (power_limit_state m))

(cl:ensure-generic-function 'start_burst_time-val :lambda-list '(m))
(cl:defmethod start_burst_time-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:start_burst_time-val is deprecated.  Use rm_msgs-msg:start_burst_time instead.")
  (start_burst_time m))

(cl:ensure-generic-function 'shoot_frequency-val :lambda-list '(m))
(cl:defmethod shoot_frequency-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:shoot_frequency-val is deprecated.  Use rm_msgs-msg:shoot_frequency instead.")
  (shoot_frequency m))

(cl:ensure-generic-function 'cover_state-val :lambda-list '(m))
(cl:defmethod cover_state-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:cover_state-val is deprecated.  Use rm_msgs-msg:cover_state instead.")
  (cover_state m))

(cl:ensure-generic-function 'gimbal_eject-val :lambda-list '(m))
(cl:defmethod gimbal_eject-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:gimbal_eject-val is deprecated.  Use rm_msgs-msg:gimbal_eject instead.")
  (gimbal_eject m))

(cl:ensure-generic-function 'hero_eject_flag-val :lambda-list '(m))
(cl:defmethod hero_eject_flag-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_eject_flag-val is deprecated.  Use rm_msgs-msg:hero_eject_flag instead.")
  (hero_eject_flag m))

(cl:ensure-generic-function 'engineer_calibration_state-val :lambda-list '(m))
(cl:defmethod engineer_calibration_state-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_calibration_state-val is deprecated.  Use rm_msgs-msg:engineer_calibration_state instead.")
  (engineer_calibration_state m))

(cl:ensure-generic-function 'det_color-val :lambda-list '(m))
(cl:defmethod det_color-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:det_color-val is deprecated.  Use rm_msgs-msg:det_color instead.")
  (det_color m))

(cl:ensure-generic-function 'det_target-val :lambda-list '(m))
(cl:defmethod det_target-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:det_target-val is deprecated.  Use rm_msgs-msg:det_target instead.")
  (det_target m))

(cl:ensure-generic-function 'det_armor_target-val :lambda-list '(m))
(cl:defmethod det_armor_target-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:det_armor_target-val is deprecated.  Use rm_msgs-msg:det_armor_target instead.")
  (det_armor_target m))

(cl:ensure-generic-function 'det_exposure-val :lambda-list '(m))
(cl:defmethod det_exposure-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:det_exposure-val is deprecated.  Use rm_msgs-msg:det_exposure instead.")
  (det_exposure m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ManualToReferee>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ManualToReferee>) ostream)
  "Serializes a message object of type '<ManualToReferee>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_limit_state)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'start_burst_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'start_burst_time) (cl:floor (cl:slot-value msg 'start_burst_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shoot_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cover_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'gimbal_eject) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hero_eject_flag) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'engineer_calibration_state) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_color)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_armor_target)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_exposure)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ManualToReferee>) istream)
  "Deserializes a message object of type '<ManualToReferee>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_limit_state)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_burst_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'shoot_frequency)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cover_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'gimbal_eject) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'hero_eject_flag) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'engineer_calibration_state) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_color)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_armor_target)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'det_exposure)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ManualToReferee>)))
  "Returns string type for a message object of type '<ManualToReferee>"
  "rm_msgs/ManualToReferee")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ManualToReferee)))
  "Returns string type for a message object of type 'ManualToReferee"
  "rm_msgs/ManualToReferee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ManualToReferee>)))
  "Returns md5sum for a message object of type '<ManualToReferee>"
  "388b131678d19b89d2b4494c496ba80a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ManualToReferee)))
  "Returns md5sum for a message object of type 'ManualToReferee"
  "388b131678d19b89d2b4494c496ba80a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ManualToReferee>)))
  "Returns full string definition for message of type '<ManualToReferee>"
  (cl:format cl:nil "uint8 power_limit_state~%time start_burst_time~%~%#standard~%uint8 shoot_frequency~%bool cover_state~%~%#hero~%bool gimbal_eject~%bool hero_eject_flag~%~%#engineer~%bool engineer_calibration_state~%~%#detection~%uint8 det_color~%uint8 det_target~%uint8 det_armor_target~%uint8 det_exposure~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ManualToReferee)))
  "Returns full string definition for message of type 'ManualToReferee"
  (cl:format cl:nil "uint8 power_limit_state~%time start_burst_time~%~%#standard~%uint8 shoot_frequency~%bool cover_state~%~%#hero~%bool gimbal_eject~%bool hero_eject_flag~%~%#engineer~%bool engineer_calibration_state~%~%#detection~%uint8 det_color~%uint8 det_target~%uint8 det_armor_target~%uint8 det_exposure~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ManualToReferee>))
  (cl:+ 0
     1
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
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ManualToReferee>))
  "Converts a ROS message object to a list"
  (cl:list 'ManualToReferee
    (cl:cons ':power_limit_state (power_limit_state msg))
    (cl:cons ':start_burst_time (start_burst_time msg))
    (cl:cons ':shoot_frequency (shoot_frequency msg))
    (cl:cons ':cover_state (cover_state msg))
    (cl:cons ':gimbal_eject (gimbal_eject msg))
    (cl:cons ':hero_eject_flag (hero_eject_flag msg))
    (cl:cons ':engineer_calibration_state (engineer_calibration_state msg))
    (cl:cons ':det_color (det_color msg))
    (cl:cons ':det_target (det_target msg))
    (cl:cons ':det_armor_target (det_armor_target msg))
    (cl:cons ':det_exposure (det_exposure msg))
    (cl:cons ':stamp (stamp msg))
))
