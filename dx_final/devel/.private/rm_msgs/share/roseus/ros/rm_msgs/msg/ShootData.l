;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ShootData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ShootData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SHOOTDATA")
  (make-package "RM_MSGS::SHOOTDATA"))

(in-package "ROS")
;;//! \htmlinclude ShootData.msg.html


(defclass rm_msgs::ShootData
  :super ros::object
  :slots (_bullet_type _shooter_id _bullet_freq _bullet_speed _stamp ))

(defmethod rm_msgs::ShootData
  (:init
   (&key
    ((:bullet_type __bullet_type) 0)
    ((:shooter_id __shooter_id) 0)
    ((:bullet_freq __bullet_freq) 0)
    ((:bullet_speed __bullet_speed) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _bullet_type (round __bullet_type))
   (setq _shooter_id (round __shooter_id))
   (setq _bullet_freq (round __bullet_freq))
   (setq _bullet_speed (float __bullet_speed))
   (setq _stamp __stamp)
   self)
  (:bullet_type
   (&optional __bullet_type)
   (if __bullet_type (setq _bullet_type __bullet_type)) _bullet_type)
  (:shooter_id
   (&optional __shooter_id)
   (if __shooter_id (setq _shooter_id __shooter_id)) _shooter_id)
  (:bullet_freq
   (&optional __bullet_freq)
   (if __bullet_freq (setq _bullet_freq __bullet_freq)) _bullet_freq)
  (:bullet_speed
   (&optional __bullet_speed)
   (if __bullet_speed (setq _bullet_speed __bullet_speed)) _bullet_speed)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _bullet_type
    1
    ;; uint8 _shooter_id
    1
    ;; uint8 _bullet_freq
    1
    ;; float32 _bullet_speed
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _bullet_type
       (write-byte _bullet_type s)
     ;; uint8 _shooter_id
       (write-byte _shooter_id s)
     ;; uint8 _bullet_freq
       (write-byte _bullet_freq s)
     ;; float32 _bullet_speed
       (sys::poke _bullet_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _bullet_type
     (setq _bullet_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shooter_id
     (setq _shooter_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _bullet_freq
     (setq _bullet_freq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _bullet_speed
     (setq _bullet_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ShootData :md5sum-) "974d24ddaca58a0fd7ae13376c5c9d3c")
(setf (get rm_msgs::ShootData :datatype-) "rm_msgs/ShootData")
(setf (get rm_msgs::ShootData :definition-)
      "uint8 bullet_type
uint8 shooter_id
uint8 bullet_freq
float32 bullet_speed

time stamp

")



(provide :rm_msgs/ShootData "974d24ddaca58a0fd7ae13376c5c9d3c")


