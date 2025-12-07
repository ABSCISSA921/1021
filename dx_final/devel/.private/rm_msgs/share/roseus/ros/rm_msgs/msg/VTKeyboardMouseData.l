;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::VTKeyboardMouseData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'VTKeyboardMouseData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::VTKEYBOARDMOUSEDATA")
  (make-package "RM_MSGS::VTKEYBOARDMOUSEDATA"))

(in-package "ROS")
;;//! \htmlinclude VTKeyboardMouseData.msg.html


(defclass rm_msgs::VTKeyboardMouseData
  :super ros::object
  :slots (_mouse_x _mouse_y _mouse_z _left_button_down _right_button_down _key_w _key_s _key_a _key_d _key_shift _key_ctrl _key_q _key_e _key_r _key_f _key_g _key_z _key_x _key_c _key_v _key_b ))

(defmethod rm_msgs::VTKeyboardMouseData
  (:init
   (&key
    ((:mouse_x __mouse_x) 0)
    ((:mouse_y __mouse_y) 0)
    ((:mouse_z __mouse_z) 0)
    ((:left_button_down __left_button_down) nil)
    ((:right_button_down __right_button_down) nil)
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
   (setq _mouse_x (round __mouse_x))
   (setq _mouse_y (round __mouse_y))
   (setq _mouse_z (round __mouse_z))
   (setq _left_button_down __left_button_down)
   (setq _right_button_down __right_button_down)
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
  (:mouse_x
   (&optional __mouse_x)
   (if __mouse_x (setq _mouse_x __mouse_x)) _mouse_x)
  (:mouse_y
   (&optional __mouse_y)
   (if __mouse_y (setq _mouse_y __mouse_y)) _mouse_y)
  (:mouse_z
   (&optional __mouse_z)
   (if __mouse_z (setq _mouse_z __mouse_z)) _mouse_z)
  (:left_button_down
   (&optional (__left_button_down :null))
   (if (not (eq __left_button_down :null)) (setq _left_button_down __left_button_down)) _left_button_down)
  (:right_button_down
   (&optional (__right_button_down :null))
   (if (not (eq __right_button_down :null)) (setq _right_button_down __right_button_down)) _right_button_down)
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
    ;; int16 _mouse_x
    2
    ;; int16 _mouse_y
    2
    ;; int16 _mouse_z
    2
    ;; bool _left_button_down
    1
    ;; bool _right_button_down
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
     ;; int16 _mouse_x
       (write-word _mouse_x s)
     ;; int16 _mouse_y
       (write-word _mouse_y s)
     ;; int16 _mouse_z
       (write-word _mouse_z s)
     ;; bool _left_button_down
       (if _left_button_down (write-byte -1 s) (write-byte 0 s))
     ;; bool _right_button_down
       (if _right_button_down (write-byte -1 s) (write-byte 0 s))
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
   ;; int16 _mouse_x
     (setq _mouse_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_y
     (setq _mouse_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _mouse_z
     (setq _mouse_z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _left_button_down
     (setq _left_button_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right_button_down
     (setq _right_button_down (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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

(setf (get rm_msgs::VTKeyboardMouseData :md5sum-) "d9f68e8d3ee2022670ec30249830ac1d")
(setf (get rm_msgs::VTKeyboardMouseData :datatype-) "rm_msgs/VTKeyboardMouseData")
(setf (get rm_msgs::VTKeyboardMouseData :definition-)
      "int16 mouse_x
int16 mouse_y
int16 mouse_z
bool left_button_down
bool right_button_down

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



(provide :rm_msgs/VTKeyboardMouseData "d9f68e8d3ee2022670ec30249830ac1d")


