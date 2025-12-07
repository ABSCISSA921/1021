;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SentryCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SentryCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SENTRYCMD")
  (make-package "RM_MSGS::SENTRYCMD"))

(in-package "ROS")
;;//! \htmlinclude SentryCmd.msg.html


(defclass rm_msgs::SentryCmd
  :super ros::object
  :slots (_sentry_info ))

(defmethod rm_msgs::SentryCmd
  (:init
   (&key
    ((:sentry_info __sentry_info) 0)
    )
   (send-super :init)
   (setq _sentry_info (round __sentry_info))
   self)
  (:sentry_info
   (&optional __sentry_info)
   (if __sentry_info (setq _sentry_info __sentry_info)) _sentry_info)
  (:serialization-length
   ()
   (+
    ;; uint32 _sentry_info
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sentry_info
       (write-long _sentry_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sentry_info
     (setq _sentry_info (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::SentryCmd :md5sum-) "1a21fe818ae8429588925e99460baf95")
(setf (get rm_msgs::SentryCmd :datatype-) "rm_msgs/SentryCmd")
(setf (get rm_msgs::SentryCmd :definition-)
      "uint32 sentry_info

")



(provide :rm_msgs/SentryCmd "1a21fe818ae8429588925e99460baf95")


