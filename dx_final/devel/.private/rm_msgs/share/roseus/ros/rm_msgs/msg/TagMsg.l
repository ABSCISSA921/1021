;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TagMsg)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TagMsg (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TAGMSG")
  (make-package "RM_MSGS::TAGMSG"))

(in-package "ROS")
;;//! \htmlinclude TagMsg.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::TagMsg
  :super ros::object
  :slots (_color _letter _pose ))

(defmethod rm_msgs::TagMsg
  (:init
   (&key
    ((:color __color) 0)
    ((:letter __letter) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _letter (round __letter))
   (setq _pose __pose)
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:letter
   (&optional __letter)
   (if __letter (setq _letter __letter)) _letter)
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
    ;; uint8 _color
    1
    ;; uint8 _letter
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _color
       (write-byte _color s)
     ;; uint8 _letter
       (write-byte _letter s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _letter
     (setq _letter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::TagMsg :md5sum-) "20cfdd82cc6da3ba1e2608103b8aa270")
(setf (get rm_msgs::TagMsg :datatype-) "rm_msgs/TagMsg")
(setf (get rm_msgs::TagMsg :definition-)
      "uint8 color
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



(provide :rm_msgs/TagMsg "20cfdd82cc6da3ba1e2608103b8aa270")


