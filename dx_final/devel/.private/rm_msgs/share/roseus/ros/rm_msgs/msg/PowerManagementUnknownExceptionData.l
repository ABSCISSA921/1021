;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerManagementUnknownExceptionData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerManagementUnknownExceptionData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERMANAGEMENTUNKNOWNEXCEPTIONDATA")
  (make-package "RM_MSGS::POWERMANAGEMENTUNKNOWNEXCEPTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerManagementUnknownExceptionData.msg.html


(defclass rm_msgs::PowerManagementUnknownExceptionData
  :super ros::object
  :slots (_abnormal_reset_reason _state_machine_before_reset_mode _power_management_before_reset_topology _stamp ))

(defmethod rm_msgs::PowerManagementUnknownExceptionData
  (:init
   (&key
    ((:abnormal_reset_reason __abnormal_reset_reason) 0)
    ((:state_machine_before_reset_mode __state_machine_before_reset_mode) 0)
    ((:power_management_before_reset_topology __power_management_before_reset_topology) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _abnormal_reset_reason (round __abnormal_reset_reason))
   (setq _state_machine_before_reset_mode (round __state_machine_before_reset_mode))
   (setq _power_management_before_reset_topology (round __power_management_before_reset_topology))
   (setq _stamp __stamp)
   self)
  (:abnormal_reset_reason
   (&optional __abnormal_reset_reason)
   (if __abnormal_reset_reason (setq _abnormal_reset_reason __abnormal_reset_reason)) _abnormal_reset_reason)
  (:state_machine_before_reset_mode
   (&optional __state_machine_before_reset_mode)
   (if __state_machine_before_reset_mode (setq _state_machine_before_reset_mode __state_machine_before_reset_mode)) _state_machine_before_reset_mode)
  (:power_management_before_reset_topology
   (&optional __power_management_before_reset_topology)
   (if __power_management_before_reset_topology (setq _power_management_before_reset_topology __power_management_before_reset_topology)) _power_management_before_reset_topology)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _abnormal_reset_reason
    1
    ;; uint8 _state_machine_before_reset_mode
    1
    ;; uint8 _power_management_before_reset_topology
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _abnormal_reset_reason
       (write-byte _abnormal_reset_reason s)
     ;; uint8 _state_machine_before_reset_mode
       (write-byte _state_machine_before_reset_mode s)
     ;; uint8 _power_management_before_reset_topology
       (write-byte _power_management_before_reset_topology s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _abnormal_reset_reason
     (setq _abnormal_reset_reason (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state_machine_before_reset_mode
     (setq _state_machine_before_reset_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_management_before_reset_topology
     (setq _power_management_before_reset_topology (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerManagementUnknownExceptionData :md5sum-) "fe5796a7df8d9f8ea5253e8284933a59")
(setf (get rm_msgs::PowerManagementUnknownExceptionData :datatype-) "rm_msgs/PowerManagementUnknownExceptionData")
(setf (get rm_msgs::PowerManagementUnknownExceptionData :definition-)
      "uint8 abnormal_reset_reason
uint8 state_machine_before_reset_mode
uint8 power_management_before_reset_topology

time stamp

")



(provide :rm_msgs/PowerManagementUnknownExceptionData "fe5796a7df8d9f8ea5253e8284933a59")


