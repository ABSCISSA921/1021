;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::IcraBuffDebuffZoneStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'IcraBuffDebuffZoneStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ICRABUFFDEBUFFZONESTATUS")
  (make-package "RM_MSGS::ICRABUFFDEBUFFZONESTATUS"))

(in-package "ROS")
;;//! \htmlinclude IcraBuffDebuffZoneStatus.msg.html


(defclass rm_msgs::IcraBuffDebuffZoneStatus
  :super ros::object
  :slots (_f_1_zone_status _f_1_zone_buff_debuff_status _f_2_zone_status _f_2_zone_buff_debuff_status _f_3_zone_status _f_3_zone_buff_debuff_status _f_4_zone_status _f_4_zone_buff_debuff_status _f_5_zone_status _f_5_zone_buff_debuff_status _f_6_zone_status _f_6_zone_buff_debuff_status _red_1_bullet_left _red_2_bullet_left _blue_1_bullet_left _blue_2_bullet_left _stamp ))

(defmethod rm_msgs::IcraBuffDebuffZoneStatus
  (:init
   (&key
    ((:f_1_zone_status __f_1_zone_status) 0)
    ((:f_1_zone_buff_debuff_status __f_1_zone_buff_debuff_status) 0)
    ((:f_2_zone_status __f_2_zone_status) 0)
    ((:f_2_zone_buff_debuff_status __f_2_zone_buff_debuff_status) 0)
    ((:f_3_zone_status __f_3_zone_status) 0)
    ((:f_3_zone_buff_debuff_status __f_3_zone_buff_debuff_status) 0)
    ((:f_4_zone_status __f_4_zone_status) 0)
    ((:f_4_zone_buff_debuff_status __f_4_zone_buff_debuff_status) 0)
    ((:f_5_zone_status __f_5_zone_status) 0)
    ((:f_5_zone_buff_debuff_status __f_5_zone_buff_debuff_status) 0)
    ((:f_6_zone_status __f_6_zone_status) 0)
    ((:f_6_zone_buff_debuff_status __f_6_zone_buff_debuff_status) 0)
    ((:red_1_bullet_left __red_1_bullet_left) 0)
    ((:red_2_bullet_left __red_2_bullet_left) 0)
    ((:blue_1_bullet_left __blue_1_bullet_left) 0)
    ((:blue_2_bullet_left __blue_2_bullet_left) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _f_1_zone_status (round __f_1_zone_status))
   (setq _f_1_zone_buff_debuff_status (round __f_1_zone_buff_debuff_status))
   (setq _f_2_zone_status (round __f_2_zone_status))
   (setq _f_2_zone_buff_debuff_status (round __f_2_zone_buff_debuff_status))
   (setq _f_3_zone_status (round __f_3_zone_status))
   (setq _f_3_zone_buff_debuff_status (round __f_3_zone_buff_debuff_status))
   (setq _f_4_zone_status (round __f_4_zone_status))
   (setq _f_4_zone_buff_debuff_status (round __f_4_zone_buff_debuff_status))
   (setq _f_5_zone_status (round __f_5_zone_status))
   (setq _f_5_zone_buff_debuff_status (round __f_5_zone_buff_debuff_status))
   (setq _f_6_zone_status (round __f_6_zone_status))
   (setq _f_6_zone_buff_debuff_status (round __f_6_zone_buff_debuff_status))
   (setq _red_1_bullet_left (round __red_1_bullet_left))
   (setq _red_2_bullet_left (round __red_2_bullet_left))
   (setq _blue_1_bullet_left (round __blue_1_bullet_left))
   (setq _blue_2_bullet_left (round __blue_2_bullet_left))
   (setq _stamp __stamp)
   self)
  (:f_1_zone_status
   (&optional __f_1_zone_status)
   (if __f_1_zone_status (setq _f_1_zone_status __f_1_zone_status)) _f_1_zone_status)
  (:f_1_zone_buff_debuff_status
   (&optional __f_1_zone_buff_debuff_status)
   (if __f_1_zone_buff_debuff_status (setq _f_1_zone_buff_debuff_status __f_1_zone_buff_debuff_status)) _f_1_zone_buff_debuff_status)
  (:f_2_zone_status
   (&optional __f_2_zone_status)
   (if __f_2_zone_status (setq _f_2_zone_status __f_2_zone_status)) _f_2_zone_status)
  (:f_2_zone_buff_debuff_status
   (&optional __f_2_zone_buff_debuff_status)
   (if __f_2_zone_buff_debuff_status (setq _f_2_zone_buff_debuff_status __f_2_zone_buff_debuff_status)) _f_2_zone_buff_debuff_status)
  (:f_3_zone_status
   (&optional __f_3_zone_status)
   (if __f_3_zone_status (setq _f_3_zone_status __f_3_zone_status)) _f_3_zone_status)
  (:f_3_zone_buff_debuff_status
   (&optional __f_3_zone_buff_debuff_status)
   (if __f_3_zone_buff_debuff_status (setq _f_3_zone_buff_debuff_status __f_3_zone_buff_debuff_status)) _f_3_zone_buff_debuff_status)
  (:f_4_zone_status
   (&optional __f_4_zone_status)
   (if __f_4_zone_status (setq _f_4_zone_status __f_4_zone_status)) _f_4_zone_status)
  (:f_4_zone_buff_debuff_status
   (&optional __f_4_zone_buff_debuff_status)
   (if __f_4_zone_buff_debuff_status (setq _f_4_zone_buff_debuff_status __f_4_zone_buff_debuff_status)) _f_4_zone_buff_debuff_status)
  (:f_5_zone_status
   (&optional __f_5_zone_status)
   (if __f_5_zone_status (setq _f_5_zone_status __f_5_zone_status)) _f_5_zone_status)
  (:f_5_zone_buff_debuff_status
   (&optional __f_5_zone_buff_debuff_status)
   (if __f_5_zone_buff_debuff_status (setq _f_5_zone_buff_debuff_status __f_5_zone_buff_debuff_status)) _f_5_zone_buff_debuff_status)
  (:f_6_zone_status
   (&optional __f_6_zone_status)
   (if __f_6_zone_status (setq _f_6_zone_status __f_6_zone_status)) _f_6_zone_status)
  (:f_6_zone_buff_debuff_status
   (&optional __f_6_zone_buff_debuff_status)
   (if __f_6_zone_buff_debuff_status (setq _f_6_zone_buff_debuff_status __f_6_zone_buff_debuff_status)) _f_6_zone_buff_debuff_status)
  (:red_1_bullet_left
   (&optional __red_1_bullet_left)
   (if __red_1_bullet_left (setq _red_1_bullet_left __red_1_bullet_left)) _red_1_bullet_left)
  (:red_2_bullet_left
   (&optional __red_2_bullet_left)
   (if __red_2_bullet_left (setq _red_2_bullet_left __red_2_bullet_left)) _red_2_bullet_left)
  (:blue_1_bullet_left
   (&optional __blue_1_bullet_left)
   (if __blue_1_bullet_left (setq _blue_1_bullet_left __blue_1_bullet_left)) _blue_1_bullet_left)
  (:blue_2_bullet_left
   (&optional __blue_2_bullet_left)
   (if __blue_2_bullet_left (setq _blue_2_bullet_left __blue_2_bullet_left)) _blue_2_bullet_left)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _f_1_zone_status
    1
    ;; uint8 _f_1_zone_buff_debuff_status
    1
    ;; uint8 _f_2_zone_status
    1
    ;; uint8 _f_2_zone_buff_debuff_status
    1
    ;; uint8 _f_3_zone_status
    1
    ;; uint8 _f_3_zone_buff_debuff_status
    1
    ;; uint8 _f_4_zone_status
    1
    ;; uint8 _f_4_zone_buff_debuff_status
    1
    ;; uint8 _f_5_zone_status
    1
    ;; uint8 _f_5_zone_buff_debuff_status
    1
    ;; uint8 _f_6_zone_status
    1
    ;; uint8 _f_6_zone_buff_debuff_status
    1
    ;; uint16 _red_1_bullet_left
    2
    ;; uint16 _red_2_bullet_left
    2
    ;; uint16 _blue_1_bullet_left
    2
    ;; uint16 _blue_2_bullet_left
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _f_1_zone_status
       (write-byte _f_1_zone_status s)
     ;; uint8 _f_1_zone_buff_debuff_status
       (write-byte _f_1_zone_buff_debuff_status s)
     ;; uint8 _f_2_zone_status
       (write-byte _f_2_zone_status s)
     ;; uint8 _f_2_zone_buff_debuff_status
       (write-byte _f_2_zone_buff_debuff_status s)
     ;; uint8 _f_3_zone_status
       (write-byte _f_3_zone_status s)
     ;; uint8 _f_3_zone_buff_debuff_status
       (write-byte _f_3_zone_buff_debuff_status s)
     ;; uint8 _f_4_zone_status
       (write-byte _f_4_zone_status s)
     ;; uint8 _f_4_zone_buff_debuff_status
       (write-byte _f_4_zone_buff_debuff_status s)
     ;; uint8 _f_5_zone_status
       (write-byte _f_5_zone_status s)
     ;; uint8 _f_5_zone_buff_debuff_status
       (write-byte _f_5_zone_buff_debuff_status s)
     ;; uint8 _f_6_zone_status
       (write-byte _f_6_zone_status s)
     ;; uint8 _f_6_zone_buff_debuff_status
       (write-byte _f_6_zone_buff_debuff_status s)
     ;; uint16 _red_1_bullet_left
       (write-word _red_1_bullet_left s)
     ;; uint16 _red_2_bullet_left
       (write-word _red_2_bullet_left s)
     ;; uint16 _blue_1_bullet_left
       (write-word _blue_1_bullet_left s)
     ;; uint16 _blue_2_bullet_left
       (write-word _blue_2_bullet_left s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _f_1_zone_status
     (setq _f_1_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_1_zone_buff_debuff_status
     (setq _f_1_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_2_zone_status
     (setq _f_2_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_2_zone_buff_debuff_status
     (setq _f_2_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_3_zone_status
     (setq _f_3_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_3_zone_buff_debuff_status
     (setq _f_3_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_4_zone_status
     (setq _f_4_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_4_zone_buff_debuff_status
     (setq _f_4_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_5_zone_status
     (setq _f_5_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_5_zone_buff_debuff_status
     (setq _f_5_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_6_zone_status
     (setq _f_6_zone_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _f_6_zone_buff_debuff_status
     (setq _f_6_zone_buff_debuff_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _red_1_bullet_left
     (setq _red_1_bullet_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _red_2_bullet_left
     (setq _red_2_bullet_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_1_bullet_left
     (setq _blue_1_bullet_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _blue_2_bullet_left
     (setq _blue_2_bullet_left (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::IcraBuffDebuffZoneStatus :md5sum-) "2f6fc310c2ebda62f2d87ce47e0d1eb0")
(setf (get rm_msgs::IcraBuffDebuffZoneStatus :datatype-) "rm_msgs/IcraBuffDebuffZoneStatus")
(setf (get rm_msgs::IcraBuffDebuffZoneStatus :definition-)
      "uint8 f_1_zone_status
uint8 f_1_zone_buff_debuff_status
uint8 f_2_zone_status
uint8 f_2_zone_buff_debuff_status
uint8 f_3_zone_status
uint8 f_3_zone_buff_debuff_status
uint8 f_4_zone_status
uint8 f_4_zone_buff_debuff_status
uint8 f_5_zone_status
uint8 f_5_zone_buff_debuff_status
uint8 f_6_zone_status
uint8 f_6_zone_buff_debuff_status
uint16 red_1_bullet_left
uint16 red_2_bullet_left
uint16 blue_1_bullet_left
uint16 blue_2_bullet_left

time stamp

")



(provide :rm_msgs/IcraBuffDebuffZoneStatus "2f6fc310c2ebda62f2d87ce47e0d1eb0")


