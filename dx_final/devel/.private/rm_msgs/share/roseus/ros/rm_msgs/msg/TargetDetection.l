;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::TargetDetection)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'TargetDetection (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::TARGETDETECTION")
  (make-package "RM_MSGS::TARGETDETECTION"))

(in-package "ROS")
;;//! \htmlinclude TargetDetection.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rm_msgs::TargetDetection
  :super ros::object
  :slots (_id _distance_to_image_center _confidence _is_large_armor _pose ))

(defmethod rm_msgs::TargetDetection
  (:init
   (&key
    ((:id __id) 0)
    ((:distance_to_image_center __distance_to_image_center) 0.0)
    ((:confidence __confidence) 0.0)
    ((:is_large_armor __is_large_armor) nil)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _distance_to_image_center (float __distance_to_image_center))
   (setq _confidence (float __confidence))
   (setq _is_large_armor __is_large_armor)
   (setq _pose __pose)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:distance_to_image_center
   (&optional __distance_to_image_center)
   (if __distance_to_image_center (setq _distance_to_image_center __distance_to_image_center)) _distance_to_image_center)
  (:confidence
   (&optional __confidence)
   (if __confidence (setq _confidence __confidence)) _confidence)
  (:is_large_armor
   (&optional (__is_large_armor :null))
   (if (not (eq __is_large_armor :null)) (setq _is_large_armor __is_large_armor)) _is_large_armor)
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
    ;; uint8 _id
    1
    ;; float64 _distance_to_image_center
    8
    ;; float64 _confidence
    8
    ;; bool _is_large_armor
    1
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; float64 _distance_to_image_center
       (sys::poke _distance_to_image_center (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _confidence
       (sys::poke _confidence (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _is_large_armor
       (if _is_large_armor (write-byte -1 s) (write-byte 0 s))
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _distance_to_image_center
     (setq _distance_to_image_center (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _confidence
     (setq _confidence (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _is_large_armor
     (setq _is_large_armor (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::TargetDetection :md5sum-) "d910a0b22b7be76ca063afd23388a35b")
(setf (get rm_msgs::TargetDetection :datatype-) "rm_msgs/TargetDetection")
(setf (get rm_msgs::TargetDetection :definition-)
      "uint8 id
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



(provide :rm_msgs/TargetDetection "d910a0b22b7be76ca063afd23388a35b")


