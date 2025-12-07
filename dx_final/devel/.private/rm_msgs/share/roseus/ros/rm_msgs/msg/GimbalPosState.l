;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GimbalPosState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GimbalPosState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GIMBALPOSSTATE")
  (make-package "RM_MSGS::GIMBALPOSSTATE"))

(in-package "ROS")
;;//! \htmlinclude GimbalPosState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rm_msgs::GimbalPosState
  :super ros::object
  :slots (_header _set_point _set_point_dot _process_value _error _command ))

(defmethod rm_msgs::GimbalPosState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:set_point __set_point) 0.0)
    ((:set_point_dot __set_point_dot) 0.0)
    ((:process_value __process_value) 0.0)
    ((:error __error) 0.0)
    ((:command __command) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _set_point (float __set_point))
   (setq _set_point_dot (float __set_point_dot))
   (setq _process_value (float __process_value))
   (setq _error (float __error))
   (setq _command (float __command))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:set_point
   (&optional __set_point)
   (if __set_point (setq _set_point __set_point)) _set_point)
  (:set_point_dot
   (&optional __set_point_dot)
   (if __set_point_dot (setq _set_point_dot __set_point_dot)) _set_point_dot)
  (:process_value
   (&optional __process_value)
   (if __process_value (setq _process_value __process_value)) _process_value)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:command
   (&optional __command)
   (if __command (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _set_point
    8
    ;; float64 _set_point_dot
    8
    ;; float64 _process_value
    8
    ;; float64 _error
    8
    ;; float64 _command
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _set_point
       (sys::poke _set_point (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _set_point_dot
       (sys::poke _set_point_dot (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _process_value
       (sys::poke _process_value (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _command
       (sys::poke _command (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _set_point
     (setq _set_point (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _set_point_dot
     (setq _set_point_dot (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _process_value
     (setq _process_value (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _command
     (setq _command (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::GimbalPosState :md5sum-) "8296607f8ca74414ef9d0745d5f23e5f")
(setf (get rm_msgs::GimbalPosState :datatype-) "rm_msgs/GimbalPosState")
(setf (get rm_msgs::GimbalPosState :definition-)
      "std_msgs/Header header
float64 set_point
float64 set_point_dot
float64 process_value
float64 error
float64 command

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



(provide :rm_msgs/GimbalPosState "8296607f8ca74414ef9d0745d5f23e5f")


