;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::CapacityData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'CapacityData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CAPACITYDATA")
  (make-package "RM_MSGS::CAPACITYDATA"))

(in-package "ROS")
;;//! \htmlinclude CapacityData.msg.html


(defclass rm_msgs::CapacityData
  :super ros::object
  :slots (_chassis_power _expect_power _capacity_expect_charge_power _capacity_recent_charge_power _cap_power _stamp ))

(defmethod rm_msgs::CapacityData
  (:init
   (&key
    ((:chassis_power __chassis_power) 0)
    ((:expect_power __expect_power) 0)
    ((:capacity_expect_charge_power __capacity_expect_charge_power) 0)
    ((:capacity_recent_charge_power __capacity_recent_charge_power) 0.0)
    ((:cap_power __cap_power) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _chassis_power (round __chassis_power))
   (setq _expect_power (round __expect_power))
   (setq _capacity_expect_charge_power (round __capacity_expect_charge_power))
   (setq _capacity_recent_charge_power (float __capacity_recent_charge_power))
   (setq _cap_power (float __cap_power))
   (setq _stamp __stamp)
   self)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:expect_power
   (&optional __expect_power)
   (if __expect_power (setq _expect_power __expect_power)) _expect_power)
  (:capacity_expect_charge_power
   (&optional __capacity_expect_charge_power)
   (if __capacity_expect_charge_power (setq _capacity_expect_charge_power __capacity_expect_charge_power)) _capacity_expect_charge_power)
  (:capacity_recent_charge_power
   (&optional __capacity_recent_charge_power)
   (if __capacity_recent_charge_power (setq _capacity_recent_charge_power __capacity_recent_charge_power)) _capacity_recent_charge_power)
  (:cap_power
   (&optional __cap_power)
   (if __cap_power (setq _cap_power __cap_power)) _cap_power)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _chassis_power
    1
    ;; uint8 _expect_power
    1
    ;; uint8 _capacity_expect_charge_power
    1
    ;; float32 _capacity_recent_charge_power
    4
    ;; float32 _cap_power
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _chassis_power
       (write-byte _chassis_power s)
     ;; uint8 _expect_power
       (write-byte _expect_power s)
     ;; uint8 _capacity_expect_charge_power
       (write-byte _capacity_expect_charge_power s)
     ;; float32 _capacity_recent_charge_power
       (sys::poke _capacity_recent_charge_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _cap_power
       (sys::poke _cap_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _expect_power
     (setq _expect_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _capacity_expect_charge_power
     (setq _capacity_expect_charge_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _capacity_recent_charge_power
     (setq _capacity_recent_charge_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _cap_power
     (setq _cap_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::CapacityData :md5sum-) "3ad6f6d030cbf10ddb62b620036fbab5")
(setf (get rm_msgs::CapacityData :datatype-) "rm_msgs/CapacityData")
(setf (get rm_msgs::CapacityData :definition-)
      "uint8 chassis_power
uint8 expect_power
uint8 capacity_expect_charge_power
float32 capacity_recent_charge_power
float32 cap_power

time stamp

")



(provide :rm_msgs/CapacityData "3ad6f6d030cbf10ddb62b620036fbab5")


