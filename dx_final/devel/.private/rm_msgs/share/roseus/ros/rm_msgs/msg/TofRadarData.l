;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TofRadarData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TofRadarData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TOFRADARDATA")
  (make-package "RM_MSGS::TOFRADARDATA"))

(in-package "ROS")
;;//! \htmlinclude TofRadarData.msg.html


(defclass rm_msgs::TofRadarData
  :super ros::object
  :slots (_distance _strength _stamp ))

(defmethod rm_msgs::TofRadarData
  (:init
   (&key
    ((:distance __distance) 0.0)
    ((:strength __strength) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _distance (float __distance))
   (setq _strength (float __strength))
   (setq _stamp __stamp)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:strength
   (&optional __strength)
   (if __strength (setq _strength __strength)) _strength)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float64 _distance
    8
    ;; float64 _strength
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _strength
       (sys::poke _strength (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _strength
     (setq _strength (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::TofRadarData :md5sum-) "845e04d28c2cbf2fe417f0d2eaed29fe")
(setf (get rm_msgs::TofRadarData :datatype-) "rm_msgs/TofRadarData")
(setf (get rm_msgs::TofRadarData :definition-)
      "float64 distance
float64 strength
time stamp

")



(provide :rm_msgs/TofRadarData "845e04d28c2cbf2fe417f0d2eaed29fe")


