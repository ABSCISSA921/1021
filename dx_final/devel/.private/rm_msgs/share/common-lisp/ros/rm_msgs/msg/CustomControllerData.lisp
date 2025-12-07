; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude CustomControllerData.msg.html

(cl:defclass <CustomControllerData> (roslisp-msg-protocol:ros-message)
  ((encoder_data
    :reader encoder_data
    :initarg :encoder_data
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (joystick_l_y_data
    :reader joystick_l_y_data
    :initarg :joystick_l_y_data
    :type cl:fixnum
    :initform 0)
   (joystick_l_x_data
    :reader joystick_l_x_data
    :initarg :joystick_l_x_data
    :type cl:fixnum
    :initform 0)
   (joystick_r_y_data
    :reader joystick_r_y_data
    :initarg :joystick_r_y_data
    :type cl:fixnum
    :initform 0)
   (joystick_r_x_data
    :reader joystick_r_x_data
    :initarg :joystick_r_x_data
    :type cl:fixnum
    :initform 0)
   (button_data
    :reader button_data
    :initarg :button_data
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 4 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass CustomControllerData (<CustomControllerData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomControllerData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomControllerData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<CustomControllerData> is deprecated: use rm_msgs-msg:CustomControllerData instead.")))

(cl:ensure-generic-function 'encoder_data-val :lambda-list '(m))
(cl:defmethod encoder_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:encoder_data-val is deprecated.  Use rm_msgs-msg:encoder_data instead.")
  (encoder_data m))

(cl:ensure-generic-function 'joystick_l_y_data-val :lambda-list '(m))
(cl:defmethod joystick_l_y_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_l_y_data-val is deprecated.  Use rm_msgs-msg:joystick_l_y_data instead.")
  (joystick_l_y_data m))

(cl:ensure-generic-function 'joystick_l_x_data-val :lambda-list '(m))
(cl:defmethod joystick_l_x_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_l_x_data-val is deprecated.  Use rm_msgs-msg:joystick_l_x_data instead.")
  (joystick_l_x_data m))

(cl:ensure-generic-function 'joystick_r_y_data-val :lambda-list '(m))
(cl:defmethod joystick_r_y_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_r_y_data-val is deprecated.  Use rm_msgs-msg:joystick_r_y_data instead.")
  (joystick_r_y_data m))

(cl:ensure-generic-function 'joystick_r_x_data-val :lambda-list '(m))
(cl:defmethod joystick_r_x_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:joystick_r_x_data-val is deprecated.  Use rm_msgs-msg:joystick_r_x_data instead.")
  (joystick_r_x_data m))

(cl:ensure-generic-function 'button_data-val :lambda-list '(m))
(cl:defmethod button_data-val ((m <CustomControllerData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:button_data-val is deprecated.  Use rm_msgs-msg:button_data instead.")
  (button_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomControllerData>) ostream)
  "Serializes a message object of type '<CustomControllerData>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'encoder_data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_l_y_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_l_y_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_l_x_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_l_x_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_r_y_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_r_y_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_r_x_data)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_r_x_data)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'button_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomControllerData>) istream)
  "Deserializes a message object of type '<CustomControllerData>"
  (cl:setf (cl:slot-value msg 'encoder_data) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'encoder_data)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_l_y_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_l_y_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_l_x_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_l_x_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_r_y_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_r_y_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'joystick_r_x_data)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'joystick_r_x_data)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'button_data) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'button_data)))
    (cl:dotimes (i 4)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomControllerData>)))
  "Returns string type for a message object of type '<CustomControllerData>"
  "rm_msgs/CustomControllerData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomControllerData)))
  "Returns string type for a message object of type 'CustomControllerData"
  "rm_msgs/CustomControllerData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomControllerData>)))
  "Returns md5sum for a message object of type '<CustomControllerData>"
  "5a85b28a60657f47c3215f53168ea534")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomControllerData)))
  "Returns md5sum for a message object of type 'CustomControllerData"
  "5a85b28a60657f47c3215f53168ea534")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomControllerData>)))
  "Returns full string definition for message of type '<CustomControllerData>"
  (cl:format cl:nil "float64[6] encoder_data~%~%uint16 joystick_l_y_data~%uint16 joystick_l_x_data~%uint16 joystick_r_y_data~%uint16 joystick_r_x_data~%~%bool[4] button_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomControllerData)))
  "Returns full string definition for message of type 'CustomControllerData"
  (cl:format cl:nil "float64[6] encoder_data~%~%uint16 joystick_l_y_data~%uint16 joystick_l_x_data~%uint16 joystick_r_y_data~%uint16 joystick_r_x_data~%~%bool[4] button_data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomControllerData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'encoder_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     2
     2
     2
     2
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'button_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomControllerData>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomControllerData
    (cl:cons ':encoder_data (encoder_data msg))
    (cl:cons ':joystick_l_y_data (joystick_l_y_data msg))
    (cl:cons ':joystick_l_x_data (joystick_l_x_data msg))
    (cl:cons ':joystick_r_y_data (joystick_r_y_data msg))
    (cl:cons ':joystick_r_x_data (joystick_r_x_data msg))
    (cl:cons ':button_data (button_data msg))
))
