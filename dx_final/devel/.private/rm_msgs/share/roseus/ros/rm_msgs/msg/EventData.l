;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EventData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EventData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::EVENTDATA")
  (make-package "RM_MSGS::EVENTDATA"))

(in-package "ROS")
;;//! \htmlinclude EventData.msg.html


(defclass rm_msgs::EventData
  :super ros::object
  :slots (_overlapping_supply_station_state _nan_overlapping_supply_station_state _supplier_zone_state _small_power_rune_state _large_power_rune_state _central_elevated_ground_state _trapezoidal_elevated_ground_state _be_hit_time _be_hit_target _central_point_state _own_fortress_state _stamp ))

(defmethod rm_msgs::EventData
  (:init
   (&key
    ((:overlapping_supply_station_state __overlapping_supply_station_state) nil)
    ((:nan_overlapping_supply_station_state __nan_overlapping_supply_station_state) nil)
    ((:supplier_zone_state __supplier_zone_state) nil)
    ((:small_power_rune_state __small_power_rune_state) nil)
    ((:large_power_rune_state __large_power_rune_state) nil)
    ((:central_elevated_ground_state __central_elevated_ground_state) 0)
    ((:trapezoidal_elevated_ground_state __trapezoidal_elevated_ground_state) 0)
    ((:be_hit_time __be_hit_time) 0)
    ((:be_hit_target __be_hit_target) 0)
    ((:central_point_state __central_point_state) 0)
    ((:own_fortress_state __own_fortress_state) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _overlapping_supply_station_state __overlapping_supply_station_state)
   (setq _nan_overlapping_supply_station_state __nan_overlapping_supply_station_state)
   (setq _supplier_zone_state __supplier_zone_state)
   (setq _small_power_rune_state __small_power_rune_state)
   (setq _large_power_rune_state __large_power_rune_state)
   (setq _central_elevated_ground_state (round __central_elevated_ground_state))
   (setq _trapezoidal_elevated_ground_state (round __trapezoidal_elevated_ground_state))
   (setq _be_hit_time (round __be_hit_time))
   (setq _be_hit_target (round __be_hit_target))
   (setq _central_point_state (round __central_point_state))
   (setq _own_fortress_state (round __own_fortress_state))
   (setq _stamp __stamp)
   self)
  (:overlapping_supply_station_state
   (&optional (__overlapping_supply_station_state :null))
   (if (not (eq __overlapping_supply_station_state :null)) (setq _overlapping_supply_station_state __overlapping_supply_station_state)) _overlapping_supply_station_state)
  (:nan_overlapping_supply_station_state
   (&optional (__nan_overlapping_supply_station_state :null))
   (if (not (eq __nan_overlapping_supply_station_state :null)) (setq _nan_overlapping_supply_station_state __nan_overlapping_supply_station_state)) _nan_overlapping_supply_station_state)
  (:supplier_zone_state
   (&optional (__supplier_zone_state :null))
   (if (not (eq __supplier_zone_state :null)) (setq _supplier_zone_state __supplier_zone_state)) _supplier_zone_state)
  (:small_power_rune_state
   (&optional (__small_power_rune_state :null))
   (if (not (eq __small_power_rune_state :null)) (setq _small_power_rune_state __small_power_rune_state)) _small_power_rune_state)
  (:large_power_rune_state
   (&optional (__large_power_rune_state :null))
   (if (not (eq __large_power_rune_state :null)) (setq _large_power_rune_state __large_power_rune_state)) _large_power_rune_state)
  (:central_elevated_ground_state
   (&optional __central_elevated_ground_state)
   (if __central_elevated_ground_state (setq _central_elevated_ground_state __central_elevated_ground_state)) _central_elevated_ground_state)
  (:trapezoidal_elevated_ground_state
   (&optional __trapezoidal_elevated_ground_state)
   (if __trapezoidal_elevated_ground_state (setq _trapezoidal_elevated_ground_state __trapezoidal_elevated_ground_state)) _trapezoidal_elevated_ground_state)
  (:be_hit_time
   (&optional __be_hit_time)
   (if __be_hit_time (setq _be_hit_time __be_hit_time)) _be_hit_time)
  (:be_hit_target
   (&optional __be_hit_target)
   (if __be_hit_target (setq _be_hit_target __be_hit_target)) _be_hit_target)
  (:central_point_state
   (&optional __central_point_state)
   (if __central_point_state (setq _central_point_state __central_point_state)) _central_point_state)
  (:own_fortress_state
   (&optional __own_fortress_state)
   (if __own_fortress_state (setq _own_fortress_state __own_fortress_state)) _own_fortress_state)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _overlapping_supply_station_state
    1
    ;; bool _nan_overlapping_supply_station_state
    1
    ;; bool _supplier_zone_state
    1
    ;; bool _small_power_rune_state
    1
    ;; bool _large_power_rune_state
    1
    ;; uint8 _central_elevated_ground_state
    1
    ;; uint8 _trapezoidal_elevated_ground_state
    1
    ;; uint16 _be_hit_time
    2
    ;; uint8 _be_hit_target
    1
    ;; uint8 _central_point_state
    1
    ;; uint8 _own_fortress_state
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _overlapping_supply_station_state
       (if _overlapping_supply_station_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _nan_overlapping_supply_station_state
       (if _nan_overlapping_supply_station_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _supplier_zone_state
       (if _supplier_zone_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _small_power_rune_state
       (if _small_power_rune_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _large_power_rune_state
       (if _large_power_rune_state (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _central_elevated_ground_state
       (write-byte _central_elevated_ground_state s)
     ;; uint8 _trapezoidal_elevated_ground_state
       (write-byte _trapezoidal_elevated_ground_state s)
     ;; uint16 _be_hit_time
       (write-word _be_hit_time s)
     ;; uint8 _be_hit_target
       (write-byte _be_hit_target s)
     ;; uint8 _central_point_state
       (write-byte _central_point_state s)
     ;; uint8 _own_fortress_state
       (write-byte _own_fortress_state s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _overlapping_supply_station_state
     (setq _overlapping_supply_station_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _nan_overlapping_supply_station_state
     (setq _nan_overlapping_supply_station_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _supplier_zone_state
     (setq _supplier_zone_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _small_power_rune_state
     (setq _small_power_rune_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _large_power_rune_state
     (setq _large_power_rune_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _central_elevated_ground_state
     (setq _central_elevated_ground_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _trapezoidal_elevated_ground_state
     (setq _trapezoidal_elevated_ground_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _be_hit_time
     (setq _be_hit_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _be_hit_target
     (setq _be_hit_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _central_point_state
     (setq _central_point_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _own_fortress_state
     (setq _own_fortress_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::EventData :md5sum-) "0e0fe7f33f8d70cbb516e24d1e30721c")
(setf (get rm_msgs::EventData :datatype-) "rm_msgs/EventData")
(setf (get rm_msgs::EventData :definition-)
      "bool overlapping_supply_station_state
bool nan_overlapping_supply_station_state
bool supplier_zone_state
bool small_power_rune_state
bool large_power_rune_state
uint8 central_elevated_ground_state
uint8 trapezoidal_elevated_ground_state
uint16 be_hit_time
uint8 be_hit_target
uint8 central_point_state
uint8 own_fortress_state

time stamp

")



(provide :rm_msgs/EventData "0e0fe7f33f8d70cbb516e24d1e30721c")


