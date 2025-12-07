;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ManualToReferee)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ManualToReferee (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::MANUALTOREFEREE")
  (make-package "RM_MSGS::MANUALTOREFEREE"))

(in-package "ROS")
;;//! \htmlinclude ManualToReferee.msg.html


(defclass rm_msgs::ManualToReferee
  :super ros::object
  :slots (_power_limit_state _start_burst_time _shoot_frequency _cover_state _gimbal_eject _hero_eject_flag _engineer_calibration_state _det_color _det_target _det_armor_target _det_exposure _stamp ))

(defmethod rm_msgs::ManualToReferee
  (:init
   (&key
    ((:power_limit_state __power_limit_state) 0)
    ((:start_burst_time __start_burst_time) (instance ros::time :init))
    ((:shoot_frequency __shoot_frequency) 0)
    ((:cover_state __cover_state) nil)
    ((:gimbal_eject __gimbal_eject) nil)
    ((:hero_eject_flag __hero_eject_flag) nil)
    ((:engineer_calibration_state __engineer_calibration_state) nil)
    ((:det_color __det_color) 0)
    ((:det_target __det_target) 0)
    ((:det_armor_target __det_armor_target) 0)
    ((:det_exposure __det_exposure) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _power_limit_state (round __power_limit_state))
   (setq _start_burst_time __start_burst_time)
   (setq _shoot_frequency (round __shoot_frequency))
   (setq _cover_state __cover_state)
   (setq _gimbal_eject __gimbal_eject)
   (setq _hero_eject_flag __hero_eject_flag)
   (setq _engineer_calibration_state __engineer_calibration_state)
   (setq _det_color (round __det_color))
   (setq _det_target (round __det_target))
   (setq _det_armor_target (round __det_armor_target))
   (setq _det_exposure (round __det_exposure))
   (setq _stamp __stamp)
   self)
  (:power_limit_state
   (&optional __power_limit_state)
   (if __power_limit_state (setq _power_limit_state __power_limit_state)) _power_limit_state)
  (:start_burst_time
   (&optional __start_burst_time)
   (if __start_burst_time (setq _start_burst_time __start_burst_time)) _start_burst_time)
  (:shoot_frequency
   (&optional __shoot_frequency)
   (if __shoot_frequency (setq _shoot_frequency __shoot_frequency)) _shoot_frequency)
  (:cover_state
   (&optional (__cover_state :null))
   (if (not (eq __cover_state :null)) (setq _cover_state __cover_state)) _cover_state)
  (:gimbal_eject
   (&optional (__gimbal_eject :null))
   (if (not (eq __gimbal_eject :null)) (setq _gimbal_eject __gimbal_eject)) _gimbal_eject)
  (:hero_eject_flag
   (&optional (__hero_eject_flag :null))
   (if (not (eq __hero_eject_flag :null)) (setq _hero_eject_flag __hero_eject_flag)) _hero_eject_flag)
  (:engineer_calibration_state
   (&optional (__engineer_calibration_state :null))
   (if (not (eq __engineer_calibration_state :null)) (setq _engineer_calibration_state __engineer_calibration_state)) _engineer_calibration_state)
  (:det_color
   (&optional __det_color)
   (if __det_color (setq _det_color __det_color)) _det_color)
  (:det_target
   (&optional __det_target)
   (if __det_target (setq _det_target __det_target)) _det_target)
  (:det_armor_target
   (&optional __det_armor_target)
   (if __det_armor_target (setq _det_armor_target __det_armor_target)) _det_armor_target)
  (:det_exposure
   (&optional __det_exposure)
   (if __det_exposure (setq _det_exposure __det_exposure)) _det_exposure)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _power_limit_state
    1
    ;; time _start_burst_time
    8
    ;; uint8 _shoot_frequency
    1
    ;; bool _cover_state
    1
    ;; bool _gimbal_eject
    1
    ;; bool _hero_eject_flag
    1
    ;; bool _engineer_calibration_state
    1
    ;; uint8 _det_color
    1
    ;; uint8 _det_target
    1
    ;; uint8 _det_armor_target
    1
    ;; uint8 _det_exposure
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _power_limit_state
       (write-byte _power_limit_state s)
     ;; time _start_burst_time
       (write-long (send _start_burst_time :sec) s) (write-long (send _start_burst_time :nsec) s)
     ;; uint8 _shoot_frequency
       (write-byte _shoot_frequency s)
     ;; bool _cover_state
       (if _cover_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _gimbal_eject
       (if _gimbal_eject (write-byte -1 s) (write-byte 0 s))
     ;; bool _hero_eject_flag
       (if _hero_eject_flag (write-byte -1 s) (write-byte 0 s))
     ;; bool _engineer_calibration_state
       (if _engineer_calibration_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _det_color
       (write-byte _det_color s)
     ;; uint8 _det_target
       (write-byte _det_target s)
     ;; uint8 _det_armor_target
       (write-byte _det_armor_target s)
     ;; uint8 _det_exposure
       (write-byte _det_exposure s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _power_limit_state
     (setq _power_limit_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _start_burst_time
     (send _start_burst_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start_burst_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _shoot_frequency
     (setq _shoot_frequency (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _cover_state
     (setq _cover_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _gimbal_eject
     (setq _gimbal_eject (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _hero_eject_flag
     (setq _hero_eject_flag (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _engineer_calibration_state
     (setq _engineer_calibration_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _det_color
     (setq _det_color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _det_target
     (setq _det_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _det_armor_target
     (setq _det_armor_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _det_exposure
     (setq _det_exposure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ManualToReferee :md5sum-) "388b131678d19b89d2b4494c496ba80a")
(setf (get rm_msgs::ManualToReferee :datatype-) "rm_msgs/ManualToReferee")
(setf (get rm_msgs::ManualToReferee :definition-)
      "uint8 power_limit_state
time start_burst_time

#standard
uint8 shoot_frequency
bool cover_state

#hero
bool gimbal_eject
bool hero_eject_flag

#engineer
bool engineer_calibration_state

#detection
uint8 det_color
uint8 det_target
uint8 det_armor_target
uint8 det_exposure

time stamp

")



(provide :rm_msgs/ManualToReferee "388b131678d19b89d2b4494c496ba80a")


