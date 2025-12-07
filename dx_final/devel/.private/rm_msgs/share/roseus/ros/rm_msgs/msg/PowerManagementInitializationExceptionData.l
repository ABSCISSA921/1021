;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerManagementInitializationExceptionData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerManagementInitializationExceptionData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERMANAGEMENTINITIALIZATIONEXCEPTIONDATA")
  (make-package "RM_MSGS::POWERMANAGEMENTINITIALIZATIONEXCEPTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerManagementInitializationExceptionData.msg.html


(defclass rm_msgs::PowerManagementInitializationExceptionData
  :super ros::object
  :slots (_error_code _string _stamp ))

(defmethod rm_msgs::PowerManagementInitializationExceptionData
  (:init
   (&key
    ((:error_code __error_code) 0)
    ((:string __string) "")
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _error_code (round __error_code))
   (setq _string (string __string))
   (setq _stamp __stamp)
   self)
  (:error_code
   (&optional __error_code)
   (if __error_code (setq _error_code __error_code)) _error_code)
  (:string
   (&optional __string)
   (if __string (setq _string __string)) _string)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int8 _error_code
    1
    ;; string _string
    4 (length _string)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _error_code
       (write-byte _error_code s)
     ;; string _string
       (write-long (length _string) s) (princ _string s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _error_code
     (setq _error_code (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _error_code 127) (setq _error_code (- _error_code 256)))
   ;; string _string
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _string (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerManagementInitializationExceptionData :md5sum-) "54a71420468ddead2ca3dd2998bc282b")
(setf (get rm_msgs::PowerManagementInitializationExceptionData :datatype-) "rm_msgs/PowerManagementInitializationExceptionData")
(setf (get rm_msgs::PowerManagementInitializationExceptionData :definition-)
      "int8 error_code
string string

time stamp

")



(provide :rm_msgs/PowerManagementInitializationExceptionData "54a71420468ddead2ca3dd2998bc282b")


