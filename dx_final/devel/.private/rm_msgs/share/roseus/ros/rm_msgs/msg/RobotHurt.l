;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RobotHurt)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RobotHurt (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ROBOTHURT")
  (make-package "RM_MSGS::ROBOTHURT"))

(in-package "ROS")
;;//! \htmlinclude RobotHurt.msg.html


(defclass rm_msgs::RobotHurt
  :super ros::object
  :slots (_armor_id _hurt_type _stamp ))

(defmethod rm_msgs::RobotHurt
  (:init
   (&key
    ((:armor_id __armor_id) 0)
    ((:hurt_type __hurt_type) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _armor_id (round __armor_id))
   (setq _hurt_type (round __hurt_type))
   (setq _stamp __stamp)
   self)
  (:armor_id
   (&optional __armor_id)
   (if __armor_id (setq _armor_id __armor_id)) _armor_id)
  (:hurt_type
   (&optional __hurt_type)
   (if __hurt_type (setq _hurt_type __hurt_type)) _hurt_type)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _armor_id
    1
    ;; uint8 _hurt_type
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _armor_id
       (write-byte _armor_id s)
     ;; uint8 _hurt_type
       (write-byte _hurt_type s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _armor_id
     (setq _armor_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hurt_type
     (setq _hurt_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RobotHurt :md5sum-) "603a676d8da8f575fe2daaa14c7ac198")
(setf (get rm_msgs::RobotHurt :datatype-) "rm_msgs/RobotHurt")
(setf (get rm_msgs::RobotHurt :definition-)
      "uint8 armor_id
uint8 hurt_type

time stamp

")



(provide :rm_msgs/RobotHurt "603a676d8da8f575fe2daaa14c7ac198")


