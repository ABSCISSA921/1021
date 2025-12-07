;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TagMsgArray)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TagMsgArray (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TAGMSGARRAY")
  (make-package "RM_MSGS::TAGMSGARRAY"))

(in-package "ROS")
;;//! \htmlinclude TagMsgArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::TagMsgArray
  :super ros::object
  :slots (_header _tag_msgs_array ))

(defmethod rm_msgs::TagMsgArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tag_msgs_array __tag_msgs_array) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _tag_msgs_array __tag_msgs_array)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tag_msgs_array
   (&rest __tag_msgs_array)
   (if (keywordp (car __tag_msgs_array))
       (send* _tag_msgs_array __tag_msgs_array)
     (progn
       (if __tag_msgs_array (setq _tag_msgs_array (car __tag_msgs_array)))
       _tag_msgs_array)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rm_msgs/TagMsg[] _tag_msgs_array
    (apply #'+ (send-all _tag_msgs_array :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rm_msgs/TagMsg[] _tag_msgs_array
     (write-long (length _tag_msgs_array) s)
     (dolist (elem _tag_msgs_array)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rm_msgs/TagMsg[] _tag_msgs_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tag_msgs_array (let (r) (dotimes (i n) (push (instance rm_msgs::TagMsg :init) r)) r))
     (dolist (elem- _tag_msgs_array)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rm_msgs::TagMsgArray :md5sum-) "902a772db603bf3e4cf94e3aa203838c")
(setf (get rm_msgs::TagMsgArray :datatype-) "rm_msgs/TagMsgArray")
(setf (get rm_msgs::TagMsgArray :definition-)
      "std_msgs/Header header
TagMsg[] tag_msgs_array

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
MSG: rm_msgs/TagMsg
uint8 color
uint8 letter
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



(provide :rm_msgs/TagMsgArray "902a772db603bf3e4cf94e3aa203838c")


