;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::StatusChange)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'StatusChange (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::STATUSCHANGE")
  (make-package "RM_MSGS::STATUSCHANGE"))
(unless (find-package "RM_MSGS::STATUSCHANGEREQUEST")
  (make-package "RM_MSGS::STATUSCHANGEREQUEST"))
(unless (find-package "RM_MSGS::STATUSCHANGERESPONSE")
  (make-package "RM_MSGS::STATUSCHANGERESPONSE"))

(in-package "ROS")





(intern "*RED*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*RED* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*RED* 0)
(intern "*BLUE*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*BLUE* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*BLUE* 1)
(intern "*PURPLE*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*PURPLE* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*PURPLE* 2)
(intern "*ARMOR*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*ARMOR* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*ARMOR* 0)
(intern "*SMALL_BUFF*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*SMALL_BUFF* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*SMALL_BUFF* 1)
(intern "*BIG_BUFF*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*BIG_BUFF* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*BIG_BUFF* 2)
(intern "*ARMOR_ALL*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*ARMOR_ALL* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*ARMOR_ALL* 0)
(intern "*ARMOR_OUTPOST_BASE*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*ARMOR_OUTPOST_BASE* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*ARMOR_OUTPOST_BASE* 1)
(intern "*ARMOR_WITHOUT_OUTPOST_BASE*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*ARMOR_WITHOUT_OUTPOST_BASE* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*ARMOR_WITHOUT_OUTPOST_BASE* 2)
(intern "*EXPOSURE_LEVEL_0*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*EXPOSURE_LEVEL_0* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_0* 0)
(intern "*EXPOSURE_LEVEL_1*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*EXPOSURE_LEVEL_1* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_1* 1)
(intern "*EXPOSURE_LEVEL_2*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*EXPOSURE_LEVEL_2* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_2* 2)
(intern "*EXPOSURE_LEVEL_3*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*EXPOSURE_LEVEL_3* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_3* 3)
(intern "*EXPOSURE_LEVEL_4*" (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(shadow '*EXPOSURE_LEVEL_4* (find-package "RM_MSGS::STATUSCHANGEREQUEST"))
(defconstant rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_4* 4)

(defun rm_msgs::StatusChangeRequest-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::StatusChangeRequest::*RED*)
        ((= const 1) 'rm_msgs::StatusChangeRequest::*BLUE*)
        ((= const 2) 'rm_msgs::StatusChangeRequest::*PURPLE*)
        ((= const 0) 'rm_msgs::StatusChangeRequest::*ARMOR*)
        ((= const 1) 'rm_msgs::StatusChangeRequest::*SMALL_BUFF*)
        ((= const 2) 'rm_msgs::StatusChangeRequest::*BIG_BUFF*)
        ((= const 0) 'rm_msgs::StatusChangeRequest::*ARMOR_ALL*)
        ((= const 1) 'rm_msgs::StatusChangeRequest::*ARMOR_OUTPOST_BASE*)
        ((= const 2) 'rm_msgs::StatusChangeRequest::*ARMOR_WITHOUT_OUTPOST_BASE*)
        ((= const 0) 'rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_0*)
        ((= const 1) 'rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_1*)
        ((= const 2) 'rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_2*)
        ((= const 3) 'rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_3*)
        ((= const 4) 'rm_msgs::StatusChangeRequest::*EXPOSURE_LEVEL_4*)
        (t nil)))

(defclass rm_msgs::StatusChangeRequest
  :super ros::object
  :slots (_color _target _armor_target _exposure _use_id_classification ))

(defmethod rm_msgs::StatusChangeRequest
  (:init
   (&key
    ((:color __color) 0)
    ((:target __target) 0)
    ((:armor_target __armor_target) 0)
    ((:exposure __exposure) 0)
    ((:use_id_classification __use_id_classification) 0)
    )
   (send-super :init)
   (setq _color (round __color))
   (setq _target (round __target))
   (setq _armor_target (round __armor_target))
   (setq _exposure (round __exposure))
   (setq _use_id_classification (round __use_id_classification))
   self)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:target
   (&optional __target)
   (if __target (setq _target __target)) _target)
  (:armor_target
   (&optional __armor_target)
   (if __armor_target (setq _armor_target __armor_target)) _armor_target)
  (:exposure
   (&optional __exposure)
   (if __exposure (setq _exposure __exposure)) _exposure)
  (:use_id_classification
   (&optional __use_id_classification)
   (if __use_id_classification (setq _use_id_classification __use_id_classification)) _use_id_classification)
  (:serialization-length
   ()
   (+
    ;; uint8 _color
    1
    ;; uint8 _target
    1
    ;; uint8 _armor_target
    1
    ;; uint8 _exposure
    1
    ;; uint8 _use_id_classification
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _color
       (write-byte _color s)
     ;; uint8 _target
       (write-byte _target s)
     ;; uint8 _armor_target
       (write-byte _armor_target s)
     ;; uint8 _exposure
       (write-byte _exposure s)
     ;; uint8 _use_id_classification
       (write-byte _use_id_classification s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _color
     (setq _color (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target
     (setq _target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _armor_target
     (setq _armor_target (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _exposure
     (setq _exposure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _use_id_classification
     (setq _use_id_classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::StatusChangeResponse
  :super ros::object
  :slots (_switch_is_success ))

(defmethod rm_msgs::StatusChangeResponse
  (:init
   (&key
    ((:switch_is_success __switch_is_success) nil)
    )
   (send-super :init)
   (setq _switch_is_success __switch_is_success)
   self)
  (:switch_is_success
   (&optional (__switch_is_success :null))
   (if (not (eq __switch_is_success :null)) (setq _switch_is_success __switch_is_success)) _switch_is_success)
  (:serialization-length
   ()
   (+
    ;; bool _switch_is_success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _switch_is_success
       (if _switch_is_success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _switch_is_success
     (setq _switch_is_success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass rm_msgs::StatusChange
  :super ros::object
  :slots ())

(setf (get rm_msgs::StatusChange :md5sum-) "6a08dcf232cfcfc7c322ef15785928fb")
(setf (get rm_msgs::StatusChange :datatype-) "rm_msgs/StatusChange")
(setf (get rm_msgs::StatusChange :request) rm_msgs::StatusChangeRequest)
(setf (get rm_msgs::StatusChange :response) rm_msgs::StatusChangeResponse)

(defmethod rm_msgs::StatusChangeRequest
  (:response () (instance rm_msgs::StatusChangeResponse :init)))

(setf (get rm_msgs::StatusChangeRequest :md5sum-) "6a08dcf232cfcfc7c322ef15785928fb")
(setf (get rm_msgs::StatusChangeRequest :datatype-) "rm_msgs/StatusChangeRequest")
(setf (get rm_msgs::StatusChangeRequest :definition-)
      "uint8 color
uint8 target
uint8 armor_target
uint8 exposure
uint8 use_id_classification
uint8 RED = 0
uint8 BLUE = 1
uint8 PURPLE = 2
uint8 ARMOR = 0
uint8 SMALL_BUFF = 1
uint8 BIG_BUFF = 2
uint8 ARMOR_ALL = 0
uint8 ARMOR_OUTPOST_BASE = 1
uint8 ARMOR_WITHOUT_OUTPOST_BASE = 2
uint8 EXPOSURE_LEVEL_0 = 0
uint8 EXPOSURE_LEVEL_1 = 1
uint8 EXPOSURE_LEVEL_2 = 2
uint8 EXPOSURE_LEVEL_3 = 3
uint8 EXPOSURE_LEVEL_4 = 4
---
bool switch_is_success

")

(setf (get rm_msgs::StatusChangeResponse :md5sum-) "6a08dcf232cfcfc7c322ef15785928fb")
(setf (get rm_msgs::StatusChangeResponse :datatype-) "rm_msgs/StatusChangeResponse")
(setf (get rm_msgs::StatusChangeResponse :definition-)
      "uint8 color
uint8 target
uint8 armor_target
uint8 exposure
uint8 use_id_classification
uint8 RED = 0
uint8 BLUE = 1
uint8 PURPLE = 2
uint8 ARMOR = 0
uint8 SMALL_BUFF = 1
uint8 BIG_BUFF = 2
uint8 ARMOR_ALL = 0
uint8 ARMOR_OUTPOST_BASE = 1
uint8 ARMOR_WITHOUT_OUTPOST_BASE = 2
uint8 EXPOSURE_LEVEL_0 = 0
uint8 EXPOSURE_LEVEL_1 = 1
uint8 EXPOSURE_LEVEL_2 = 2
uint8 EXPOSURE_LEVEL_3 = 3
uint8 EXPOSURE_LEVEL_4 = 4
---
bool switch_is_success

")



(provide :rm_msgs/StatusChange "6a08dcf232cfcfc7c322ef15785928fb")


