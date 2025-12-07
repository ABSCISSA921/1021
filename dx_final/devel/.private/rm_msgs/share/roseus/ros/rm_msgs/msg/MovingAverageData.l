;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::MovingAverageData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'MovingAverageData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::MOVINGAVERAGEDATA")
  (make-package "RM_MSGS::MOVINGAVERAGEDATA"))

(in-package "ROS")
;;//! \htmlinclude MovingAverageData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::MovingAverageData
  :super ros::object
  :slots (_header _real_pos_x _real_pos_y _real_pos_z _real_vel_x _real_vel_y _real_vel_z _filtered_pos_x _filtered_pos_y _filtered_pos_z _filtered_vel_x _filtered_vel_y _filtered_vel_z _filtered_center_x _filtered_center_y _filtered_center_z _real_gyro_vel _filtered_gyro_vel ))

(defmethod rm_msgs::MovingAverageData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:real_pos_x __real_pos_x) 0.0)
    ((:real_pos_y __real_pos_y) 0.0)
    ((:real_pos_z __real_pos_z) 0.0)
    ((:real_vel_x __real_vel_x) 0.0)
    ((:real_vel_y __real_vel_y) 0.0)
    ((:real_vel_z __real_vel_z) 0.0)
    ((:filtered_pos_x __filtered_pos_x) 0.0)
    ((:filtered_pos_y __filtered_pos_y) 0.0)
    ((:filtered_pos_z __filtered_pos_z) 0.0)
    ((:filtered_vel_x __filtered_vel_x) 0.0)
    ((:filtered_vel_y __filtered_vel_y) 0.0)
    ((:filtered_vel_z __filtered_vel_z) 0.0)
    ((:filtered_center_x __filtered_center_x) 0.0)
    ((:filtered_center_y __filtered_center_y) 0.0)
    ((:filtered_center_z __filtered_center_z) 0.0)
    ((:real_gyro_vel __real_gyro_vel) 0.0)
    ((:filtered_gyro_vel __filtered_gyro_vel) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _real_pos_x (float __real_pos_x))
   (setq _real_pos_y (float __real_pos_y))
   (setq _real_pos_z (float __real_pos_z))
   (setq _real_vel_x (float __real_vel_x))
   (setq _real_vel_y (float __real_vel_y))
   (setq _real_vel_z (float __real_vel_z))
   (setq _filtered_pos_x (float __filtered_pos_x))
   (setq _filtered_pos_y (float __filtered_pos_y))
   (setq _filtered_pos_z (float __filtered_pos_z))
   (setq _filtered_vel_x (float __filtered_vel_x))
   (setq _filtered_vel_y (float __filtered_vel_y))
   (setq _filtered_vel_z (float __filtered_vel_z))
   (setq _filtered_center_x (float __filtered_center_x))
   (setq _filtered_center_y (float __filtered_center_y))
   (setq _filtered_center_z (float __filtered_center_z))
   (setq _real_gyro_vel (float __real_gyro_vel))
   (setq _filtered_gyro_vel (float __filtered_gyro_vel))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:real_pos_x
   (&optional __real_pos_x)
   (if __real_pos_x (setq _real_pos_x __real_pos_x)) _real_pos_x)
  (:real_pos_y
   (&optional __real_pos_y)
   (if __real_pos_y (setq _real_pos_y __real_pos_y)) _real_pos_y)
  (:real_pos_z
   (&optional __real_pos_z)
   (if __real_pos_z (setq _real_pos_z __real_pos_z)) _real_pos_z)
  (:real_vel_x
   (&optional __real_vel_x)
   (if __real_vel_x (setq _real_vel_x __real_vel_x)) _real_vel_x)
  (:real_vel_y
   (&optional __real_vel_y)
   (if __real_vel_y (setq _real_vel_y __real_vel_y)) _real_vel_y)
  (:real_vel_z
   (&optional __real_vel_z)
   (if __real_vel_z (setq _real_vel_z __real_vel_z)) _real_vel_z)
  (:filtered_pos_x
   (&optional __filtered_pos_x)
   (if __filtered_pos_x (setq _filtered_pos_x __filtered_pos_x)) _filtered_pos_x)
  (:filtered_pos_y
   (&optional __filtered_pos_y)
   (if __filtered_pos_y (setq _filtered_pos_y __filtered_pos_y)) _filtered_pos_y)
  (:filtered_pos_z
   (&optional __filtered_pos_z)
   (if __filtered_pos_z (setq _filtered_pos_z __filtered_pos_z)) _filtered_pos_z)
  (:filtered_vel_x
   (&optional __filtered_vel_x)
   (if __filtered_vel_x (setq _filtered_vel_x __filtered_vel_x)) _filtered_vel_x)
  (:filtered_vel_y
   (&optional __filtered_vel_y)
   (if __filtered_vel_y (setq _filtered_vel_y __filtered_vel_y)) _filtered_vel_y)
  (:filtered_vel_z
   (&optional __filtered_vel_z)
   (if __filtered_vel_z (setq _filtered_vel_z __filtered_vel_z)) _filtered_vel_z)
  (:filtered_center_x
   (&optional __filtered_center_x)
   (if __filtered_center_x (setq _filtered_center_x __filtered_center_x)) _filtered_center_x)
  (:filtered_center_y
   (&optional __filtered_center_y)
   (if __filtered_center_y (setq _filtered_center_y __filtered_center_y)) _filtered_center_y)
  (:filtered_center_z
   (&optional __filtered_center_z)
   (if __filtered_center_z (setq _filtered_center_z __filtered_center_z)) _filtered_center_z)
  (:real_gyro_vel
   (&optional __real_gyro_vel)
   (if __real_gyro_vel (setq _real_gyro_vel __real_gyro_vel)) _real_gyro_vel)
  (:filtered_gyro_vel
   (&optional __filtered_gyro_vel)
   (if __filtered_gyro_vel (setq _filtered_gyro_vel __filtered_gyro_vel)) _filtered_gyro_vel)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _real_pos_x
    8
    ;; float64 _real_pos_y
    8
    ;; float64 _real_pos_z
    8
    ;; float64 _real_vel_x
    8
    ;; float64 _real_vel_y
    8
    ;; float64 _real_vel_z
    8
    ;; float64 _filtered_pos_x
    8
    ;; float64 _filtered_pos_y
    8
    ;; float64 _filtered_pos_z
    8
    ;; float64 _filtered_vel_x
    8
    ;; float64 _filtered_vel_y
    8
    ;; float64 _filtered_vel_z
    8
    ;; float64 _filtered_center_x
    8
    ;; float64 _filtered_center_y
    8
    ;; float64 _filtered_center_z
    8
    ;; float64 _real_gyro_vel
    8
    ;; float64 _filtered_gyro_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _real_pos_x
       (sys::poke _real_pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_pos_y
       (sys::poke _real_pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_pos_z
       (sys::poke _real_pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_vel_x
       (sys::poke _real_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_vel_y
       (sys::poke _real_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_vel_z
       (sys::poke _real_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_pos_x
       (sys::poke _filtered_pos_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_pos_y
       (sys::poke _filtered_pos_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_pos_z
       (sys::poke _filtered_pos_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_vel_x
       (sys::poke _filtered_vel_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_vel_y
       (sys::poke _filtered_vel_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_vel_z
       (sys::poke _filtered_vel_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_center_x
       (sys::poke _filtered_center_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_center_y
       (sys::poke _filtered_center_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_center_z
       (sys::poke _filtered_center_z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _real_gyro_vel
       (sys::poke _real_gyro_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered_gyro_vel
       (sys::poke _filtered_gyro_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _real_pos_x
     (setq _real_pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_pos_y
     (setq _real_pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_pos_z
     (setq _real_pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_vel_x
     (setq _real_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_vel_y
     (setq _real_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_vel_z
     (setq _real_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_pos_x
     (setq _filtered_pos_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_pos_y
     (setq _filtered_pos_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_pos_z
     (setq _filtered_pos_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_vel_x
     (setq _filtered_vel_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_vel_y
     (setq _filtered_vel_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_vel_z
     (setq _filtered_vel_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_center_x
     (setq _filtered_center_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_center_y
     (setq _filtered_center_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_center_z
     (setq _filtered_center_z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _real_gyro_vel
     (setq _real_gyro_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered_gyro_vel
     (setq _filtered_gyro_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::MovingAverageData :md5sum-) "12bd9292dde1a0c07797d8236d7c8fa2")
(setf (get rm_msgs::MovingAverageData :datatype-) "rm_msgs/MovingAverageData")
(setf (get rm_msgs::MovingAverageData :definition-)
      "std_msgs/Header header

float64 real_pos_x
float64 real_pos_y
float64 real_pos_z
float64 real_vel_x
float64 real_vel_y
float64 real_vel_z

float64 filtered_pos_x
float64 filtered_pos_y
float64 filtered_pos_z
float64 filtered_vel_x
float64 filtered_vel_y
float64 filtered_vel_z
float64 filtered_center_x
float64 filtered_center_y
float64 filtered_center_z

float64 real_gyro_vel
float64 filtered_gyro_vel

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rm_msgs/MovingAverageData "12bd9292dde1a0c07797d8236d7c8fa2")


