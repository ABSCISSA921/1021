;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::LpData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'LpData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::LPDATA")
  (make-package "RM_MSGS::LPDATA"))

(in-package "ROS")
;;//! \htmlinclude LpData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::LpData
  :super ros::object
  :slots (_header _real _filtered ))

(defmethod rm_msgs::LpData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:real __real) 0.0)
    ((:filtered __filtered) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _real (float __real))
   (setq _filtered (float __filtered))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:real
   (&optional __real)
   (if __real (setq _real __real)) _real)
  (:filtered
   (&optional __filtered)
   (if __filtered (setq _filtered __filtered)) _filtered)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _real
    8
    ;; float64 _filtered
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _real
       (sys::poke _real (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _filtered
       (sys::poke _filtered (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _real
     (setq _real (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _filtered
     (setq _filtered (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::LpData :md5sum-) "15bf1676ae28702eed3b9b7f8b20c577")
(setf (get rm_msgs::LpData :datatype-) "rm_msgs/LpData")
(setf (get rm_msgs::LpData :definition-)
      "std_msgs/Header header
float64 real
float64 filtered

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



(provide :rm_msgs/LpData "15bf1676ae28702eed3b9b7f8b20c577")


