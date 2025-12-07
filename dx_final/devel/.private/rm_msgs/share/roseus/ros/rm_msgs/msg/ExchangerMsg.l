;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ExchangerMsg)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ExchangerMsg (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::EXCHANGERMSG")
  (make-package "RM_MSGS::EXCHANGERMSG"))

(in-package "ROS")
;;//! \htmlinclude ExchangerMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::ExchangerMsg
  :super ros::object
  :slots (_flag _shape _middle_point _pose ))

(defmethod rm_msgs::ExchangerMsg
  (:init
   (&key
    ((:flag __flag) 0)
    ((:shape __shape) 0)
    ((:middle_point __middle_point) (instance geometry_msgs::Point :init))
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _flag (round __flag))
   (setq _shape (round __shape))
   (setq _middle_point __middle_point)
   (setq _pose __pose)
   self)
  (:flag
   (&optional __flag)
   (if __flag (setq _flag __flag)) _flag)
  (:shape
   (&optional __shape)
   (if __shape (setq _shape __shape)) _shape)
  (:middle_point
   (&rest __middle_point)
   (if (keywordp (car __middle_point))
       (send* _middle_point __middle_point)
     (progn
       (if __middle_point (setq _middle_point (car __middle_point)))
       _middle_point)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; uint8 _flag
    1
    ;; uint8 _shape
    1
    ;; geometry_msgs/Point _middle_point
    (send _middle_point :serialization-length)
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _flag
       (write-byte _flag s)
     ;; uint8 _shape
       (write-byte _shape s)
     ;; geometry_msgs/Point _middle_point
       (send _middle_point :serialize s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _flag
     (setq _flag (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _shape
     (setq _shape (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Point _middle_point
     (send _middle_point :deserialize buf ptr-) (incf ptr- (send _middle_point :serialization-length))
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::ExchangerMsg :md5sum-) "b6d3cfca8ef03650140ca2d366044574")
(setf (get rm_msgs::ExchangerMsg :datatype-) "rm_msgs/ExchangerMsg")
(setf (get rm_msgs::ExchangerMsg :definition-)
      "uint8 flag
uint8 shape
geometry_msgs/Point middle_point
geometry_msgs/Pose pose

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :rm_msgs/ExchangerMsg "b6d3cfca8ef03650140ca2d366044574")


