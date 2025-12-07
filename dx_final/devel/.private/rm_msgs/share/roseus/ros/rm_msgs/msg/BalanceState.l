;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::BalanceState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'BalanceState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BALANCESTATE")
  (make-package "RM_MSGS::BALANCESTATE"))

(in-package "ROS")
;;//! \htmlinclude BalanceState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NORMAL*" (find-package "RM_MSGS::BALANCESTATE"))
(shadow '*NORMAL* (find-package "RM_MSGS::BALANCESTATE"))
(defconstant rm_msgs::BalanceState::*NORMAL* 0)
(intern "*FALLEN*" (find-package "RM_MSGS::BALANCESTATE"))
(shadow '*FALLEN* (find-package "RM_MSGS::BALANCESTATE"))
(defconstant rm_msgs::BalanceState::*FALLEN* 1)

(defun rm_msgs::BalanceState-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::BalanceState::*NORMAL*)
        ((= const 1) 'rm_msgs::BalanceState::*FALLEN*)
        (t nil)))

(defclass rm_msgs::BalanceState
  :super ros::object
  :slots (_header _mode _x _phi _theta _x_b_l _x_b_r _x_dot _phi_dot _theta_dot _x_b_l_dot _x_b_r_dot _acc_x _acc_y _acc_z _T_l _T_r _f_b_l _f_b_r ))

(defmethod rm_msgs::BalanceState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:x __x) 0.0)
    ((:phi __phi) 0.0)
    ((:theta __theta) 0.0)
    ((:x_b_l __x_b_l) 0.0)
    ((:x_b_r __x_b_r) 0.0)
    ((:x_dot __x_dot) 0.0)
    ((:phi_dot __phi_dot) 0.0)
    ((:theta_dot __theta_dot) 0.0)
    ((:x_b_l_dot __x_b_l_dot) 0.0)
    ((:x_b_r_dot __x_b_r_dot) 0.0)
    ((:acc_x __acc_x) 0.0)
    ((:acc_y __acc_y) 0.0)
    ((:acc_z __acc_z) 0.0)
    ((:T_l __T_l) 0.0)
    ((:T_r __T_r) 0.0)
    ((:f_b_l __f_b_l) 0.0)
    ((:f_b_r __f_b_r) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _x (float __x))
   (setq _phi (float __phi))
   (setq _theta (float __theta))
   (setq _x_b_l (float __x_b_l))
   (setq _x_b_r (float __x_b_r))
   (setq _x_dot (float __x_dot))
   (setq _phi_dot (float __phi_dot))
   (setq _theta_dot (float __theta_dot))
   (setq _x_b_l_dot (float __x_b_l_dot))
   (setq _x_b_r_dot (float __x_b_r_dot))
   (setq _acc_x (float __acc_x))
   (setq _acc_y (float __acc_y))
   (setq _acc_z (float __acc_z))
   (setq _T_l (float __T_l))
   (setq _T_r (float __T_r))
   (setq _f_b_l (float __f_b_l))
   (setq _f_b_r (float __f_b_r))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:phi
   (&optional __phi)
   (if __phi (setq _phi __phi)) _phi)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:x_b_l
   (&optional __x_b_l)
   (if __x_b_l (setq _x_b_l __x_b_l)) _x_b_l)
  (:x_b_r
   (&optional __x_b_r)
   (if __x_b_r (setq _x_b_r __x_b_r)) _x_b_r)
  (:x_dot
   (&optional __x_dot)
   (if __x_dot (setq _x_dot __x_dot)) _x_dot)
  (:phi_dot
   (&optional __phi_dot)
   (if __phi_dot (setq _phi_dot __phi_dot)) _phi_dot)
  (:theta_dot
   (&optional __theta_dot)
   (if __theta_dot (setq _theta_dot __theta_dot)) _theta_dot)
  (:x_b_l_dot
   (&optional __x_b_l_dot)
   (if __x_b_l_dot (setq _x_b_l_dot __x_b_l_dot)) _x_b_l_dot)
  (:x_b_r_dot
   (&optional __x_b_r_dot)
   (if __x_b_r_dot (setq _x_b_r_dot __x_b_r_dot)) _x_b_r_dot)
  (:acc_x
   (&optional __acc_x)
   (if __acc_x (setq _acc_x __acc_x)) _acc_x)
  (:acc_y
   (&optional __acc_y)
   (if __acc_y (setq _acc_y __acc_y)) _acc_y)
  (:acc_z
   (&optional __acc_z)
   (if __acc_z (setq _acc_z __acc_z)) _acc_z)
  (:T_l
   (&optional __T_l)
   (if __T_l (setq _T_l __T_l)) _T_l)
  (:T_r
   (&optional __T_r)
   (if __T_r (setq _T_r __T_r)) _T_r)
  (:f_b_l
   (&optional __f_b_l)
   (if __f_b_l (setq _f_b_l __f_b_l)) _f_b_l)
  (:f_b_r
   (&optional __f_b_r)
   (if __f_b_r (setq _f_b_r __f_b_r)) _f_b_r)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; float64 _x
    8
    ;; float64 _phi
    8
    ;; float64 _theta
    8
    ;; float64 _x_b_l
    8
    ;; float64 _x_b_r
    8
    ;; float64 _x_dot
    8
    ;; float64 _phi_dot
    8
    ;; float64 _theta_dot
    8
    ;; float64 _x_b_l_dot
    8
    ;; float64 _x_b_r_dot
    8
    ;; float64 _acc_x
    8
    ;; float64 _acc_y
    8
    ;; float64 _acc_z
    8
    ;; float64 _T_l
    8
    ;; float64 _T_r
    8
    ;; float64 _f_b_l
    8
    ;; float64 _f_b_r
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi
       (sys::poke _phi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_b_l
       (sys::poke _x_b_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_b_r
       (sys::poke _x_b_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_dot
       (sys::poke _x_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _phi_dot
       (sys::poke _phi_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta_dot
       (sys::poke _theta_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_b_l_dot
       (sys::poke _x_b_l_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x_b_r_dot
       (sys::poke _x_b_r_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_x
       (sys::poke _acc_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_y
       (sys::poke _acc_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acc_z
       (sys::poke _acc_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _T_l
       (sys::poke _T_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _T_r
       (sys::poke _T_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_b_l
       (sys::poke _f_b_l (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _f_b_r
       (sys::poke _f_b_r (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi
     (setq _phi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_b_l
     (setq _x_b_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_b_r
     (setq _x_b_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_dot
     (setq _x_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _phi_dot
     (setq _phi_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta_dot
     (setq _theta_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_b_l_dot
     (setq _x_b_l_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x_b_r_dot
     (setq _x_b_r_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_x
     (setq _acc_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_y
     (setq _acc_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acc_z
     (setq _acc_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _T_l
     (setq _T_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _T_r
     (setq _T_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_b_l
     (setq _f_b_l (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _f_b_r
     (setq _f_b_r (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::BalanceState :md5sum-) "563c6259b4e510bcb83a9719793e4546")
(setf (get rm_msgs::BalanceState :datatype-) "rm_msgs/BalanceState")
(setf (get rm_msgs::BalanceState :definition-)
      "uint8  NORMAL = 0
uint8  FALLEN = 1

std_msgs/Header header

uint8 mode
float64 x
float64 phi
float64 theta
float64 x_b_l
float64 x_b_r
float64 x_dot
float64 phi_dot
float64 theta_dot
float64 x_b_l_dot
float64 x_b_r_dot
float64 acc_x
float64 acc_y
float64 acc_z

float64 T_l
float64 T_r
float64 f_b_l
float64 f_b_r

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rm_msgs/BalanceState "563c6259b4e510bcb83a9719793e4546")


