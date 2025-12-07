;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ShootState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ShootState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SHOOTSTATE")
  (make-package "RM_MSGS::SHOOTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ShootState.msg.html


(intern "*STOP*" (find-package "RM_MSGS::SHOOTSTATE"))
(shadow '*STOP* (find-package "RM_MSGS::SHOOTSTATE"))
(defconstant rm_msgs::ShootState::*STOP* 0)
(intern "*READY*" (find-package "RM_MSGS::SHOOTSTATE"))
(shadow '*READY* (find-package "RM_MSGS::SHOOTSTATE"))
(defconstant rm_msgs::ShootState::*READY* 1)
(intern "*PUSH*" (find-package "RM_MSGS::SHOOTSTATE"))
(shadow '*PUSH* (find-package "RM_MSGS::SHOOTSTATE"))
(defconstant rm_msgs::ShootState::*PUSH* 2)
(intern "*BLOCK*" (find-package "RM_MSGS::SHOOTSTATE"))
(shadow '*BLOCK* (find-package "RM_MSGS::SHOOTSTATE"))
(defconstant rm_msgs::ShootState::*BLOCK* 3)

(defun rm_msgs::ShootState-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::ShootState::*STOP*)
        ((= const 1) 'rm_msgs::ShootState::*READY*)
        ((= const 2) 'rm_msgs::ShootState::*PUSH*)
        ((= const 3) 'rm_msgs::ShootState::*BLOCK*)
        (t nil)))

(defclass rm_msgs::ShootState
  :super ros::object
  :slots (_state _stamp ))

(defmethod rm_msgs::ShootState
  (:init
   (&key
    ((:state __state) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _state (round __state))
   (setq _stamp __stamp)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _state
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _state
       (write-byte _state s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ShootState :md5sum-) "b15fb3b0295db9ecded84ae23a7dcfc0")
(setf (get rm_msgs::ShootState :datatype-) "rm_msgs/ShootState")
(setf (get rm_msgs::ShootState :definition-)
      "uint8 STOP = 0
uint8 READY = 1
uint8 PUSH = 2
uint8 BLOCK = 3

uint8 state
time stamp

")



(provide :rm_msgs/ShootState "b15fb3b0295db9ecded84ae23a7dcfc0")


