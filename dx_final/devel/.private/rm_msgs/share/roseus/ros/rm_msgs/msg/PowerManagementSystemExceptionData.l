;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerManagementSystemExceptionData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerManagementSystemExceptionData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERMANAGEMENTSYSTEMEXCEPTIONDATA")
  (make-package "RM_MSGS::POWERMANAGEMENTSYSTEMEXCEPTIONDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerManagementSystemExceptionData.msg.html


(defclass rm_msgs::PowerManagementSystemExceptionData
  :super ros::object
  :slots (_r0 _r1 _r2 _r3 _r12 _LR _PC _PSR _stamp ))

(defmethod rm_msgs::PowerManagementSystemExceptionData
  (:init
   (&key
    ((:r0 __r0) 0)
    ((:r1 __r1) 0)
    ((:r2 __r2) 0)
    ((:r3 __r3) 0)
    ((:r12 __r12) 0)
    ((:LR __LR) 0)
    ((:PC __PC) 0)
    ((:PSR __PSR) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _r0 (round __r0))
   (setq _r1 (round __r1))
   (setq _r2 (round __r2))
   (setq _r3 (round __r3))
   (setq _r12 (round __r12))
   (setq _LR (round __LR))
   (setq _PC (round __PC))
   (setq _PSR (round __PSR))
   (setq _stamp __stamp)
   self)
  (:r0
   (&optional __r0)
   (if __r0 (setq _r0 __r0)) _r0)
  (:r1
   (&optional __r1)
   (if __r1 (setq _r1 __r1)) _r1)
  (:r2
   (&optional __r2)
   (if __r2 (setq _r2 __r2)) _r2)
  (:r3
   (&optional __r3)
   (if __r3 (setq _r3 __r3)) _r3)
  (:r12
   (&optional __r12)
   (if __r12 (setq _r12 __r12)) _r12)
  (:LR
   (&optional __LR)
   (if __LR (setq _LR __LR)) _LR)
  (:PC
   (&optional __PC)
   (if __PC (setq _PC __PC)) _PC)
  (:PSR
   (&optional __PSR)
   (if __PSR (setq _PSR __PSR)) _PSR)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint32 _r0
    4
    ;; uint32 _r1
    4
    ;; uint32 _r2
    4
    ;; uint32 _r3
    4
    ;; uint32 _r12
    4
    ;; uint32 _LR
    4
    ;; uint32 _PC
    4
    ;; uint32 _PSR
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _r0
       (write-long _r0 s)
     ;; uint32 _r1
       (write-long _r1 s)
     ;; uint32 _r2
       (write-long _r2 s)
     ;; uint32 _r3
       (write-long _r3 s)
     ;; uint32 _r12
       (write-long _r12 s)
     ;; uint32 _LR
       (write-long _LR s)
     ;; uint32 _PC
       (write-long _PC s)
     ;; uint32 _PSR
       (write-long _PSR s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _r0
     (setq _r0 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _r1
     (setq _r1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _r2
     (setq _r2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _r3
     (setq _r3 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _r12
     (setq _r12 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _LR
     (setq _LR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _PC
     (setq _PC (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _PSR
     (setq _PSR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerManagementSystemExceptionData :md5sum-) "48dc20c9346b76eeb74bcfd0aefcc86d")
(setf (get rm_msgs::PowerManagementSystemExceptionData :datatype-) "rm_msgs/PowerManagementSystemExceptionData")
(setf (get rm_msgs::PowerManagementSystemExceptionData :definition-)
      "uint32 r0
uint32 r1
uint32 r2
uint32 r3
uint32 r12
uint32 LR
uint32 PC
uint32 PSR

time stamp

")



(provide :rm_msgs/PowerManagementSystemExceptionData "48dc20c9346b76eeb74bcfd0aefcc86d")


