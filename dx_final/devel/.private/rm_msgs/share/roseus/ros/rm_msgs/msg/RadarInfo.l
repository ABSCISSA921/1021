;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarInfo)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarInfo (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARINFO")
  (make-package "RM_MSGS::RADARINFO"))

(in-package "ROS")
;;//! \htmlinclude RadarInfo.msg.html


(defclass rm_msgs::RadarInfo
  :super ros::object
  :slots (_radar_info ))

(defmethod rm_msgs::RadarInfo
  (:init
   (&key
    ((:radar_info __radar_info) 0)
    )
   (send-super :init)
   (setq _radar_info (round __radar_info))
   self)
  (:radar_info
   (&optional __radar_info)
   (if __radar_info (setq _radar_info __radar_info)) _radar_info)
  (:serialization-length
   ()
   (+
    ;; uint8 _radar_info
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _radar_info
       (write-byte _radar_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _radar_info
     (setq _radar_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarInfo :md5sum-) "e33b2c279afbab996e05f5134608f519")
(setf (get rm_msgs::RadarInfo :datatype-) "rm_msgs/RadarInfo")
(setf (get rm_msgs::RadarInfo :definition-)
      "uint8 radar_info

")



(provide :rm_msgs/RadarInfo "e33b2c279afbab996e05f5134608f519")


