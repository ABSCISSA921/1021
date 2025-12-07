;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GimbalDesError)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GimbalDesError (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GIMBALDESERROR")
  (make-package "RM_MSGS::GIMBALDESERROR"))

(in-package "ROS")
;;//! \htmlinclude GimbalDesError.msg.html


(defclass rm_msgs::GimbalDesError
  :super ros::object
  :slots (_error _stamp ))

(defmethod rm_msgs::GimbalDesError
  (:init
   (&key
    ((:error __error) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _error (float __error))
   (setq _stamp __stamp)
   self)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float64 _error
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::GimbalDesError :md5sum-) "c15e035802d91010fb6b362d3c220fdc")
(setf (get rm_msgs::GimbalDesError :datatype-) "rm_msgs/GimbalDesError")
(setf (get rm_msgs::GimbalDesError :definition-)
      "float64 error

time stamp

")



(provide :rm_msgs/GimbalDesError "c15e035802d91010fb6b362d3c220fdc")


