;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarToSentry)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarToSentry (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARTOSENTRY")
  (make-package "RM_MSGS::RADARTOSENTRY"))

(in-package "ROS")
;;//! \htmlinclude RadarToSentry.msg.html


(defclass rm_msgs::RadarToSentry
  :super ros::object
  :slots (_robot_ID _position_x _position_y _engineer_marked ))

(defmethod rm_msgs::RadarToSentry
  (:init
   (&key
    ((:robot_ID __robot_ID) 0)
    ((:position_x __position_x) 0.0)
    ((:position_y __position_y) 0.0)
    ((:engineer_marked __engineer_marked) nil)
    )
   (send-super :init)
   (setq _robot_ID (round __robot_ID))
   (setq _position_x (float __position_x))
   (setq _position_y (float __position_y))
   (setq _engineer_marked __engineer_marked)
   self)
  (:robot_ID
   (&optional __robot_ID)
   (if __robot_ID (setq _robot_ID __robot_ID)) _robot_ID)
  (:position_x
   (&optional __position_x)
   (if __position_x (setq _position_x __position_x)) _position_x)
  (:position_y
   (&optional __position_y)
   (if __position_y (setq _position_y __position_y)) _position_y)
  (:engineer_marked
   (&optional (__engineer_marked :null))
   (if (not (eq __engineer_marked :null)) (setq _engineer_marked __engineer_marked)) _engineer_marked)
  (:serialization-length
   ()
   (+
    ;; uint8 _robot_ID
    1
    ;; float32 _position_x
    4
    ;; float32 _position_y
    4
    ;; bool _engineer_marked
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robot_ID
       (write-byte _robot_ID s)
     ;; float32 _position_x
       (sys::poke _position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _position_y
       (sys::poke _position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _engineer_marked
       (if _engineer_marked (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robot_ID
     (setq _robot_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _position_x
     (setq _position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _position_y
     (setq _position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _engineer_marked
     (setq _engineer_marked (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarToSentry :md5sum-) "55598f76d4bb77ccd6286fc50e5b4aed")
(setf (get rm_msgs::RadarToSentry :datatype-) "rm_msgs/RadarToSentry")
(setf (get rm_msgs::RadarToSentry :definition-)
      "uint8 robot_ID
float32 position_x
float32 position_y
bool engineer_marked

")



(provide :rm_msgs/RadarToSentry "55598f76d4bb77ccd6286fc50e5b4aed")


