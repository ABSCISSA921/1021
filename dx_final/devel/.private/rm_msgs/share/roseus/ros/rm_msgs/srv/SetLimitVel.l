;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SetLimitVel)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SetLimitVel (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SETLIMITVEL")
  (make-package "RM_MSGS::SETLIMITVEL"))
(unless (find-package "RM_MSGS::SETLIMITVELREQUEST")
  (make-package "RM_MSGS::SETLIMITVELREQUEST"))
(unless (find-package "RM_MSGS::SETLIMITVELRESPONSE")
  (make-package "RM_MSGS::SETLIMITVELRESPONSE"))

(in-package "ROS")





(defclass rm_msgs::SetLimitVelRequest
  :super ros::object
  :slots (_limit_vel _slide_window ))

(defmethod rm_msgs::SetLimitVelRequest
  (:init
   (&key
    ((:limit_vel __limit_vel) 0.0)
    ((:slide_window __slide_window) 0.0)
    )
   (send-super :init)
   (setq _limit_vel (float __limit_vel))
   (setq _slide_window (float __slide_window))
   self)
  (:limit_vel
   (&optional __limit_vel)
   (if __limit_vel (setq _limit_vel __limit_vel)) _limit_vel)
  (:slide_window
   (&optional __slide_window)
   (if __slide_window (setq _slide_window __slide_window)) _slide_window)
  (:serialization-length
   ()
   (+
    ;; float32 _limit_vel
    4
    ;; float32 _slide_window
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _limit_vel
       (sys::poke _limit_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _slide_window
       (sys::poke _slide_window (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _limit_vel
     (setq _limit_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _slide_window
     (setq _slide_window (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rm_msgs::SetLimitVelResponse
  :super ros::object
  :slots (_current_limit_vel _current_slide_window ))

(defmethod rm_msgs::SetLimitVelResponse
  (:init
   (&key
    ((:current_limit_vel __current_limit_vel) 0.0)
    ((:current_slide_window __current_slide_window) 0.0)
    )
   (send-super :init)
   (setq _current_limit_vel (float __current_limit_vel))
   (setq _current_slide_window (float __current_slide_window))
   self)
  (:current_limit_vel
   (&optional __current_limit_vel)
   (if __current_limit_vel (setq _current_limit_vel __current_limit_vel)) _current_limit_vel)
  (:current_slide_window
   (&optional __current_slide_window)
   (if __current_slide_window (setq _current_slide_window __current_slide_window)) _current_slide_window)
  (:serialization-length
   ()
   (+
    ;; float32 _current_limit_vel
    4
    ;; float32 _current_slide_window
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _current_limit_vel
       (sys::poke _current_limit_vel (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current_slide_window
       (sys::poke _current_slide_window (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _current_limit_vel
     (setq _current_limit_vel (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current_slide_window
     (setq _current_slide_window (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass rm_msgs::SetLimitVel
  :super ros::object
  :slots ())

(setf (get rm_msgs::SetLimitVel :md5sum-) "2245c522444d13b16c8466a61157b141")
(setf (get rm_msgs::SetLimitVel :datatype-) "rm_msgs/SetLimitVel")
(setf (get rm_msgs::SetLimitVel :request) rm_msgs::SetLimitVelRequest)
(setf (get rm_msgs::SetLimitVel :response) rm_msgs::SetLimitVelResponse)

(defmethod rm_msgs::SetLimitVelRequest
  (:response () (instance rm_msgs::SetLimitVelResponse :init)))

(setf (get rm_msgs::SetLimitVelRequest :md5sum-) "2245c522444d13b16c8466a61157b141")
(setf (get rm_msgs::SetLimitVelRequest :datatype-) "rm_msgs/SetLimitVelRequest")
(setf (get rm_msgs::SetLimitVelRequest :definition-)
      "float32 limit_vel
float32 slide_window
---
float32 current_limit_vel
float32 current_slide_window

")

(setf (get rm_msgs::SetLimitVelResponse :md5sum-) "2245c522444d13b16c8466a61157b141")
(setf (get rm_msgs::SetLimitVelResponse :datatype-) "rm_msgs/SetLimitVelResponse")
(setf (get rm_msgs::SetLimitVelResponse :definition-)
      "float32 limit_vel
float32 slide_window
---
float32 current_limit_vel
float32 current_slide_window

")



(provide :rm_msgs/SetLimitVel "2245c522444d13b16c8466a61157b141")


