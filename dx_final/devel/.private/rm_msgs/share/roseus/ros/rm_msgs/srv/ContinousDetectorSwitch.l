;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ContinousDetectorSwitch)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ContinousDetectorSwitch (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CONTINOUSDETECTORSWITCH")
  (make-package "RM_MSGS::CONTINOUSDETECTORSWITCH"))
(unless (find-package "RM_MSGS::CONTINOUSDETECTORSWITCHREQUEST")
  (make-package "RM_MSGS::CONTINOUSDETECTORSWITCHREQUEST"))
(unless (find-package "RM_MSGS::CONTINOUSDETECTORSWITCHRESPONSE")
  (make-package "RM_MSGS::CONTINOUSDETECTORSWITCHRESPONSE"))

(in-package "ROS")





(defclass rm_msgs::ContinousDetectorSwitchRequest
  :super ros::object
  :slots (_detector_switch ))

(defmethod rm_msgs::ContinousDetectorSwitchRequest
  (:init
   (&key
    ((:detector_switch __detector_switch) nil)
    )
   (send-super :init)
   (setq _detector_switch __detector_switch)
   self)
  (:detector_switch
   (&optional (__detector_switch :null))
   (if (not (eq __detector_switch :null)) (setq _detector_switch __detector_switch)) _detector_switch)
  (:serialization-length
   ()
   (+
    ;; bool _detector_switch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _detector_switch
       (if _detector_switch (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _detector_switch
     (setq _detector_switch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::ContinousDetectorSwitchResponse
  :super ros::object
  :slots (_continous_is_success ))

(defmethod rm_msgs::ContinousDetectorSwitchResponse
  (:init
   (&key
    ((:continous_is_success __continous_is_success) nil)
    )
   (send-super :init)
   (setq _continous_is_success __continous_is_success)
   self)
  (:continous_is_success
   (&optional (__continous_is_success :null))
   (if (not (eq __continous_is_success :null)) (setq _continous_is_success __continous_is_success)) _continous_is_success)
  (:serialization-length
   ()
   (+
    ;; bool _continous_is_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _continous_is_success
       (if _continous_is_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _continous_is_success
     (setq _continous_is_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::ContinousDetectorSwitch
  :super ros::object
  :slots ())

(setf (get rm_msgs::ContinousDetectorSwitch :md5sum-) "124ca6e89084b28197084359298c939c")
(setf (get rm_msgs::ContinousDetectorSwitch :datatype-) "rm_msgs/ContinousDetectorSwitch")
(setf (get rm_msgs::ContinousDetectorSwitch :request) rm_msgs::ContinousDetectorSwitchRequest)
(setf (get rm_msgs::ContinousDetectorSwitch :response) rm_msgs::ContinousDetectorSwitchResponse)

(defmethod rm_msgs::ContinousDetectorSwitchRequest
  (:response () (instance rm_msgs::ContinousDetectorSwitchResponse :init)))

(setf (get rm_msgs::ContinousDetectorSwitchRequest :md5sum-) "124ca6e89084b28197084359298c939c")
(setf (get rm_msgs::ContinousDetectorSwitchRequest :datatype-) "rm_msgs/ContinousDetectorSwitchRequest")
(setf (get rm_msgs::ContinousDetectorSwitchRequest :definition-)
      "bool detector_switch
---
bool continous_is_success

")

(setf (get rm_msgs::ContinousDetectorSwitchResponse :md5sum-) "124ca6e89084b28197084359298c939c")
(setf (get rm_msgs::ContinousDetectorSwitchResponse :datatype-) "rm_msgs/ContinousDetectorSwitchResponse")
(setf (get rm_msgs::ContinousDetectorSwitchResponse :definition-)
      "bool detector_switch
---
bool continous_is_success

")



(provide :rm_msgs/ContinousDetectorSwitch "124ca6e89084b28197084359298c939c")


