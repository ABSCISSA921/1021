; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PowerManagementProcessStackOverflowData.msg.html

(cl:defclass <PowerManagementProcessStackOverflowData> (roslisp-msg-protocol:ros-message)
  ((process_name
    :reader process_name
    :initarg :process_name
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PowerManagementProcessStackOverflowData (<PowerManagementProcessStackOverflowData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerManagementProcessStackOverflowData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerManagementProcessStackOverflowData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PowerManagementProcessStackOverflowData> is deprecated: use rm_msgs-msg:PowerManagementProcessStackOverflowData instead.")))

(cl:ensure-generic-function 'process_name-val :lambda-list '(m))
(cl:defmethod process_name-val ((m <PowerManagementProcessStackOverflowData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:process_name-val is deprecated.  Use rm_msgs-msg:process_name instead.")
  (process_name m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PowerManagementProcessStackOverflowData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerManagementProcessStackOverflowData>) ostream)
  "Serializes a message object of type '<PowerManagementProcessStackOverflowData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'process_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'process_name))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerManagementProcessStackOverflowData>) istream)
  "Deserializes a message object of type '<PowerManagementProcessStackOverflowData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'process_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'process_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerManagementProcessStackOverflowData>)))
  "Returns string type for a message object of type '<PowerManagementProcessStackOverflowData>"
  "rm_msgs/PowerManagementProcessStackOverflowData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerManagementProcessStackOverflowData)))
  "Returns string type for a message object of type 'PowerManagementProcessStackOverflowData"
  "rm_msgs/PowerManagementProcessStackOverflowData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerManagementProcessStackOverflowData>)))
  "Returns md5sum for a message object of type '<PowerManagementProcessStackOverflowData>"
  "3888ad0e8184067e8398c12c0b5e2afe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerManagementProcessStackOverflowData)))
  "Returns md5sum for a message object of type 'PowerManagementProcessStackOverflowData"
  "3888ad0e8184067e8398c12c0b5e2afe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerManagementProcessStackOverflowData>)))
  "Returns full string definition for message of type '<PowerManagementProcessStackOverflowData>"
  (cl:format cl:nil "string process_name~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerManagementProcessStackOverflowData)))
  "Returns full string definition for message of type 'PowerManagementProcessStackOverflowData"
  (cl:format cl:nil "string process_name~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerManagementProcessStackOverflowData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'process_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerManagementProcessStackOverflowData>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerManagementProcessStackOverflowData
    (cl:cons ':process_name (process_name msg))
    (cl:cons ':stamp (stamp msg))
))
