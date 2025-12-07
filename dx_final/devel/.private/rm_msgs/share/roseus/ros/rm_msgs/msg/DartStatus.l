;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DartStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DartStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DARTSTATUS")
  (make-package "RM_MSGS::DARTSTATUS"))

(in-package "ROS")
;;//! \htmlinclude DartStatus.msg.html


(defclass rm_msgs::DartStatus
  :super ros::object
  :slots (_dart_belong _stage_remaining_time _stamp ))

(defmethod rm_msgs::DartStatus
  (:init
   (&key
    ((:dart_belong __dart_belong) 0)
    ((:stage_remaining_time __stage_remaining_time) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _dart_belong (round __dart_belong))
   (setq _stage_remaining_time (round __stage_remaining_time))
   (setq _stamp __stamp)
   self)
  (:dart_belong
   (&optional __dart_belong)
   (if __dart_belong (setq _dart_belong __dart_belong)) _dart_belong)
  (:stage_remaining_time
   (&optional __stage_remaining_time)
   (if __stage_remaining_time (setq _stage_remaining_time __stage_remaining_time)) _stage_remaining_time)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _dart_belong
    1
    ;; uint16 _stage_remaining_time
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dart_belong
       (write-byte _dart_belong s)
     ;; uint16 _stage_remaining_time
       (write-word _stage_remaining_time s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dart_belong
     (setq _dart_belong (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _stage_remaining_time
     (setq _stage_remaining_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DartStatus :md5sum-) "2b9f6d95c72e29f45d76805d30f6de59")
(setf (get rm_msgs::DartStatus :datatype-) "rm_msgs/DartStatus")
(setf (get rm_msgs::DartStatus :definition-)
      "uint8 dart_belong
uint16 stage_remaining_time

time stamp

")



(provide :rm_msgs/DartStatus "2b9f6d95c72e29f45d76805d30f6de59")


