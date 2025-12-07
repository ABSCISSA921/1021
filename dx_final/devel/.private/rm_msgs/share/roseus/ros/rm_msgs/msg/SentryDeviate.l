;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SentryDeviate)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SentryDeviate (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SENTRYDEVIATE")
  (make-package "RM_MSGS::SENTRYDEVIATE"))

(in-package "ROS")
;;//! \htmlinclude SentryDeviate.msg.html


(defclass rm_msgs::SentryDeviate
  :super ros::object
  :slots (_deviate_x _deviate_y _isDeviate ))

(defmethod rm_msgs::SentryDeviate
  (:init
   (&key
    ((:deviate_x __deviate_x) 0.0)
    ((:deviate_y __deviate_y) 0.0)
    ((:isDeviate __isDeviate) nil)
    )
   (send-super :init)
   (setq _deviate_x (float __deviate_x))
   (setq _deviate_y (float __deviate_y))
   (setq _isDeviate __isDeviate)
   self)
  (:deviate_x
   (&optional __deviate_x)
   (if __deviate_x (setq _deviate_x __deviate_x)) _deviate_x)
  (:deviate_y
   (&optional __deviate_y)
   (if __deviate_y (setq _deviate_y __deviate_y)) _deviate_y)
  (:isDeviate
   (&optional (__isDeviate :null))
   (if (not (eq __isDeviate :null)) (setq _isDeviate __isDeviate)) _isDeviate)
  (:serialization-length
   ()
   (+
    ;; float32 _deviate_x
    4
    ;; float32 _deviate_y
    4
    ;; bool _isDeviate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _deviate_x
       (sys::poke _deviate_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _deviate_y
       (sys::poke _deviate_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _isDeviate
       (if _isDeviate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _deviate_x
     (setq _deviate_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _deviate_y
     (setq _deviate_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _isDeviate
     (setq _isDeviate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::SentryDeviate :md5sum-) "3c69b176feecb141daf67e3748f91a86")
(setf (get rm_msgs::SentryDeviate :datatype-) "rm_msgs/SentryDeviate")
(setf (get rm_msgs::SentryDeviate :definition-)
      "float32 deviate_x
float32 deviate_y
bool isDeviate

")



(provide :rm_msgs/SentryDeviate "3c69b176feecb141daf67e3748f91a86")


