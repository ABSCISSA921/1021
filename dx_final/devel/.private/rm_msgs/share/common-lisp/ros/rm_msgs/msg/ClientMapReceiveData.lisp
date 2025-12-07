; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ClientMapReceiveData.msg.html

(cl:defclass <ClientMapReceiveData> (roslisp-msg-protocol:ros-message)
  ((hero_position_x
    :reader hero_position_x
    :initarg :hero_position_x
    :type cl:fixnum
    :initform 0)
   (hero_position_y
    :reader hero_position_y
    :initarg :hero_position_y
    :type cl:fixnum
    :initform 0)
   (engineer_position_x
    :reader engineer_position_x
    :initarg :engineer_position_x
    :type cl:fixnum
    :initform 0)
   (engineer_position_y
    :reader engineer_position_y
    :initarg :engineer_position_y
    :type cl:fixnum
    :initform 0)
   (infantry_3_position_x
    :reader infantry_3_position_x
    :initarg :infantry_3_position_x
    :type cl:fixnum
    :initform 0)
   (infantry_3_position_y
    :reader infantry_3_position_y
    :initarg :infantry_3_position_y
    :type cl:fixnum
    :initform 0)
   (infantry_4_position_x
    :reader infantry_4_position_x
    :initarg :infantry_4_position_x
    :type cl:fixnum
    :initform 0)
   (infantry_4_position_y
    :reader infantry_4_position_y
    :initarg :infantry_4_position_y
    :type cl:fixnum
    :initform 0)
   (infantry_5_position_x
    :reader infantry_5_position_x
    :initarg :infantry_5_position_x
    :type cl:fixnum
    :initform 0)
   (infantry_5_position_y
    :reader infantry_5_position_y
    :initarg :infantry_5_position_y
    :type cl:fixnum
    :initform 0)
   (sentry_position_x
    :reader sentry_position_x
    :initarg :sentry_position_x
    :type cl:fixnum
    :initform 0)
   (sentry_position_y
    :reader sentry_position_y
    :initarg :sentry_position_y
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ClientMapReceiveData (<ClientMapReceiveData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientMapReceiveData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientMapReceiveData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ClientMapReceiveData> is deprecated: use rm_msgs-msg:ClientMapReceiveData instead.")))

(cl:ensure-generic-function 'hero_position_x-val :lambda-list '(m))
(cl:defmethod hero_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_position_x-val is deprecated.  Use rm_msgs-msg:hero_position_x instead.")
  (hero_position_x m))

(cl:ensure-generic-function 'hero_position_y-val :lambda-list '(m))
(cl:defmethod hero_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:hero_position_y-val is deprecated.  Use rm_msgs-msg:hero_position_y instead.")
  (hero_position_y m))

(cl:ensure-generic-function 'engineer_position_x-val :lambda-list '(m))
(cl:defmethod engineer_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_position_x-val is deprecated.  Use rm_msgs-msg:engineer_position_x instead.")
  (engineer_position_x m))

(cl:ensure-generic-function 'engineer_position_y-val :lambda-list '(m))
(cl:defmethod engineer_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:engineer_position_y-val is deprecated.  Use rm_msgs-msg:engineer_position_y instead.")
  (engineer_position_y m))

(cl:ensure-generic-function 'infantry_3_position_x-val :lambda-list '(m))
(cl:defmethod infantry_3_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_3_position_x-val is deprecated.  Use rm_msgs-msg:infantry_3_position_x instead.")
  (infantry_3_position_x m))

(cl:ensure-generic-function 'infantry_3_position_y-val :lambda-list '(m))
(cl:defmethod infantry_3_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_3_position_y-val is deprecated.  Use rm_msgs-msg:infantry_3_position_y instead.")
  (infantry_3_position_y m))

(cl:ensure-generic-function 'infantry_4_position_x-val :lambda-list '(m))
(cl:defmethod infantry_4_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_4_position_x-val is deprecated.  Use rm_msgs-msg:infantry_4_position_x instead.")
  (infantry_4_position_x m))

(cl:ensure-generic-function 'infantry_4_position_y-val :lambda-list '(m))
(cl:defmethod infantry_4_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_4_position_y-val is deprecated.  Use rm_msgs-msg:infantry_4_position_y instead.")
  (infantry_4_position_y m))

(cl:ensure-generic-function 'infantry_5_position_x-val :lambda-list '(m))
(cl:defmethod infantry_5_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_5_position_x-val is deprecated.  Use rm_msgs-msg:infantry_5_position_x instead.")
  (infantry_5_position_x m))

(cl:ensure-generic-function 'infantry_5_position_y-val :lambda-list '(m))
(cl:defmethod infantry_5_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:infantry_5_position_y-val is deprecated.  Use rm_msgs-msg:infantry_5_position_y instead.")
  (infantry_5_position_y m))

(cl:ensure-generic-function 'sentry_position_x-val :lambda-list '(m))
(cl:defmethod sentry_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_position_x-val is deprecated.  Use rm_msgs-msg:sentry_position_x instead.")
  (sentry_position_x m))

(cl:ensure-generic-function 'sentry_position_y-val :lambda-list '(m))
(cl:defmethod sentry_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:sentry_position_y-val is deprecated.  Use rm_msgs-msg:sentry_position_y instead.")
  (sentry_position_y m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientMapReceiveData>) ostream)
  "Serializes a message object of type '<ClientMapReceiveData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_3_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_3_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_3_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_3_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_4_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_4_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_4_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_4_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_5_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_5_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_5_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_5_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_position_y)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientMapReceiveData>) istream)
  "Deserializes a message object of type '<ClientMapReceiveData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hero_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'hero_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'engineer_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'engineer_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_3_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_3_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_3_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_3_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_4_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_4_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_4_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_4_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_5_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_5_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'infantry_5_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'infantry_5_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sentry_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sentry_position_y)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientMapReceiveData>)))
  "Returns string type for a message object of type '<ClientMapReceiveData>"
  "rm_msgs/ClientMapReceiveData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientMapReceiveData)))
  "Returns string type for a message object of type 'ClientMapReceiveData"
  "rm_msgs/ClientMapReceiveData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientMapReceiveData>)))
  "Returns md5sum for a message object of type '<ClientMapReceiveData>"
  "765860ed57371d5f547d7681e64c9b02")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientMapReceiveData)))
  "Returns md5sum for a message object of type 'ClientMapReceiveData"
  "765860ed57371d5f547d7681e64c9b02")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientMapReceiveData>)))
  "Returns full string definition for message of type '<ClientMapReceiveData>"
  (cl:format cl:nil "uint16 hero_position_x~%uint16 hero_position_y~%uint16 engineer_position_x~%uint16 engineer_position_y~%uint16 infantry_3_position_x~%uint16 infantry_3_position_y~%uint16 infantry_4_position_x~%uint16 infantry_4_position_y~%uint16 infantry_5_position_x~%uint16 infantry_5_position_y~%uint16 sentry_position_x~%uint16 sentry_position_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientMapReceiveData)))
  "Returns full string definition for message of type 'ClientMapReceiveData"
  (cl:format cl:nil "uint16 hero_position_x~%uint16 hero_position_y~%uint16 engineer_position_x~%uint16 engineer_position_y~%uint16 infantry_3_position_x~%uint16 infantry_3_position_y~%uint16 infantry_4_position_x~%uint16 infantry_4_position_y~%uint16 infantry_5_position_x~%uint16 infantry_5_position_y~%uint16 sentry_position_x~%uint16 sentry_position_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientMapReceiveData>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientMapReceiveData>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientMapReceiveData
    (cl:cons ':hero_position_x (hero_position_x msg))
    (cl:cons ':hero_position_y (hero_position_y msg))
    (cl:cons ':engineer_position_x (engineer_position_x msg))
    (cl:cons ':engineer_position_y (engineer_position_y msg))
    (cl:cons ':infantry_3_position_x (infantry_3_position_x msg))
    (cl:cons ':infantry_3_position_y (infantry_3_position_y msg))
    (cl:cons ':infantry_4_position_x (infantry_4_position_x msg))
    (cl:cons ':infantry_4_position_y (infantry_4_position_y msg))
    (cl:cons ':infantry_5_position_x (infantry_5_position_x msg))
    (cl:cons ':infantry_5_position_y (infantry_5_position_y msg))
    (cl:cons ':sentry_position_x (sentry_position_x msg))
    (cl:cons ':sentry_position_y (sentry_position_y msg))
    (cl:cons ':stamp (stamp msg))
))
