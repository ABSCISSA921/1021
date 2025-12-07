;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SentryInfo)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SentryInfo (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SENTRYINFO")
  (make-package "RM_MSGS::SENTRYINFO"))

(in-package "ROS")
;;//! \htmlinclude SentryInfo.msg.html


(defclass rm_msgs::SentryInfo
  :super ros::object
  :slots (_sentry_info _is_out_of_war _remaining_bullets_can_supply ))

(defmethod rm_msgs::SentryInfo
  (:init
   (&key
    ((:sentry_info __sentry_info) 0)
    ((:is_out_of_war __is_out_of_war) nil)
    ((:remaining_bullets_can_supply __remaining_bullets_can_supply) 0)
    )
   (send-super :init)
   (setq _sentry_info (round __sentry_info))
   (setq _is_out_of_war __is_out_of_war)
   (setq _remaining_bullets_can_supply (round __remaining_bullets_can_supply))
   self)
  (:sentry_info
   (&optional __sentry_info)
   (if __sentry_info (setq _sentry_info __sentry_info)) _sentry_info)
  (:is_out_of_war
   (&optional (__is_out_of_war :null))
   (if (not (eq __is_out_of_war :null)) (setq _is_out_of_war __is_out_of_war)) _is_out_of_war)
  (:remaining_bullets_can_supply
   (&optional __remaining_bullets_can_supply)
   (if __remaining_bullets_can_supply (setq _remaining_bullets_can_supply __remaining_bullets_can_supply)) _remaining_bullets_can_supply)
  (:serialization-length
   ()
   (+
    ;; uint32 _sentry_info
    4
    ;; bool _is_out_of_war
    1
    ;; uint16 _remaining_bullets_can_supply
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sentry_info
       (write-long _sentry_info s)
     ;; bool _is_out_of_war
       (if _is_out_of_war (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _remaining_bullets_can_supply
       (write-word _remaining_bullets_can_supply s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sentry_info
     (setq _sentry_info (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; bool _is_out_of_war
     (setq _is_out_of_war (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _remaining_bullets_can_supply
     (setq _remaining_bullets_can_supply (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rm_msgs::SentryInfo :md5sum-) "12d17492af26f6bdf5a621bccb488999")
(setf (get rm_msgs::SentryInfo :datatype-) "rm_msgs/SentryInfo")
(setf (get rm_msgs::SentryInfo :definition-)
      "uint32 sentry_info
bool is_out_of_war
uint16 remaining_bullets_can_supply

")



(provide :rm_msgs/SentryInfo "12d17492af26f6bdf5a621bccb488999")


