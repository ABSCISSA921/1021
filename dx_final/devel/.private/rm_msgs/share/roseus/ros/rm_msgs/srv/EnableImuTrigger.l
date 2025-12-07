;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EnableImuTrigger)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EnableImuTrigger (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ENABLEIMUTRIGGER")
  (make-package "RM_MSGS::ENABLEIMUTRIGGER"))
(unless (find-package "RM_MSGS::ENABLEIMUTRIGGERREQUEST")
  (make-package "RM_MSGS::ENABLEIMUTRIGGERREQUEST"))
(unless (find-package "RM_MSGS::ENABLEIMUTRIGGERRESPONSE")
  (make-package "RM_MSGS::ENABLEIMUTRIGGERRESPONSE"))

(in-package "ROS")





(defclass rm_msgs::EnableImuTriggerRequest
  :super ros::object
  :slots (_imu_name _enable_trigger ))

(defmethod rm_msgs::EnableImuTriggerRequest
  (:init
   (&key
    ((:imu_name __imu_name) "")
    ((:enable_trigger __enable_trigger) nil)
    )
   (send-super :init)
   (setq _imu_name (string __imu_name))
   (setq _enable_trigger __enable_trigger)
   self)
  (:imu_name
   (&optional __imu_name)
   (if __imu_name (setq _imu_name __imu_name)) _imu_name)
  (:enable_trigger
   (&optional (__enable_trigger :null))
   (if (not (eq __enable_trigger :null)) (setq _enable_trigger __enable_trigger)) _enable_trigger)
  (:serialization-length
   ()
   (+
    ;; string _imu_name
    4 (length _imu_name)
    ;; bool _enable_trigger
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _imu_name
       (write-long (length _imu_name) s) (princ _imu_name s)
     ;; bool _enable_trigger
       (if _enable_trigger (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _imu_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _imu_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _enable_trigger
     (setq _enable_trigger (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::EnableImuTriggerResponse
  :super ros::object
  :slots (_is_success ))

(defmethod rm_msgs::EnableImuTriggerResponse
  (:init
   (&key
    ((:is_success __is_success) nil)
    )
   (send-super :init)
   (setq _is_success __is_success)
   self)
  (:is_success
   (&optional (__is_success :null))
   (if (not (eq __is_success :null)) (setq _is_success __is_success)) _is_success)
  (:serialization-length
   ()
   (+
    ;; bool _is_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_success
       (if _is_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_success
     (setq _is_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::EnableImuTrigger
  :super ros::object
  :slots ())

(setf (get rm_msgs::EnableImuTrigger :md5sum-) "1e2c36312701f0610562a77ad6902d8f")
(setf (get rm_msgs::EnableImuTrigger :datatype-) "rm_msgs/EnableImuTrigger")
(setf (get rm_msgs::EnableImuTrigger :request) rm_msgs::EnableImuTriggerRequest)
(setf (get rm_msgs::EnableImuTrigger :response) rm_msgs::EnableImuTriggerResponse)

(defmethod rm_msgs::EnableImuTriggerRequest
  (:response () (instance rm_msgs::EnableImuTriggerResponse :init)))

(setf (get rm_msgs::EnableImuTriggerRequest :md5sum-) "1e2c36312701f0610562a77ad6902d8f")
(setf (get rm_msgs::EnableImuTriggerRequest :datatype-) "rm_msgs/EnableImuTriggerRequest")
(setf (get rm_msgs::EnableImuTriggerRequest :definition-)
      "string imu_name
bool enable_trigger
---
bool is_success

")

(setf (get rm_msgs::EnableImuTriggerResponse :md5sum-) "1e2c36312701f0610562a77ad6902d8f")
(setf (get rm_msgs::EnableImuTriggerResponse :datatype-) "rm_msgs/EnableImuTriggerResponse")
(setf (get rm_msgs::EnableImuTriggerResponse :definition-)
      "string imu_name
bool enable_trigger
---
bool is_success

")



(provide :rm_msgs/EnableImuTrigger "1e2c36312701f0610562a77ad6902d8f")


