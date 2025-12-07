; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PowerManagementSystemExceptionData.msg.html

(cl:defclass <PowerManagementSystemExceptionData> (roslisp-msg-protocol:ros-message)
  ((r0
    :reader r0
    :initarg :r0
    :type cl:integer
    :initform 0)
   (r1
    :reader r1
    :initarg :r1
    :type cl:integer
    :initform 0)
   (r2
    :reader r2
    :initarg :r2
    :type cl:integer
    :initform 0)
   (r3
    :reader r3
    :initarg :r3
    :type cl:integer
    :initform 0)
   (r12
    :reader r12
    :initarg :r12
    :type cl:integer
    :initform 0)
   (LR
    :reader LR
    :initarg :LR
    :type cl:integer
    :initform 0)
   (PC
    :reader PC
    :initarg :PC
    :type cl:integer
    :initform 0)
   (PSR
    :reader PSR
    :initarg :PSR
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PowerManagementSystemExceptionData (<PowerManagementSystemExceptionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerManagementSystemExceptionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerManagementSystemExceptionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PowerManagementSystemExceptionData> is deprecated: use rm_msgs-msg:PowerManagementSystemExceptionData instead.")))

(cl:ensure-generic-function 'r0-val :lambda-list '(m))
(cl:defmethod r0-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:r0-val is deprecated.  Use rm_msgs-msg:r0 instead.")
  (r0 m))

(cl:ensure-generic-function 'r1-val :lambda-list '(m))
(cl:defmethod r1-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:r1-val is deprecated.  Use rm_msgs-msg:r1 instead.")
  (r1 m))

(cl:ensure-generic-function 'r2-val :lambda-list '(m))
(cl:defmethod r2-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:r2-val is deprecated.  Use rm_msgs-msg:r2 instead.")
  (r2 m))

(cl:ensure-generic-function 'r3-val :lambda-list '(m))
(cl:defmethod r3-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:r3-val is deprecated.  Use rm_msgs-msg:r3 instead.")
  (r3 m))

(cl:ensure-generic-function 'r12-val :lambda-list '(m))
(cl:defmethod r12-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:r12-val is deprecated.  Use rm_msgs-msg:r12 instead.")
  (r12 m))

(cl:ensure-generic-function 'LR-val :lambda-list '(m))
(cl:defmethod LR-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:LR-val is deprecated.  Use rm_msgs-msg:LR instead.")
  (LR m))

(cl:ensure-generic-function 'PC-val :lambda-list '(m))
(cl:defmethod PC-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:PC-val is deprecated.  Use rm_msgs-msg:PC instead.")
  (PC m))

(cl:ensure-generic-function 'PSR-val :lambda-list '(m))
(cl:defmethod PSR-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:PSR-val is deprecated.  Use rm_msgs-msg:PSR instead.")
  (PSR m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PowerManagementSystemExceptionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerManagementSystemExceptionData>) ostream)
  "Serializes a message object of type '<PowerManagementSystemExceptionData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r12)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PC)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PSR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PSR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PSR)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PSR)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerManagementSystemExceptionData>) istream)
  "Deserializes a message object of type '<PowerManagementSystemExceptionData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r0)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'r12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'r12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'r12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'r12)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'LR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'LR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'LR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'LR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PC)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'PSR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'PSR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'PSR)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'PSR)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerManagementSystemExceptionData>)))
  "Returns string type for a message object of type '<PowerManagementSystemExceptionData>"
  "rm_msgs/PowerManagementSystemExceptionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerManagementSystemExceptionData)))
  "Returns string type for a message object of type 'PowerManagementSystemExceptionData"
  "rm_msgs/PowerManagementSystemExceptionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerManagementSystemExceptionData>)))
  "Returns md5sum for a message object of type '<PowerManagementSystemExceptionData>"
  "48dc20c9346b76eeb74bcfd0aefcc86d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerManagementSystemExceptionData)))
  "Returns md5sum for a message object of type 'PowerManagementSystemExceptionData"
  "48dc20c9346b76eeb74bcfd0aefcc86d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerManagementSystemExceptionData>)))
  "Returns full string definition for message of type '<PowerManagementSystemExceptionData>"
  (cl:format cl:nil "uint32 r0~%uint32 r1~%uint32 r2~%uint32 r3~%uint32 r12~%uint32 LR~%uint32 PC~%uint32 PSR~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerManagementSystemExceptionData)))
  "Returns full string definition for message of type 'PowerManagementSystemExceptionData"
  (cl:format cl:nil "uint32 r0~%uint32 r1~%uint32 r2~%uint32 r3~%uint32 r12~%uint32 LR~%uint32 PC~%uint32 PSR~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerManagementSystemExceptionData>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerManagementSystemExceptionData>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerManagementSystemExceptionData
    (cl:cons ':r0 (r0 msg))
    (cl:cons ':r1 (r1 msg))
    (cl:cons ':r2 (r2 msg))
    (cl:cons ':r3 (r3 msg))
    (cl:cons ':r12 (r12 msg))
    (cl:cons ':LR (LR msg))
    (cl:cons ':PC (PC msg))
    (cl:cons ':PSR (PSR msg))
    (cl:cons ':stamp (stamp msg))
))
