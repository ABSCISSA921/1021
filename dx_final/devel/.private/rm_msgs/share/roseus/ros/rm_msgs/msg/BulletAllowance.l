;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::BulletAllowance)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'BulletAllowance (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BULLETALLOWANCE")
  (make-package "RM_MSGS::BULLETALLOWANCE"))

(in-package "ROS")
;;//! \htmlinclude BulletAllowance.msg.html


(defclass rm_msgs::BulletAllowance
  :super ros::object
  :slots (_bullet_allowance_num_17_mm _bullet_allowance_num_42_mm _coin_remaining_num _projectile_allowance_fortress _stamp ))

(defmethod rm_msgs::BulletAllowance
  (:init
   (&key
    ((:bullet_allowance_num_17_mm __bullet_allowance_num_17_mm) 0)
    ((:bullet_allowance_num_42_mm __bullet_allowance_num_42_mm) 0)
    ((:coin_remaining_num __coin_remaining_num) 0)
    ((:projectile_allowance_fortress __projectile_allowance_fortress) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _bullet_allowance_num_17_mm (round __bullet_allowance_num_17_mm))
   (setq _bullet_allowance_num_42_mm (round __bullet_allowance_num_42_mm))
   (setq _coin_remaining_num (round __coin_remaining_num))
   (setq _projectile_allowance_fortress (round __projectile_allowance_fortress))
   (setq _stamp __stamp)
   self)
  (:bullet_allowance_num_17_mm
   (&optional __bullet_allowance_num_17_mm)
   (if __bullet_allowance_num_17_mm (setq _bullet_allowance_num_17_mm __bullet_allowance_num_17_mm)) _bullet_allowance_num_17_mm)
  (:bullet_allowance_num_42_mm
   (&optional __bullet_allowance_num_42_mm)
   (if __bullet_allowance_num_42_mm (setq _bullet_allowance_num_42_mm __bullet_allowance_num_42_mm)) _bullet_allowance_num_42_mm)
  (:coin_remaining_num
   (&optional __coin_remaining_num)
   (if __coin_remaining_num (setq _coin_remaining_num __coin_remaining_num)) _coin_remaining_num)
  (:projectile_allowance_fortress
   (&optional __projectile_allowance_fortress)
   (if __projectile_allowance_fortress (setq _projectile_allowance_fortress __projectile_allowance_fortress)) _projectile_allowance_fortress)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _bullet_allowance_num_17_mm
    2
    ;; uint16 _bullet_allowance_num_42_mm
    2
    ;; uint16 _coin_remaining_num
    2
    ;; uint16 _projectile_allowance_fortress
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _bullet_allowance_num_17_mm
       (write-word _bullet_allowance_num_17_mm s)
     ;; uint16 _bullet_allowance_num_42_mm
       (write-word _bullet_allowance_num_42_mm s)
     ;; uint16 _coin_remaining_num
       (write-word _coin_remaining_num s)
     ;; uint16 _projectile_allowance_fortress
       (write-word _projectile_allowance_fortress s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _bullet_allowance_num_17_mm
     (setq _bullet_allowance_num_17_mm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _bullet_allowance_num_42_mm
     (setq _bullet_allowance_num_42_mm (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _coin_remaining_num
     (setq _coin_remaining_num (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _projectile_allowance_fortress
     (setq _projectile_allowance_fortress (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::BulletAllowance :md5sum-) "d37e99d879c3fd6d3eb6ff551cb04737")
(setf (get rm_msgs::BulletAllowance :datatype-) "rm_msgs/BulletAllowance")
(setf (get rm_msgs::BulletAllowance :definition-)
      "uint16 bullet_allowance_num_17_mm
uint16 bullet_allowance_num_42_mm
uint16 coin_remaining_num
uint16 projectile_allowance_fortress

time stamp

")



(provide :rm_msgs/BulletAllowance "d37e99d879c3fd6d3eb6ff551cb04737")


