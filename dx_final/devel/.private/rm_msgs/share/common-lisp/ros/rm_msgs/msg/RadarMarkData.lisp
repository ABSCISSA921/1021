; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude RadarMarkData.msg.html

(cl:defclass <RadarMarkData> (roslisp-msg-protocol:ros-message)
  ((mark_hero_progress
    :reader mark_hero_progress
    :initarg :mark_hero_progress
    :type cl:boolean
    :initform cl:nil)
   (mark_engineer_progress
    :reader mark_engineer_progress
    :initarg :mark_engineer_progress
    :type cl:boolean
    :initform cl:nil)
   (mark_standard_3_progress
    :reader mark_standard_3_progress
    :initarg :mark_standard_3_progress
    :type cl:boolean
    :initform cl:nil)
   (mark_standard_4_progress
    :reader mark_standard_4_progress
    :initarg :mark_standard_4_progress
    :type cl:boolean
    :initform cl:nil)
   (mark_sentry_progress
    :reader mark_sentry_progress
    :initarg :mark_sentry_progress
    :type cl:boolean
    :initform cl:nil)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass RadarMarkData (<RadarMarkData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RadarMarkData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RadarMarkData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<RadarMarkData> is deprecated: use rm_msgs-msg:RadarMarkData instead.")))

(cl:ensure-generic-function 'mark_hero_progress-val :lambda-list '(m))
(cl:defmethod mark_hero_progress-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mark_hero_progress-val is deprecated.  Use rm_msgs-msg:mark_hero_progress instead.")
  (mark_hero_progress m))

(cl:ensure-generic-function 'mark_engineer_progress-val :lambda-list '(m))
(cl:defmethod mark_engineer_progress-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mark_engineer_progress-val is deprecated.  Use rm_msgs-msg:mark_engineer_progress instead.")
  (mark_engineer_progress m))

(cl:ensure-generic-function 'mark_standard_3_progress-val :lambda-list '(m))
(cl:defmethod mark_standard_3_progress-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mark_standard_3_progress-val is deprecated.  Use rm_msgs-msg:mark_standard_3_progress instead.")
  (mark_standard_3_progress m))

(cl:ensure-generic-function 'mark_standard_4_progress-val :lambda-list '(m))
(cl:defmethod mark_standard_4_progress-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mark_standard_4_progress-val is deprecated.  Use rm_msgs-msg:mark_standard_4_progress instead.")
  (mark_standard_4_progress m))

(cl:ensure-generic-function 'mark_sentry_progress-val :lambda-list '(m))
(cl:defmethod mark_sentry_progress-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:mark_sentry_progress-val is deprecated.  Use rm_msgs-msg:mark_sentry_progress instead.")
  (mark_sentry_progress m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <RadarMarkData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RadarMarkData>) ostream)
  "Serializes a message object of type '<RadarMarkData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mark_hero_progress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mark_engineer_progress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mark_standard_3_progress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mark_standard_4_progress) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mark_sentry_progress) 1 0)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RadarMarkData>) istream)
  "Deserializes a message object of type '<RadarMarkData>"
    (cl:setf (cl:slot-value msg 'mark_hero_progress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mark_engineer_progress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mark_standard_3_progress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mark_standard_4_progress) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mark_sentry_progress) (cl:not (cl:zerop (cl:read-byte istream))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RadarMarkData>)))
  "Returns string type for a message object of type '<RadarMarkData>"
  "rm_msgs/RadarMarkData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RadarMarkData)))
  "Returns string type for a message object of type 'RadarMarkData"
  "rm_msgs/RadarMarkData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RadarMarkData>)))
  "Returns md5sum for a message object of type '<RadarMarkData>"
  "9220326c1ed840bfbfd0ed6791aea229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RadarMarkData)))
  "Returns md5sum for a message object of type 'RadarMarkData"
  "9220326c1ed840bfbfd0ed6791aea229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RadarMarkData>)))
  "Returns full string definition for message of type '<RadarMarkData>"
  (cl:format cl:nil "bool mark_hero_progress~%bool mark_engineer_progress~%bool mark_standard_3_progress~%bool mark_standard_4_progress~%bool mark_sentry_progress~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RadarMarkData)))
  "Returns full string definition for message of type 'RadarMarkData"
  (cl:format cl:nil "bool mark_hero_progress~%bool mark_engineer_progress~%bool mark_standard_3_progress~%bool mark_standard_4_progress~%bool mark_sentry_progress~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RadarMarkData>))
  (cl:+ 0
     1
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RadarMarkData>))
  "Converts a ROS message object to a list"
  (cl:list 'RadarMarkData
    (cl:cons ':mark_hero_progress (mark_hero_progress msg))
    (cl:cons ':mark_engineer_progress (mark_engineer_progress msg))
    (cl:cons ':mark_standard_3_progress (mark_standard_3_progress msg))
    (cl:cons ':mark_standard_4_progress (mark_standard_4_progress msg))
    (cl:cons ':mark_sentry_progress (mark_sentry_progress msg))
    (cl:cons ':stamp (stamp msg))
))
