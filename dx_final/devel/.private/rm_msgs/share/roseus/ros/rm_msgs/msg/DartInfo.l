;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DartInfo)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DartInfo (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DARTINFO")
  (make-package "RM_MSGS::DARTINFO"))

(in-package "ROS")
;;//! \htmlinclude DartInfo.msg.html


(defclass rm_msgs::DartInfo
  :super ros::object
  :slots (_dart_remaining_time _dart_last_aim_state _enemy_total_hit_received _dart_current_target _stamp ))

(defmethod rm_msgs::DartInfo
  (:init
   (&key
    ((:dart_remaining_time __dart_remaining_time) 0)
    ((:dart_last_aim_state __dart_last_aim_state) 0)
    ((:enemy_total_hit_received __enemy_total_hit_received) 0)
    ((:dart_current_target __dart_current_target) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _dart_remaining_time (round __dart_remaining_time))
   (setq _dart_last_aim_state (round __dart_last_aim_state))
   (setq _enemy_total_hit_received (round __enemy_total_hit_received))
   (setq _dart_current_target (round __dart_current_target))
   (setq _stamp __stamp)
   self)
  (:dart_remaining_time
   (&optional __dart_remaining_time)
   (if __dart_remaining_time (setq _dart_remaining_time __dart_remaining_time)) _dart_remaining_time)
  (:dart_last_aim_state
   (&optional __dart_last_aim_state)
   (if __dart_last_aim_state (setq _dart_last_aim_state __dart_last_aim_state)) _dart_last_aim_state)
  (:enemy_total_hit_received
   (&optional __enemy_total_hit_received)
   (if __enemy_total_hit_received (setq _enemy_total_hit_received __enemy_total_hit_received)) _enemy_total_hit_received)
  (:dart_current_target
   (&optional __dart_current_target)
   (if __dart_current_target (setq _dart_current_target __dart_current_target)) _dart_current_target)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _dart_remaining_time
    1
    ;; uint8 _dart_last_aim_state
    1
    ;; uint8 _enemy_total_hit_received
    1
    ;; uint8 _dart_current_target
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dart_remaining_time
       (write-byte _dart_remaining_time s)
     ;; uint8 _dart_last_aim_state
       (write-byte _dart_last_aim_state s)
     ;; uint8 _enemy_total_hit_received
       (write-byte _enemy_total_hit_received s)
     ;; uint8 _dart_current_target
       (write-byte _dart_current_target s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dart_remaining_time
     (setq _dart_remaining_time (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dart_last_aim_state
     (setq _dart_last_aim_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _enemy_total_hit_received
     (setq _enemy_total_hit_received (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dart_current_target
     (setq _dart_current_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DartInfo :md5sum-) "73e2079390bc6e9a5cb0850ee23279ca")
(setf (get rm_msgs::DartInfo :datatype-) "rm_msgs/DartInfo")
(setf (get rm_msgs::DartInfo :definition-)
      "uint8 dart_remaining_time
uint8 dart_last_aim_state
uint8 enemy_total_hit_received
uint8 dart_current_target

time stamp

")



(provide :rm_msgs/DartInfo "73e2079390bc6e9a5cb0850ee23279ca")


