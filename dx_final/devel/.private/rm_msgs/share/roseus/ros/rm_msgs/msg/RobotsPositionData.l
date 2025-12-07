;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RobotsPositionData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RobotsPositionData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ROBOTSPOSITIONDATA")
  (make-package "RM_MSGS::ROBOTSPOSITIONDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotsPositionData.msg.html


(defclass rm_msgs::RobotsPositionData
  :super ros::object
  :slots (_hero_x _hero_y _engineer_x _engineer_y _standard_3_x _standard_3_y _standard_4_x _standard_4_y _stamp ))

(defmethod rm_msgs::RobotsPositionData
  (:init
   (&key
    ((:hero_x __hero_x) 0.0)
    ((:hero_y __hero_y) 0.0)
    ((:engineer_x __engineer_x) 0.0)
    ((:engineer_y __engineer_y) 0.0)
    ((:standard_3_x __standard_3_x) 0.0)
    ((:standard_3_y __standard_3_y) 0.0)
    ((:standard_4_x __standard_4_x) 0.0)
    ((:standard_4_y __standard_4_y) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _hero_x (float __hero_x))
   (setq _hero_y (float __hero_y))
   (setq _engineer_x (float __engineer_x))
   (setq _engineer_y (float __engineer_y))
   (setq _standard_3_x (float __standard_3_x))
   (setq _standard_3_y (float __standard_3_y))
   (setq _standard_4_x (float __standard_4_x))
   (setq _standard_4_y (float __standard_4_y))
   (setq _stamp __stamp)
   self)
  (:hero_x
   (&optional __hero_x)
   (if __hero_x (setq _hero_x __hero_x)) _hero_x)
  (:hero_y
   (&optional __hero_y)
   (if __hero_y (setq _hero_y __hero_y)) _hero_y)
  (:engineer_x
   (&optional __engineer_x)
   (if __engineer_x (setq _engineer_x __engineer_x)) _engineer_x)
  (:engineer_y
   (&optional __engineer_y)
   (if __engineer_y (setq _engineer_y __engineer_y)) _engineer_y)
  (:standard_3_x
   (&optional __standard_3_x)
   (if __standard_3_x (setq _standard_3_x __standard_3_x)) _standard_3_x)
  (:standard_3_y
   (&optional __standard_3_y)
   (if __standard_3_y (setq _standard_3_y __standard_3_y)) _standard_3_y)
  (:standard_4_x
   (&optional __standard_4_x)
   (if __standard_4_x (setq _standard_4_x __standard_4_x)) _standard_4_x)
  (:standard_4_y
   (&optional __standard_4_y)
   (if __standard_4_y (setq _standard_4_y __standard_4_y)) _standard_4_y)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float32 _hero_x
    4
    ;; float32 _hero_y
    4
    ;; float32 _engineer_x
    4
    ;; float32 _engineer_y
    4
    ;; float32 _standard_3_x
    4
    ;; float32 _standard_3_y
    4
    ;; float32 _standard_4_x
    4
    ;; float32 _standard_4_y
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _hero_x
       (sys::poke _hero_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _hero_y
       (sys::poke _hero_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engineer_x
       (sys::poke _engineer_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _engineer_y
       (sys::poke _engineer_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_3_x
       (sys::poke _standard_3_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_3_y
       (sys::poke _standard_3_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_4_x
       (sys::poke _standard_4_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _standard_4_y
       (sys::poke _standard_4_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _hero_x
     (setq _hero_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _hero_y
     (setq _hero_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engineer_x
     (setq _engineer_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _engineer_y
     (setq _engineer_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_3_x
     (setq _standard_3_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_3_y
     (setq _standard_3_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_4_x
     (setq _standard_4_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _standard_4_y
     (setq _standard_4_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RobotsPositionData :md5sum-) "4fc7b9661d2bf5a2e44c637cb346cf29")
(setf (get rm_msgs::RobotsPositionData :datatype-) "rm_msgs/RobotsPositionData")
(setf (get rm_msgs::RobotsPositionData :definition-)
      "float32 hero_x
float32 hero_y
float32 engineer_x
float32 engineer_y
float32 standard_3_x
float32 standard_3_y
float32 standard_4_x
float32 standard_4_y

time stamp

")



(provide :rm_msgs/RobotsPositionData "4fc7b9661d2bf5a2e44c637cb346cf29")


