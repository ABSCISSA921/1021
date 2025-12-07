;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EnableGyro)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EnableGyro (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ENABLEGYRO")
  (make-package "RM_MSGS::ENABLEGYRO"))
(unless (find-package "RM_MSGS::ENABLEGYROREQUEST")
  (make-package "RM_MSGS::ENABLEGYROREQUEST"))
(unless (find-package "RM_MSGS::ENABLEGYRORESPONSE")
  (make-package "RM_MSGS::ENABLEGYRORESPONSE"))

(in-package "ROS")





(defclass rm_msgs::EnableGyroRequest
  :super ros::object
  :slots (_gyro_speed ))

(defmethod rm_msgs::EnableGyroRequest
  (:init
   (&key
    ((:gyro_speed __gyro_speed) 0.0)
    )
   (send-super :init)
   (setq _gyro_speed (float __gyro_speed))
   self)
  (:gyro_speed
   (&optional __gyro_speed)
   (if __gyro_speed (setq _gyro_speed __gyro_speed)) _gyro_speed)
  (:serialization-length
   ()
   (+
    ;; float32 _gyro_speed
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _gyro_speed
       (sys::poke _gyro_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _gyro_speed
     (setq _gyro_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rm_msgs::EnableGyroResponse
  :super ros::object
  :slots (_is_gyro ))

(defmethod rm_msgs::EnableGyroResponse
  (:init
   (&key
    ((:is_gyro __is_gyro) nil)
    )
   (send-super :init)
   (setq _is_gyro __is_gyro)
   self)
  (:is_gyro
   (&optional (__is_gyro :null))
   (if (not (eq __is_gyro :null)) (setq _is_gyro __is_gyro)) _is_gyro)
  (:serialization-length
   ()
   (+
    ;; bool _is_gyro
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_gyro
       (if _is_gyro (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_gyro
     (setq _is_gyro (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::EnableGyro
  :super ros::object
  :slots ())

(setf (get rm_msgs::EnableGyro :md5sum-) "b392a2bc1a18f8fd0a5d7f696d80a69d")
(setf (get rm_msgs::EnableGyro :datatype-) "rm_msgs/EnableGyro")
(setf (get rm_msgs::EnableGyro :request) rm_msgs::EnableGyroRequest)
(setf (get rm_msgs::EnableGyro :response) rm_msgs::EnableGyroResponse)

(defmethod rm_msgs::EnableGyroRequest
  (:response () (instance rm_msgs::EnableGyroResponse :init)))

(setf (get rm_msgs::EnableGyroRequest :md5sum-) "b392a2bc1a18f8fd0a5d7f696d80a69d")
(setf (get rm_msgs::EnableGyroRequest :datatype-) "rm_msgs/EnableGyroRequest")
(setf (get rm_msgs::EnableGyroRequest :definition-)
      "float32 gyro_speed
---
bool is_gyro

")

(setf (get rm_msgs::EnableGyroResponse :md5sum-) "b392a2bc1a18f8fd0a5d7f696d80a69d")
(setf (get rm_msgs::EnableGyroResponse :datatype-) "rm_msgs/EnableGyroResponse")
(setf (get rm_msgs::EnableGyroResponse :definition-)
      "float32 gyro_speed
---
bool is_gyro

")



(provide :rm_msgs/EnableGyro "b392a2bc1a18f8fd0a5d7f696d80a69d")


