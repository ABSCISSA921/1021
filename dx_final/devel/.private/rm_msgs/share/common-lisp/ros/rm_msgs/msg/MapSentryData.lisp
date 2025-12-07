; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude MapSentryData.msg.html

(cl:defclass <MapSentryData> (roslisp-msg-protocol:ros-message)
  ((intention
    :reader intention
    :initarg :intention
    :type cl:fixnum
    :initform 0)
   (start_position_x
    :reader start_position_x
    :initarg :start_position_x
    :type cl:fixnum
    :initform 0)
   (start_position_y
    :reader start_position_y
    :initarg :start_position_y
    :type cl:fixnum
    :initform 0)
   (delta_x
    :reader delta_x
    :initarg :delta_x
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 49 :element-type 'cl:fixnum :initial-element 0))
   (delta_y
    :reader delta_y
    :initarg :delta_y
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 49 :element-type 'cl:fixnum :initial-element 0))
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass MapSentryData (<MapSentryData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSentryData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSentryData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<MapSentryData> is deprecated: use rm_msgs-msg:MapSentryData instead.")))

(cl:ensure-generic-function 'intention-val :lambda-list '(m))
(cl:defmethod intention-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:intention-val is deprecated.  Use rm_msgs-msg:intention instead.")
  (intention m))

(cl:ensure-generic-function 'start_position_x-val :lambda-list '(m))
(cl:defmethod start_position_x-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:start_position_x-val is deprecated.  Use rm_msgs-msg:start_position_x instead.")
  (start_position_x m))

(cl:ensure-generic-function 'start_position_y-val :lambda-list '(m))
(cl:defmethod start_position_y-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:start_position_y-val is deprecated.  Use rm_msgs-msg:start_position_y instead.")
  (start_position_y m))

(cl:ensure-generic-function 'delta_x-val :lambda-list '(m))
(cl:defmethod delta_x-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:delta_x-val is deprecated.  Use rm_msgs-msg:delta_x instead.")
  (delta_x m))

(cl:ensure-generic-function 'delta_y-val :lambda-list '(m))
(cl:defmethod delta_y-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:delta_y-val is deprecated.  Use rm_msgs-msg:delta_y instead.")
  (delta_y m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MapSentryData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSentryData>) ostream)
  "Serializes a message object of type '<MapSentryData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intention)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_position_x)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_position_y)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_position_y)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'delta_x))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    ))
   (cl:slot-value msg 'delta_y))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSentryData>) istream)
  "Deserializes a message object of type '<MapSentryData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'intention)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_position_x)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'start_position_y)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'start_position_y)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'delta_x) (cl:make-array 49))
  (cl:let ((vals (cl:slot-value msg 'delta_x)))
    (cl:dotimes (i 49)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
  (cl:setf (cl:slot-value msg 'delta_y) (cl:make-array 49))
  (cl:let ((vals (cl:slot-value msg 'delta_y)))
    (cl:dotimes (i 49)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSentryData>)))
  "Returns string type for a message object of type '<MapSentryData>"
  "rm_msgs/MapSentryData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSentryData)))
  "Returns string type for a message object of type 'MapSentryData"
  "rm_msgs/MapSentryData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSentryData>)))
  "Returns md5sum for a message object of type '<MapSentryData>"
  "d6e15a95bf254643938dfaa446ff12c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSentryData)))
  "Returns md5sum for a message object of type 'MapSentryData"
  "d6e15a95bf254643938dfaa446ff12c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSentryData>)))
  "Returns full string definition for message of type '<MapSentryData>"
  (cl:format cl:nil "uint8 intention~%uint16 start_position_x~%uint16 start_position_y~%int8[49] delta_x~%int8[49] delta_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSentryData)))
  "Returns full string definition for message of type 'MapSentryData"
  (cl:format cl:nil "uint8 intention~%uint16 start_position_x~%uint16 start_position_y~%int8[49] delta_x~%int8[49] delta_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSentryData>))
  (cl:+ 0
     1
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'delta_x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'delta_y) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSentryData>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSentryData
    (cl:cons ':intention (intention msg))
    (cl:cons ':start_position_x (start_position_x msg))
    (cl:cons ':start_position_y (start_position_y msg))
    (cl:cons ':delta_x (delta_x msg))
    (cl:cons ':delta_y (delta_y msg))
    (cl:cons ':stamp (stamp msg))
))
