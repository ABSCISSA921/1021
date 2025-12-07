;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PriorityArray)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PriorityArray (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::PRIORITYARRAY")
  (make-package "RM_MSGS::PRIORITYARRAY"))

(in-package "ROS")
;;//! \htmlinclude PriorityArray.msg.html


(intern "*HERO*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*HERO* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*HERO* 0)
(intern "*ENGINEER*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*ENGINEER* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*ENGINEER* 1)
(intern "*INFANTRY3*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*INFANTRY3* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*INFANTRY3* 2)
(intern "*INFANTRY4*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*INFANTRY4* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*INFANTRY4* 3)
(intern "*INFANTRY5*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*INFANTRY5* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*INFANTRY5* 4)
(intern "*OUTPOST*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*OUTPOST* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*OUTPOST* 5)
(intern "*SENTRY*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*SENTRY* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*SENTRY* 6)
(intern "*BASE*" (find-package "RM_MSGS::PRIORITYARRAY"))
(shadow '*BASE* (find-package "RM_MSGS::PRIORITYARRAY"))
(defconstant rm_msgs::PriorityArray::*BASE* 7)

(defun rm_msgs::PriorityArray-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::PriorityArray::*HERO*)
        ((= const 1) 'rm_msgs::PriorityArray::*ENGINEER*)
        ((= const 2) 'rm_msgs::PriorityArray::*INFANTRY3*)
        ((= const 3) 'rm_msgs::PriorityArray::*INFANTRY4*)
        ((= const 4) 'rm_msgs::PriorityArray::*INFANTRY5*)
        ((= const 5) 'rm_msgs::PriorityArray::*OUTPOST*)
        ((= const 6) 'rm_msgs::PriorityArray::*SENTRY*)
        ((= const 7) 'rm_msgs::PriorityArray::*BASE*)
        (t nil)))

(defclass rm_msgs::PriorityArray
  :super ros::object
  :slots (_rank_arr ))

(defmethod rm_msgs::PriorityArray
  (:init
   (&key
    ((:rank_arr __rank_arr) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _rank_arr __rank_arr)
   self)
  (:rank_arr
   (&optional __rank_arr)
   (if __rank_arr (setq _rank_arr __rank_arr)) _rank_arr)
  (:serialization-length
   ()
   (+
    ;; uint8[] _rank_arr
    (* 1    (length _rank_arr)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _rank_arr
     (write-long (length _rank_arr) s)
     (princ _rank_arr s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _rank_arr
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _rank_arr (make-array n :element-type :char))
     (replace _rank_arr buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get rm_msgs::PriorityArray :md5sum-) "9eb29adee789c861a1d9aa2167b08593")
(setf (get rm_msgs::PriorityArray :datatype-) "rm_msgs/PriorityArray")
(setf (get rm_msgs::PriorityArray :definition-)
      "uint8 HERO = 0
uint8 ENGINEER = 1
uint8 INFANTRY3 = 2
uint8 INFANTRY4 = 3
uint8 INFANTRY5 = 4
uint8 OUTPOST = 5
uint8 SENTRY = 6
uint8 BASE = 7

uint8[] rank_arr

")



(provide :rm_msgs/PriorityArray "9eb29adee789c861a1d9aa2167b08593")


