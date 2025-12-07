;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DbusData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DbusData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DBUSDATA")
  (make-package "RM_MSGS::DBUSDATA"))

(in-package "ROS")
;;//! \htmlinclude DbusData.msg.html


(intern "*UP*" (find-package "RM_MSGS::DBUSDATA"))
(shadow '*UP* (find-package "RM_MSGS::DBUSDATA"))
(defconstant rm_msgs::DbusData::*UP* 1)
(intern "*DOWN*" (find-package "RM_MSGS::DBUSDATA"))
(shadow '*DOWN* (find-package "RM_MSGS::DBUSDATA"))
(defconstant rm_msgs::DbusData::*DOWN* 2)
(intern "*MID*" (find-package "RM_MSGS::DBUSDATA"))
(shadow '*MID* (find-package "RM_MSGS::DBUSDATA"))
(defconstant rm_msgs::DbusData::*MID* 3)

(defun rm_msgs::DbusData-to-symbol (const)
  (cond
        ((= const 1) 'rm_msgs::DbusData::*UP*)
        ((= const 2) 'rm_msgs::DbusData::*DOWN*)
        ((= const 3) 'rm_msgs::DbusData::*MID*)
        (t nil)))

(defclass rm_msgs::DbusData
  :super ros::object
  :slots (_ch_l_x _ch_l_y _ch_r_x _ch_r_y _s_l _s_r _wheel _m_x _m_y _m_z _p_l _p_r _key_w _key_s _key_a _key_d _key_shift _key_ctrl _key_q _key_e _key_r _key_f _key_g _key_z _key_x _key_c _key_v _key_b _stamp ))

(defmethod rm_msgs::DbusData
  (:init
   (&key
    ((:ch_l_x __ch_l_x) 0.0)
    ((:ch_l_y __ch_l_y) 0.0)
    ((:ch_r_x __ch_r_x) 0.0)
    ((:ch_r_y __ch_r_y) 0.0)
    ((:s_l __s_l) 0)
    ((:s_r __s_r) 0)
    ((:wheel __wheel) 0.0)
    ((:m_x __m_x) 0.0)
    ((:m_y __m_y) 0.0)
    ((:m_z __m_z) 0.0)
    ((:p_l __p_l) nil)
    ((:p_r __p_r) nil)
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
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _ch_l_x (float __ch_l_x))
   (setq _ch_l_y (float __ch_l_y))
   (setq _ch_r_x (float __ch_r_x))
   (setq _ch_r_y (float __ch_r_y))
   (setq _s_l (round __s_l))
   (setq _s_r (round __s_r))
   (setq _wheel (float __wheel))
   (setq _m_x (float __m_x))
   (setq _m_y (float __m_y))
   (setq _m_z (float __m_z))
   (setq _p_l __p_l)
   (setq _p_r __p_r)
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
   (setq _stamp __stamp)
   self)
  (:ch_l_x
   (&optional __ch_l_x)
   (if __ch_l_x (setq _ch_l_x __ch_l_x)) _ch_l_x)
  (:ch_l_y
   (&optional __ch_l_y)
   (if __ch_l_y (setq _ch_l_y __ch_l_y)) _ch_l_y)
  (:ch_r_x
   (&optional __ch_r_x)
   (if __ch_r_x (setq _ch_r_x __ch_r_x)) _ch_r_x)
  (:ch_r_y
   (&optional __ch_r_y)
   (if __ch_r_y (setq _ch_r_y __ch_r_y)) _ch_r_y)
  (:s_l
   (&optional __s_l)
   (if __s_l (setq _s_l __s_l)) _s_l)
  (:s_r
   (&optional __s_r)
   (if __s_r (setq _s_r __s_r)) _s_r)
  (:wheel
   (&optional __wheel)
   (if __wheel (setq _wheel __wheel)) _wheel)
  (:m_x
   (&optional __m_x)
   (if __m_x (setq _m_x __m_x)) _m_x)
  (:m_y
   (&optional __m_y)
   (if __m_y (setq _m_y __m_y)) _m_y)
  (:m_z
   (&optional __m_z)
   (if __m_z (setq _m_z __m_z)) _m_z)
  (:p_l
   (&optional (__p_l :null))
   (if (not (eq __p_l :null)) (setq _p_l __p_l)) _p_l)
  (:p_r
   (&optional (__p_r :null))
   (if (not (eq __p_r :null)) (setq _p_r __p_r)) _p_r)
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
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float64 _ch_l_x
    8
    ;; float64 _ch_l_y
    8
    ;; float64 _ch_r_x
    8
    ;; float64 _ch_r_y
    8
    ;; uint8 _s_l
    1
    ;; uint8 _s_r
    1
    ;; float64 _wheel
    8
    ;; float64 _m_x
    8
    ;; float64 _m_y
    8
    ;; float64 _m_z
    8
    ;; bool _p_l
    1
    ;; bool _p_r
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
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _ch_l_x
       (sys::poke _ch_l_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_l_y
       (sys::poke _ch_l_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_r_x
       (sys::poke _ch_r_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ch_r_y
       (sys::poke _ch_r_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _s_l
       (write-byte _s_l s)
     ;; uint8 _s_r
       (write-byte _s_r s)
     ;; float64 _wheel
       (sys::poke _wheel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_x
       (sys::poke _m_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_y
       (sys::poke _m_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _m_z
       (sys::poke _m_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _p_l
       (if _p_l (write-byte -1 s) (write-byte 0 s))
     ;; bool _p_r
       (if _p_r (write-byte -1 s) (write-byte 0 s))
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
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _ch_l_x
     (setq _ch_l_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_l_y
     (setq _ch_l_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_r_x
     (setq _ch_r_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ch_r_y
     (setq _ch_r_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _s_l
     (setq _s_l (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _s_r
     (setq _s_r (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _wheel
     (setq _wheel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_x
     (setq _m_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_y
     (setq _m_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _m_z
     (setq _m_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _p_l
     (setq _p_l (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _p_r
     (setq _p_r (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DbusData :md5sum-) "0220a682827f4bc1471e95e351489508")
(setf (get rm_msgs::DbusData :datatype-) "rm_msgs/DbusData")
(setf (get rm_msgs::DbusData :definition-)
      "uint8 UP = 1
uint8 DOWN = 2
uint8 MID = 3

float64 ch_l_x
float64 ch_l_y
float64 ch_r_x
float64 ch_r_y

uint8 s_l
uint8 s_r
float64 wheel
#mouse
float64 m_x
float64 m_y
float64 m_z
bool p_l
bool p_r
#key board
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

time stamp

")



(provide :rm_msgs/DbusData "0220a682827f4bc1471e95e351489508")


