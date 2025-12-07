;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TargetDetectionArray)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TargetDetectionArray (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TARGETDETECTIONARRAY")
  (make-package "RM_MSGS::TARGETDETECTIONARRAY"))

(in-package "ROS")
;;//! \htmlinclude TargetDetectionArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::TargetDetectionArray
  :super ros::object
  :slots (_header _is_red _detections ))

(defmethod rm_msgs::TargetDetectionArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_red __is_red) nil)
    ((:detections __detections) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_red __is_red)
   (setq _detections __detections)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_red
   (&optional (__is_red :null))
   (if (not (eq __is_red :null)) (setq _is_red __is_red)) _is_red)
  (:detections
   (&rest __detections)
   (if (keywordp (car __detections))
       (send* _detections __detections)
     (progn
       (if __detections (setq _detections (car __detections)))
       _detections)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_red
    1
    ;; rm_msgs/TargetDetection[] _detections
    (apply #'+ (send-all _detections :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_red
       (if _is_red (write-byte -1 s) (write-byte 0 s))
     ;; rm_msgs/TargetDetection[] _detections
     (write-long (length _detections) s)
     (dolist (elem _detections)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_red
     (setq _is_red (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rm_msgs/TargetDetection[] _detections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _detections (let (r) (dotimes (i n) (push (instance rm_msgs::TargetDetection :init) r)) r))
     (dolist (elem- _detections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rm_msgs::TargetDetectionArray :md5sum-) "9e86cc7ec7550de1d0f3128a731a89a2")
(setf (get rm_msgs::TargetDetectionArray :datatype-) "rm_msgs/TargetDetectionArray")
(setf (get rm_msgs::TargetDetectionArray :definition-)
      "std_msgs/Header header
bool is_red
TargetDetection[] detections

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

================================================================================
MSG: rm_msgs/TargetDetection
uint8 id
float64 distance_to_image_center
float64 confidence
bool is_large_armor
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rm_msgs/TargetDetectionArray "9e86cc7ec7550de1d0f3128a731a89a2")


