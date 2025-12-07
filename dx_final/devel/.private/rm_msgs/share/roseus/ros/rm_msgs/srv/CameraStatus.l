;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::CameraStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'CameraStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CAMERASTATUS")
  (make-package "RM_MSGS::CAMERASTATUS"))
(unless (find-package "RM_MSGS::CAMERASTATUSREQUEST")
  (make-package "RM_MSGS::CAMERASTATUSREQUEST"))
(unless (find-package "RM_MSGS::CAMERASTATUSRESPONSE")
  (make-package "RM_MSGS::CAMERASTATUSRESPONSE"))

(in-package "ROS")





(defclass rm_msgs::CameraStatusRequest
  :super ros::object
  :slots (_imu_request ))

(defmethod rm_msgs::CameraStatusRequest
  (:init
   (&key
    ((:imu_request __imu_request) nil)
    )
   (send-super :init)
   (setq _imu_request __imu_request)
   self)
  (:imu_request
   (&optional (__imu_request :null))
   (if (not (eq __imu_request :null)) (setq _imu_request __imu_request)) _imu_request)
  (:serialization-length
   ()
   (+
    ;; bool _imu_request
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _imu_request
       (if _imu_request (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _imu_request
     (setq _imu_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::CameraStatusResponse
  :super ros::object
  :slots (_is_open ))

(defmethod rm_msgs::CameraStatusResponse
  (:init
   (&key
    ((:is_open __is_open) nil)
    )
   (send-super :init)
   (setq _is_open __is_open)
   self)
  (:is_open
   (&optional (__is_open :null))
   (if (not (eq __is_open :null)) (setq _is_open __is_open)) _is_open)
  (:serialization-length
   ()
   (+
    ;; bool _is_open
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_open
       (if _is_open (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_open
     (setq _is_open (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::CameraStatus
  :super ros::object
  :slots ())

(setf (get rm_msgs::CameraStatus :md5sum-) "86773025f35634422f96dc69ae7b5cfe")
(setf (get rm_msgs::CameraStatus :datatype-) "rm_msgs/CameraStatus")
(setf (get rm_msgs::CameraStatus :request) rm_msgs::CameraStatusRequest)
(setf (get rm_msgs::CameraStatus :response) rm_msgs::CameraStatusResponse)

(defmethod rm_msgs::CameraStatusRequest
  (:response () (instance rm_msgs::CameraStatusResponse :init)))

(setf (get rm_msgs::CameraStatusRequest :md5sum-) "86773025f35634422f96dc69ae7b5cfe")
(setf (get rm_msgs::CameraStatusRequest :datatype-) "rm_msgs/CameraStatusRequest")
(setf (get rm_msgs::CameraStatusRequest :definition-)
      "bool imu_request
---
bool is_open

")

(setf (get rm_msgs::CameraStatusResponse :md5sum-) "86773025f35634422f96dc69ae7b5cfe")
(setf (get rm_msgs::CameraStatusResponse :datatype-) "rm_msgs/CameraStatusResponse")
(setf (get rm_msgs::CameraStatusResponse :definition-)
      "bool imu_request
---
bool is_open

")



(provide :rm_msgs/CameraStatus "86773025f35634422f96dc69ae7b5cfe")


