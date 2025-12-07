;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::KalmanData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'KalmanData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::KALMANDATA")
  (make-package "RM_MSGS::KALMANDATA"))

(in-package "ROS")
;;//! \htmlinclude KalmanData.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::KalmanData
  :super ros::object
  :slots (_header _real_detection_pose _filtered_detection_pose _real_detection_twist _filtered_detection_twist ))

(defmethod rm_msgs::KalmanData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:real_detection_pose __real_detection_pose) (instance geometry_msgs::Pose :init))
    ((:filtered_detection_pose __filtered_detection_pose) (instance geometry_msgs::Pose :init))
    ((:real_detection_twist __real_detection_twist) (instance geometry_msgs::Twist :init))
    ((:filtered_detection_twist __filtered_detection_twist) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _real_detection_pose __real_detection_pose)
   (setq _filtered_detection_pose __filtered_detection_pose)
   (setq _real_detection_twist __real_detection_twist)
   (setq _filtered_detection_twist __filtered_detection_twist)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:real_detection_pose
   (&rest __real_detection_pose)
   (if (keywordp (car __real_detection_pose))
       (send* _real_detection_pose __real_detection_pose)
     (progn
       (if __real_detection_pose (setq _real_detection_pose (car __real_detection_pose)))
       _real_detection_pose)))
  (:filtered_detection_pose
   (&rest __filtered_detection_pose)
   (if (keywordp (car __filtered_detection_pose))
       (send* _filtered_detection_pose __filtered_detection_pose)
     (progn
       (if __filtered_detection_pose (setq _filtered_detection_pose (car __filtered_detection_pose)))
       _filtered_detection_pose)))
  (:real_detection_twist
   (&rest __real_detection_twist)
   (if (keywordp (car __real_detection_twist))
       (send* _real_detection_twist __real_detection_twist)
     (progn
       (if __real_detection_twist (setq _real_detection_twist (car __real_detection_twist)))
       _real_detection_twist)))
  (:filtered_detection_twist
   (&rest __filtered_detection_twist)
   (if (keywordp (car __filtered_detection_twist))
       (send* _filtered_detection_twist __filtered_detection_twist)
     (progn
       (if __filtered_detection_twist (setq _filtered_detection_twist (car __filtered_detection_twist)))
       _filtered_detection_twist)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Pose _real_detection_pose
    (send _real_detection_pose :serialization-length)
    ;; geometry_msgs/Pose _filtered_detection_pose
    (send _filtered_detection_pose :serialization-length)
    ;; geometry_msgs/Twist _real_detection_twist
    (send _real_detection_twist :serialization-length)
    ;; geometry_msgs/Twist _filtered_detection_twist
    (send _filtered_detection_twist :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Pose _real_detection_pose
       (send _real_detection_pose :serialize s)
     ;; geometry_msgs/Pose _filtered_detection_pose
       (send _filtered_detection_pose :serialize s)
     ;; geometry_msgs/Twist _real_detection_twist
       (send _real_detection_twist :serialize s)
     ;; geometry_msgs/Twist _filtered_detection_twist
       (send _filtered_detection_twist :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Pose _real_detection_pose
     (send _real_detection_pose :deserialize buf ptr-) (incf ptr- (send _real_detection_pose :serialization-length))
   ;; geometry_msgs/Pose _filtered_detection_pose
     (send _filtered_detection_pose :deserialize buf ptr-) (incf ptr- (send _filtered_detection_pose :serialization-length))
   ;; geometry_msgs/Twist _real_detection_twist
     (send _real_detection_twist :deserialize buf ptr-) (incf ptr- (send _real_detection_twist :serialization-length))
   ;; geometry_msgs/Twist _filtered_detection_twist
     (send _filtered_detection_twist :deserialize buf ptr-) (incf ptr- (send _filtered_detection_twist :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::KalmanData :md5sum-) "076b9f9dc5aab232f694a2e05a2a0a8c")
(setf (get rm_msgs::KalmanData :datatype-) "rm_msgs/KalmanData")
(setf (get rm_msgs::KalmanData :definition-)
      "std_msgs/Header header
geometry_msgs/Pose real_detection_pose
geometry_msgs/Pose filtered_detection_pose
geometry_msgs/Twist real_detection_twist
geometry_msgs/Twist filtered_detection_twist

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

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3 linear
Vector3 angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rm_msgs/KalmanData "076b9f9dc5aab232f694a2e05a2a0a8c")


