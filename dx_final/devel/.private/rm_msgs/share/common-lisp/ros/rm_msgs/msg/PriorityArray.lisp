; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PriorityArray.msg.html

(cl:defclass <PriorityArray> (roslisp-msg-protocol:ros-message)
  ((rank_arr
    :reader rank_arr
    :initarg :rank_arr
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PriorityArray (<PriorityArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PriorityArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PriorityArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PriorityArray> is deprecated: use rm_msgs-msg:PriorityArray instead.")))

(cl:ensure-generic-function 'rank_arr-val :lambda-list '(m))
(cl:defmethod rank_arr-val ((m <PriorityArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:rank_arr-val is deprecated.  Use rm_msgs-msg:rank_arr instead.")
  (rank_arr m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PriorityArray>)))
    "Constants for message type '<PriorityArray>"
  '((:HERO . 0)
    (:ENGINEER . 1)
    (:INFANTRY3 . 2)
    (:INFANTRY4 . 3)
    (:INFANTRY5 . 4)
    (:OUTPOST . 5)
    (:SENTRY . 6)
    (:BASE . 7))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PriorityArray)))
    "Constants for message type 'PriorityArray"
  '((:HERO . 0)
    (:ENGINEER . 1)
    (:INFANTRY3 . 2)
    (:INFANTRY4 . 3)
    (:INFANTRY5 . 4)
    (:OUTPOST . 5)
    (:SENTRY . 6)
    (:BASE . 7))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PriorityArray>) ostream)
  "Serializes a message object of type '<PriorityArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'rank_arr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'rank_arr))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PriorityArray>) istream)
  "Deserializes a message object of type '<PriorityArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'rank_arr) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'rank_arr)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PriorityArray>)))
  "Returns string type for a message object of type '<PriorityArray>"
  "rm_msgs/PriorityArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PriorityArray)))
  "Returns string type for a message object of type 'PriorityArray"
  "rm_msgs/PriorityArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PriorityArray>)))
  "Returns md5sum for a message object of type '<PriorityArray>"
  "9eb29adee789c861a1d9aa2167b08593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PriorityArray)))
  "Returns md5sum for a message object of type 'PriorityArray"
  "9eb29adee789c861a1d9aa2167b08593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PriorityArray>)))
  "Returns full string definition for message of type '<PriorityArray>"
  (cl:format cl:nil "uint8 HERO = 0~%uint8 ENGINEER = 1~%uint8 INFANTRY3 = 2~%uint8 INFANTRY4 = 3~%uint8 INFANTRY5 = 4~%uint8 OUTPOST = 5~%uint8 SENTRY = 6~%uint8 BASE = 7~%~%uint8[] rank_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PriorityArray)))
  "Returns full string definition for message of type 'PriorityArray"
  (cl:format cl:nil "uint8 HERO = 0~%uint8 ENGINEER = 1~%uint8 INFANTRY3 = 2~%uint8 INFANTRY4 = 3~%uint8 INFANTRY5 = 4~%uint8 OUTPOST = 5~%uint8 SENTRY = 6~%uint8 BASE = 7~%~%uint8[] rank_arr~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PriorityArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'rank_arr) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PriorityArray>))
  "Converts a ROS message object to a list"
  (cl:list 'PriorityArray
    (cl:cons ':rank_arr (rank_arr msg))
))
