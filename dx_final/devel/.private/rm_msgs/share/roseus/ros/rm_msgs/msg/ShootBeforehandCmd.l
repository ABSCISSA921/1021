;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ShootBeforehandCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ShootBeforehandCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SHOOTBEFOREHANDCMD")
  (make-package "RM_MSGS::SHOOTBEFOREHANDCMD"))

(in-package "ROS")
;;//! \htmlinclude ShootBeforehandCmd.msg.html


(intern "*BAN_SHOOT*" (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(shadow '*BAN_SHOOT* (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(defconstant rm_msgs::ShootBeforehandCmd::*BAN_SHOOT* 0)
(intern "*JUDGE_BY_ERROR*" (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(shadow '*JUDGE_BY_ERROR* (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(defconstant rm_msgs::ShootBeforehandCmd::*JUDGE_BY_ERROR* 1)
(intern "*ALLOW_SHOOT*" (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(shadow '*ALLOW_SHOOT* (find-package "RM_MSGS::SHOOTBEFOREHANDCMD"))
(defconstant rm_msgs::ShootBeforehandCmd::*ALLOW_SHOOT* 2)

(defun rm_msgs::ShootBeforehandCmd-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::ShootBeforehandCmd::*BAN_SHOOT*)
        ((= const 1) 'rm_msgs::ShootBeforehandCmd::*JUDGE_BY_ERROR*)
        ((= const 2) 'rm_msgs::ShootBeforehandCmd::*ALLOW_SHOOT*)
        (t nil)))

(defclass rm_msgs::ShootBeforehandCmd
  :super ros::object
  :slots (_cmd _stamp ))

(defmethod rm_msgs::ShootBeforehandCmd
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _stamp __stamp)
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _cmd
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _cmd
       (write-byte _cmd s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _cmd
     (setq _cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ShootBeforehandCmd :md5sum-) "0d0971a7e1340988ce149c76e012d34d")
(setf (get rm_msgs::ShootBeforehandCmd :datatype-) "rm_msgs/ShootBeforehandCmd")
(setf (get rm_msgs::ShootBeforehandCmd :definition-)
      "uint8 BAN_SHOOT = 0
uint8 JUDGE_BY_ERROR = 1
uint8 ALLOW_SHOOT = 2

uint8 cmd

time stamp

")



(provide :rm_msgs/ShootBeforehandCmd "0d0971a7e1340988ce149c76e012d34d")


