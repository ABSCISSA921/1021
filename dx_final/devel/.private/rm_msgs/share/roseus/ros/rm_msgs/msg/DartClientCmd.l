;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::DartClientCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'DartClientCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DARTCLIENTCMD")
  (make-package "RM_MSGS::DARTCLIENTCMD"))

(in-package "ROS")
;;//! \htmlinclude DartClientCmd.msg.html


(intern "*CLOSED*" (find-package "RM_MSGS::DARTCLIENTCMD"))
(shadow '*CLOSED* (find-package "RM_MSGS::DARTCLIENTCMD"))
(defconstant rm_msgs::DartClientCmd::*CLOSED* 1)
(intern "*OPENING_OR_CLOSING*" (find-package "RM_MSGS::DARTCLIENTCMD"))
(shadow '*OPENING_OR_CLOSING* (find-package "RM_MSGS::DARTCLIENTCMD"))
(defconstant rm_msgs::DartClientCmd::*OPENING_OR_CLOSING* 2)
(intern "*OPENED*" (find-package "RM_MSGS::DARTCLIENTCMD"))
(shadow '*OPENED* (find-package "RM_MSGS::DARTCLIENTCMD"))
(defconstant rm_msgs::DartClientCmd::*OPENED* 0)

(defun rm_msgs::DartClientCmd-to-symbol (const)
  (cond
        ((= const 1) 'rm_msgs::DartClientCmd::*CLOSED*)
        ((= const 2) 'rm_msgs::DartClientCmd::*OPENING_OR_CLOSING*)
        ((= const 0) 'rm_msgs::DartClientCmd::*OPENED*)
        (t nil)))

(defclass rm_msgs::DartClientCmd
  :super ros::object
  :slots (_dart_launch_opening_status _target_change_time _latest_launch_cmd_time _stamp ))

(defmethod rm_msgs::DartClientCmd
  (:init
   (&key
    ((:dart_launch_opening_status __dart_launch_opening_status) 0)
    ((:target_change_time __target_change_time) 0)
    ((:latest_launch_cmd_time __latest_launch_cmd_time) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _dart_launch_opening_status (round __dart_launch_opening_status))
   (setq _target_change_time (round __target_change_time))
   (setq _latest_launch_cmd_time (round __latest_launch_cmd_time))
   (setq _stamp __stamp)
   self)
  (:dart_launch_opening_status
   (&optional __dart_launch_opening_status)
   (if __dart_launch_opening_status (setq _dart_launch_opening_status __dart_launch_opening_status)) _dart_launch_opening_status)
  (:target_change_time
   (&optional __target_change_time)
   (if __target_change_time (setq _target_change_time __target_change_time)) _target_change_time)
  (:latest_launch_cmd_time
   (&optional __latest_launch_cmd_time)
   (if __latest_launch_cmd_time (setq _latest_launch_cmd_time __latest_launch_cmd_time)) _latest_launch_cmd_time)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _dart_launch_opening_status
    1
    ;; uint16 _target_change_time
    2
    ;; uint16 _latest_launch_cmd_time
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _dart_launch_opening_status
       (write-byte _dart_launch_opening_status s)
     ;; uint16 _target_change_time
       (write-word _target_change_time s)
     ;; uint16 _latest_launch_cmd_time
       (write-word _latest_launch_cmd_time s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _dart_launch_opening_status
     (setq _dart_launch_opening_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _target_change_time
     (setq _target_change_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _latest_launch_cmd_time
     (setq _latest_launch_cmd_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::DartClientCmd :md5sum-) "35bb2f324581a84628fc6e104a35144c")
(setf (get rm_msgs::DartClientCmd :datatype-) "rm_msgs/DartClientCmd")
(setf (get rm_msgs::DartClientCmd :definition-)
      "uint8 dart_launch_opening_status
uint16 target_change_time
uint16 latest_launch_cmd_time

uint8 CLOSED = 1
uint8 OPENING_OR_CLOSING = 2
uint8 OPENED = 0

time stamp

")



(provide :rm_msgs/DartClientCmd "35bb2f324581a84628fc6e104a35144c")


