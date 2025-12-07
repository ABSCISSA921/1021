;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerManagementProcessStackOverflowData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerManagementProcessStackOverflowData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERMANAGEMENTPROCESSSTACKOVERFLOWDATA")
  (make-package "RM_MSGS::POWERMANAGEMENTPROCESSSTACKOVERFLOWDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerManagementProcessStackOverflowData.msg.html


(defclass rm_msgs::PowerManagementProcessStackOverflowData
  :super ros::object
  :slots (_process_name _stamp ))

(defmethod rm_msgs::PowerManagementProcessStackOverflowData
  (:init
   (&key
    ((:process_name __process_name) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _process_name (string __process_name))
   (setq _stamp __stamp)
   self)
  (:process_name
   (&optional __process_name)
   (if __process_name (setq _process_name __process_name)) _process_name)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _process_name
    4 (length _process_name)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _process_name
       (write-long (length _process_name) s) (princ _process_name s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _process_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _process_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerManagementProcessStackOverflowData :md5sum-) "3888ad0e8184067e8398c12c0b5e2afe")
(setf (get rm_msgs::PowerManagementProcessStackOverflowData :datatype-) "rm_msgs/PowerManagementProcessStackOverflowData")
(setf (get rm_msgs::PowerManagementProcessStackOverflowData :definition-)
      "string process_name

time stamp

")



(provide :rm_msgs/PowerManagementProcessStackOverflowData "3888ad0e8184067e8398c12c0b5e2afe")


