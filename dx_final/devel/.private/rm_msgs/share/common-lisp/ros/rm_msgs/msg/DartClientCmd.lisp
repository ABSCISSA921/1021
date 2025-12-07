; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude DartClientCmd.msg.html

(cl:defclass <DartClientCmd> (roslisp-msg-protocol:ros-message)
  ((dart_launch_opening_status
    :reader dart_launch_opening_status
    :initarg :dart_launch_opening_status
    :type cl:fixnum
    :initform 0)
   (target_change_time
    :reader target_change_time
    :initarg :target_change_time
    :type cl:fixnum
    :initform 0)
   (latest_launch_cmd_time
    :reader latest_launch_cmd_time
    :initarg :latest_launch_cmd_time
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass DartClientCmd (<DartClientCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DartClientCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DartClientCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<DartClientCmd> is deprecated: use rm_msgs-msg:DartClientCmd instead.")))

(cl:ensure-generic-function 'dart_launch_opening_status-val :lambda-list '(m))
(cl:defmethod dart_launch_opening_status-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:dart_launch_opening_status-val is deprecated.  Use rm_msgs-msg:dart_launch_opening_status instead.")
  (dart_launch_opening_status m))

(cl:ensure-generic-function 'target_change_time-val :lambda-list '(m))
(cl:defmethod target_change_time-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_change_time-val is deprecated.  Use rm_msgs-msg:target_change_time instead.")
  (target_change_time m))

(cl:ensure-generic-function 'latest_launch_cmd_time-val :lambda-list '(m))
(cl:defmethod latest_launch_cmd_time-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:latest_launch_cmd_time-val is deprecated.  Use rm_msgs-msg:latest_launch_cmd_time instead.")
  (latest_launch_cmd_time m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <DartClientCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DartClientCmd>)))
    "Constants for message type '<DartClientCmd>"
  '((:CLOSED . 1)
    (:OPENING_OR_CLOSING . 2)
    (:OPENED . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DartClientCmd)))
    "Constants for message type 'DartClientCmd"
  '((:CLOSED . 1)
    (:OPENING_OR_CLOSING . 2)
    (:OPENED . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DartClientCmd>) ostream)
  "Serializes a message object of type '<DartClientCmd>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_launch_opening_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_change_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_change_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest_launch_cmd_time)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest_launch_cmd_time)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DartClientCmd>) istream)
  "Deserializes a message object of type '<DartClientCmd>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dart_launch_opening_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_change_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_change_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latest_launch_cmd_time)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latest_launch_cmd_time)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DartClientCmd>)))
  "Returns string type for a message object of type '<DartClientCmd>"
  "rm_msgs/DartClientCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DartClientCmd)))
  "Returns string type for a message object of type 'DartClientCmd"
  "rm_msgs/DartClientCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DartClientCmd>)))
  "Returns md5sum for a message object of type '<DartClientCmd>"
  "35bb2f324581a84628fc6e104a35144c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DartClientCmd)))
  "Returns md5sum for a message object of type 'DartClientCmd"
  "35bb2f324581a84628fc6e104a35144c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DartClientCmd>)))
  "Returns full string definition for message of type '<DartClientCmd>"
  (cl:format cl:nil "uint8 dart_launch_opening_status~%uint16 target_change_time~%uint16 latest_launch_cmd_time~%~%uint8 CLOSED = 1~%uint8 OPENING_OR_CLOSING = 2~%uint8 OPENED = 0~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DartClientCmd)))
  "Returns full string definition for message of type 'DartClientCmd"
  (cl:format cl:nil "uint8 dart_launch_opening_status~%uint16 target_change_time~%uint16 latest_launch_cmd_time~%~%uint8 CLOSED = 1~%uint8 OPENING_OR_CLOSING = 2~%uint8 OPENED = 0~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DartClientCmd>))
  (cl:+ 0
     1
     2
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DartClientCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'DartClientCmd
    (cl:cons ':dart_launch_opening_status (dart_launch_opening_status msg))
    (cl:cons ':target_change_time (target_change_time msg))
    (cl:cons ':latest_launch_cmd_time (latest_launch_cmd_time msg))
    (cl:cons ':stamp (stamp msg))
))
