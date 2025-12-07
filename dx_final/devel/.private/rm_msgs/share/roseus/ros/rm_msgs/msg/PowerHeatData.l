;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerHeatData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerHeatData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERHEATDATA")
  (make-package "RM_MSGS::POWERHEATDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerHeatData.msg.html


(defclass rm_msgs::PowerHeatData
  :super ros::object
  :slots (_chassis_power_buffer _shooter_id_1_17_mm_cooling_heat _shooter_id_2_17_mm_cooling_heat _shooter_id_1_42_mm_cooling_heat _stamp ))

(defmethod rm_msgs::PowerHeatData
  (:init
   (&key
    ((:chassis_power_buffer __chassis_power_buffer) 0)
    ((:shooter_id_1_17_mm_cooling_heat __shooter_id_1_17_mm_cooling_heat) 0)
    ((:shooter_id_2_17_mm_cooling_heat __shooter_id_2_17_mm_cooling_heat) 0)
    ((:shooter_id_1_42_mm_cooling_heat __shooter_id_1_42_mm_cooling_heat) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _chassis_power_buffer (round __chassis_power_buffer))
   (setq _shooter_id_1_17_mm_cooling_heat (round __shooter_id_1_17_mm_cooling_heat))
   (setq _shooter_id_2_17_mm_cooling_heat (round __shooter_id_2_17_mm_cooling_heat))
   (setq _shooter_id_1_42_mm_cooling_heat (round __shooter_id_1_42_mm_cooling_heat))
   (setq _stamp __stamp)
   self)
  (:chassis_power_buffer
   (&optional __chassis_power_buffer)
   (if __chassis_power_buffer (setq _chassis_power_buffer __chassis_power_buffer)) _chassis_power_buffer)
  (:shooter_id_1_17_mm_cooling_heat
   (&optional __shooter_id_1_17_mm_cooling_heat)
   (if __shooter_id_1_17_mm_cooling_heat (setq _shooter_id_1_17_mm_cooling_heat __shooter_id_1_17_mm_cooling_heat)) _shooter_id_1_17_mm_cooling_heat)
  (:shooter_id_2_17_mm_cooling_heat
   (&optional __shooter_id_2_17_mm_cooling_heat)
   (if __shooter_id_2_17_mm_cooling_heat (setq _shooter_id_2_17_mm_cooling_heat __shooter_id_2_17_mm_cooling_heat)) _shooter_id_2_17_mm_cooling_heat)
  (:shooter_id_1_42_mm_cooling_heat
   (&optional __shooter_id_1_42_mm_cooling_heat)
   (if __shooter_id_1_42_mm_cooling_heat (setq _shooter_id_1_42_mm_cooling_heat __shooter_id_1_42_mm_cooling_heat)) _shooter_id_1_42_mm_cooling_heat)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _chassis_power_buffer
    2
    ;; uint16 _shooter_id_1_17_mm_cooling_heat
    2
    ;; uint16 _shooter_id_2_17_mm_cooling_heat
    2
    ;; uint16 _shooter_id_1_42_mm_cooling_heat
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _chassis_power_buffer
       (write-word _chassis_power_buffer s)
     ;; uint16 _shooter_id_1_17_mm_cooling_heat
       (write-word _shooter_id_1_17_mm_cooling_heat s)
     ;; uint16 _shooter_id_2_17_mm_cooling_heat
       (write-word _shooter_id_2_17_mm_cooling_heat s)
     ;; uint16 _shooter_id_1_42_mm_cooling_heat
       (write-word _shooter_id_1_42_mm_cooling_heat s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _chassis_power_buffer
     (setq _chassis_power_buffer (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_17_mm_cooling_heat
     (setq _shooter_id_1_17_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_2_17_mm_cooling_heat
     (setq _shooter_id_2_17_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _shooter_id_1_42_mm_cooling_heat
     (setq _shooter_id_1_42_mm_cooling_heat (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerHeatData :md5sum-) "c7e940fe2053cdcb11e24654dabd707c")
(setf (get rm_msgs::PowerHeatData :datatype-) "rm_msgs/PowerHeatData")
(setf (get rm_msgs::PowerHeatData :definition-)
      "uint16 chassis_power_buffer
uint16 shooter_id_1_17_mm_cooling_heat
uint16 shooter_id_2_17_mm_cooling_heat
uint16 shooter_id_1_42_mm_cooling_heat

time stamp

")



(provide :rm_msgs/PowerHeatData "c7e940fe2053cdcb11e24654dabd707c")


