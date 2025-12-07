;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::VTReceiverControlData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'VTReceiverControlData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::VTRECEIVERCONTROLDATA")
  (make-package "RM_MSGS::VTRECEIVERCONTROLDATA"))

(in-package "ROS")
;;//! \htmlinclude VTReceiverControlData.msg.html


(intern "*MODE_C*" (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(shadow '*MODE_C* (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(defconstant rm_msgs::VTReceiverControlData::*MODE_C* 0)
(intern "*MODE_N*" (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(shadow '*MODE_N* (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(defconstant rm_msgs::VTReceiverControlData::*MODE_N* 1)
(intern "*MODE_S*" (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(shadow '*MODE_S* (find-package "RM_MSGS::VTRECEIVERCONTROLDATA"))
(defconstant rm_msgs::VTReceiverControlData::*MODE_S* 2)

(defun rm_msgs::VTReceiverControlData-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::VTReceiverControlData::*MODE_C*)
        ((= const 1) 'rm_msgs::VTReceiverControlData::*MODE_N*)
        ((= const 2) 'rm_msgs::VTReceiverControlData::*MODE_S*)
        (t nil)))

(defclass rm_msgs::VTReceiverControlData
  :super ros::object
  :slots (_joystick_r_x _joystick_r_y _joystick_l_y _joystick_l_x _mode_switch _pause_button _custom_button_l _custom_button_r _wheel _trigger _mouse_x _mouse_y _mouse_wheel _mouse_left_down _mouse_right_down _mouse_mid_down _key_w _key_s _key_a _key_d _key_shift _key_ctrl _key_q _key_e _key_r _key_f _key_g _key_z _key_x _key_c _key_v _key_b ))

(defmethod rm_msgs::VTReceiverControlData
  (:init
   (&key
    ((:joystick_r_x __joystick_r_x) 0.0)
    ((:joystick_r_y __joystick_r_y) 0.0)
    ((:joystick_l_y __joystick_l_y) 0.0)
    ((:joystick_l_x __joystick_l_x) 0.0)
    ((:mode_switch __mode_switch) 0)
    ((:pause_button __pause_button) nil)
    ((:custom_button_l __custom_button_l) nil)
    ((:custom_button_r __custom_button_r) nil)
    ((:wheel __wheel) 0.0)
    ((:trigger __trigger) nil)
    ((:mouse_x __mouse_x) 0)
    ((:mouse_y __mouse_y) 0)
    ((:mouse_wheel __mouse_wheel) 0)
    ((:mouse_left_down __mouse_left_down) nil)
    ((:mouse_right_down __mouse_right_down) nil)
    ((:mouse_mid_down __mouse_mid_down) nil)
    ((:key_w __key_w) nil)
    ((:key_s __key_s) nil)
    ((:key_a __key_a) nil)
    ((:key_d __key_d) nil)
    ((:key_shift __key_shift) nil)
    ((:key_ctrl __key_ctrl) nil)
    ((:key_q __key_q) nil)
    ((:key_e __key_e) nil)
    ((:key_r __key_r) nil)
    ((:key_f __key_f) nil)
    ((:key_g __key_g) nil)
    ((:key_z __key_z) nil)
    ((:key_x __key_x) nil)
    ((:key_c __key_c) nil)
    ((:key_v __key_v) nil)
    ((:key_b __key_b) nil)
    )
   (send-super :init)
   (setq _joystick_r_x (float __joystick_r_x))
   (setq _joystick_r_y (float __joystick_r_y))
   (setq _joystick_l_y (float __joystick_l_y))
   (setq _joystick_l_x (float __joystick_l_x))
   (setq _mode_switch (round __mode_switch))
   (setq _pause_button __pause_button)
   (setq _custom_button_l __custom_button_l)
   (setq _custom_button_r __custom_button_r)
   (setq _wheel (float __wheel))
   (setq _trigger __trigger)
   (setq _mouse_x (round __mouse_x))
   (setq _mouse_y (round __mouse_y))
   (setq _mouse_wheel (round __mouse_wheel))
   (setq _mouse_left_down __mouse_left_down)
   (setq _mouse_right_down __mouse_right_down)
   (setq _mouse_mid_down __mouse_mid_down)
   (setq _key_w __key_w)
   (setq _key_s __key_s)
   (setq _key_a __key_a)
   (setq _key_d __key_d)
   (setq _key_shift __key_shift)
   (setq _key_ctrl __key_ctrl)
   (setq _key_q __key_q)
   (setq _key_e __key_e)
   (setq _key_r __key_r)
   (setq _key_f __key_f)
   (setq _key_g __key_g)
   (setq _key_z __key_z)
   (setq _key_x __key_x)
   (setq _key_c __key_c)
   (setq _key_v __key_v)
   (setq _key_b __key_b)
   self)
  (:joystick_r_x
   (&optional __joystick_r_x)
   (if __joystick_r_x (setq _joystick_r_x __joystick_r_x)) _joystick_r_x)
  (:joystick_r_y
   (&optional __joystick_r_y)
   (if __joystick_r_y (setq _joystick_r_y __joystick_r_y)) _joystick_r_y)
  (:joystick_l_y
   (&optional __joystick_l_y)
   (if __joystick_l_y (setq _joystick_l_y __joystick_l_y)) _joystick_l_y)
  (:joystick_l_x
   (&optional __joystick_l_x)
   (if __joystick_l_x (setq _joystick_l_x __joystick_l_x)) _joystick_l_x)
  (:mode_switch
   (&optional __mode_switch)
   (if __mode_switch (setq _mode_switch __mode_switch)) _mode_switch)
  (:pause_button
   (&optional (__pause_button :null))
   (if (not (eq __pause_button :null)) (setq _pause_button __pause_button)) _pause_button)
  (:custom_button_l
   (&optional (__custom_button_l :null))
   (if (not (eq __custom_button_l :null)) (setq _custom_button_l __custom_button_l)) _custom_button_l)
  (:custom_button_r
   (&optional (__custom_button_r :null))
   (if (not (eq __custom_button_r :null)) (setq _custom_button_r __custom_button_r)) _custom_button_r)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:trigger
   (&optional (__trigger :null))
   (if (not (eq __trigger :null)) (setq _trigger __trigger)) _trigger)
  (:mouse_x
   (&optional __mouse_x)
   (if __mouse_x (setq _mouse_x __mouse_x)) _mouse_x)
  (:mouse_y
   (&optional __mouse_y)
   (if __mouse_y (setq _mouse_y __mouse_y)) _mouse_y)
  (:mouse_wheel
   (&optional __mouse_wheel)
   (if __mouse_wheel (setq _mouse_wheel __mouse_wheel)) _mouse_wheel)
  (:mouse_left_down
   (&optional (__mouse_left_down :null))
   (if (not (eq __mouse_left_down :null)) (setq _mouse_left_down __mouse_left_down)) _mouse_left_down)
  (:mouse_right_down
   (&optional (__mouse_right_down :null))
   (if (not (eq __mouse_right_down :null)) (setq _mouse_right_down __mouse_right_down)) _mouse_right_down)
  (:mouse_mid_down
   (&optional (__mouse_mid_down :null))
   (if (not (eq __mouse_mid_down :null)) (setq _mouse_mid_down __mouse_mid_down)) _mouse_mid_down)
  (:key_w
   (&optional (__key_w :null))
   (if (not (eq __key_w :null)) (setq _key_w __key_w)) _key_w)
  (:key_s
   (&optional (__key_s :null))
   (if (not (eq __key_s :null)) (setq _key_s __key_s)) _key_s)
  (:key_a
   (&optional (__key_a :null))
   (if (not (eq __key_a :null)) (setq _key_a __key_a)) _key_a)
  (:key_d
   (&optional (__key_d :null))
   (if (not (eq __key_d :null)) (setq _key_d __key_d)) _key_d)
  (:key_shift
   (&optional (__key_shift :null))
   (if (not (eq __key_shift :null)) (setq _key_shift __key_shift)) _key_shift)
  (:key_ctrl
   (&optional (__key_ctrl :null))
   (if (not (eq __key_ctrl :null)) (setq _key_ctrl __key_ctrl)) _key_ctrl)
  (:key_q
   (&optional (__key_q :null))
   (if (not (eq __key_q :null)) (setq _key_q __key_q)) _key_q)
  (:key_e
   (&optional (__key_e :null))
   (if (not (eq __key_e :null)) (setq _key_e __key_e)) _key_e)
  (:key_r
   (&optional (__key_r :null))
   (if (not (eq __key_r :null)) (setq _key_r __key_r)) _key_r)
  (:key_f
   (&optional (__key_f :null))
   (if (not (eq __key_f :null)) (setq _key_f __key_f)) _key_f)
  (:key_g
   (&optional (__key_g :null))
   (if (not (eq __key_g :null)) (setq _key_g __key_g)) _key_g)
  (:key_z
   (&optional (__key_z :null))
   (if (not (eq __key_z :null)) (setq _key_z __key_z)) _key_z)
  (:key_x
   (&optional (__key_x :null))
   (if (not (eq __key_x :null)) (setq _key_x __key_x)) _key_x)
  (:key_c
   (&optional (__key_c :null))
   (if (not (eq __key_c :null)) (setq _key_c __key_c)) _key_c)
  (:key_v
   (&optional (__key_v :null))
   (if (not (eq __key_v :null)) (setq _key_v __key_v)) _key_v)
  (:key_b
   (&optional (__key_b :null))
   (if (not (eq __key_b :null)) (setq _key_b __key_b)) _key_b)
  (:serialization-length
   ()
   (+
    ;; float64 _joystick_r_x
    8
    ;; float64 _joystick_r_y
    8
    ;; float64 _joystick_l_y
    8
    ;; float64 _joystick_l_x
    8
    ;; uint8 _mode_switch
    1
    ;; bool _pause_button
    1
    ;; bool _custom_button_l
    1
    ;; bool _custom_button_r
    1
    ;; float64 _wheel
    8
    ;; bool _trigger
    1
    ;; int16 _mouse_x
    2
    ;; int16 _mouse_y
    2
    ;; int16 _mouse_wheel
    2
    ;; bool _mouse_left_down
    1
    ;; bool _mouse_right_down
    1
    ;; bool _mouse_mid_down
    1
    ;; bool _key_w
    1
    ;; bool _key_s
    1
    ;; bool _key_a
    1
    ;; bool _key_d
    1
    ;; bool _key_shift
    1
    ;; bool _key_ctrl
    1
    ;; bool _key_q
    1
    ;; bool _key_e
    1
    ;; bool _key_r
    1
    ;; bool _key_f
    1
    ;; bool _key_g
    1
    ;; bool _key_z
    1
    ;; bool _key_x
    1
    ;; bool _key_c
    1
    ;; bool _key_v
    1
    ;; bool _key_b
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _joystick_r_x
       (sys::poke _joystick_r_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joystick_r_y
       (sys::poke _joystick_r_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joystick_l_y
       (sys::poke _joystick_l_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _joystick_l_x
       (sys::poke _joystick_l_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _mode_switch
       (write-byte _mode_switch s)
     ;; bool _pause_button
       (if _pause_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _custom_button_l
       (if _custom_button_l (write-byte -1 s) (write-byte 0 s))
     ;; bool _custom_button_r
       (if _custom_button_r (write-byte -1 s) (write-byte 0 s))
     ;; float64 _wheel
       (sys::poke _wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _trigger
       (if _trigger (write-byte -1 s) (write-byte 0 s))
     ;; int16 _mouse_x
       (write-word _mouse_x s)
     ;; int16 _mouse_y
       (write-word _mouse_y s)
     ;; int16 _mouse_wheel
       (write-word _mouse_wheel s)
     ;; bool _mouse_left_down
       (if _mouse_left_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _mouse_right_down
       (if _mouse_right_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _mouse_mid_down
       (if _mouse_mid_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_w
       (if _key_w (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_s
       (if _key_s (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_a
       (if _key_a (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_d
       (if _key_d (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_shift
       (if _key_shift (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_ctrl
       (if _key_ctrl (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_q
       (if _key_q (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_e
       (if _key_e (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_r
       (if _key_r (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_f
       (if _key_f (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_g
       (if _key_g (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_z
       (if _key_z (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_x
       (if _key_x (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_c
       (if _key_c (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_v
       (if _key_v (write-byte -1 s) (write-byte 0 s))
     ;; bool _key_b
       (if _key_b (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _joystick_r_x
     (setq _joystick_r_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joystick_r_y
     (setq _joystick_r_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joystick_l_y
     (setq _joystick_l_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _joystick_l_x
     (setq _joystick_l_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _mode_switch
     (setq _mode_switch (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _pause_button
     (setq _pause_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _custom_button_l
     (setq _custom_button_l (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _custom_button_r
     (setq _custom_button_r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _wheel
     (setq _wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _trigger
     (setq _trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int16 _mouse_x
     (setq _mouse_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_y
     (setq _mouse_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_wheel
     (setq _mouse_wheel (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _mouse_left_down
     (setq _mouse_left_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mouse_right_down
     (setq _mouse_right_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mouse_mid_down
     (setq _mouse_mid_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_w
     (setq _key_w (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_s
     (setq _key_s (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_a
     (setq _key_a (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_d
     (setq _key_d (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_shift
     (setq _key_shift (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_ctrl
     (setq _key_ctrl (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_q
     (setq _key_q (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_e
     (setq _key_e (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_r
     (setq _key_r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_f
     (setq _key_f (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_g
     (setq _key_g (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_z
     (setq _key_z (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_x
     (setq _key_x (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_c
     (setq _key_c (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_v
     (setq _key_v (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _key_b
     (setq _key_b (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::VTReceiverControlData :md5sum-) "ccb3d14b76ed93d4c7a7597427ff5b6f")
(setf (get rm_msgs::VTReceiverControlData :datatype-) "rm_msgs/VTReceiverControlData")
(setf (get rm_msgs::VTReceiverControlData :definition-)
      "float64 joystick_r_x
float64 joystick_r_y
float64 joystick_l_y
float64 joystick_l_x

uint8 mode_switch
uint8 MODE_C = 0
uint8 MODE_N = 1
uint8 MODE_S = 2

bool pause_button
bool custom_button_l
bool custom_button_r
float64 wheel
bool trigger

int16 mouse_x
int16 mouse_y
int16 mouse_wheel
bool mouse_left_down
bool mouse_right_down
bool mouse_mid_down

bool key_w
bool key_s
bool key_a
bool key_d
bool key_shift
bool key_ctrl
bool key_q
bool key_e
bool key_r
bool key_f
bool key_g
bool key_z
bool key_x
bool key_c
bool key_v
bool key_b

")



(provide :rm_msgs/VTReceiverControlData "ccb3d14b76ed93d4c7a7597427ff5b6f")


