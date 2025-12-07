;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::MultiDofCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'MultiDofCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::MULTIDOFCMD")
  (make-package "RM_MSGS::MULTIDOFCMD"))

(in-package "ROS")
;;//! \htmlinclude MultiDofCmd.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*VELOCITY*" (find-package "RM_MSGS::MULTIDOFCMD"))
(shadow '*VELOCITY* (find-package "RM_MSGS::MULTIDOFCMD"))
(defconstant rm_msgs::MultiDofCmd::*VELOCITY* 0)
(intern "*POSITION*" (find-package "RM_MSGS::MULTIDOFCMD"))
(shadow '*POSITION* (find-package "RM_MSGS::MULTIDOFCMD"))
(defconstant rm_msgs::MultiDofCmd::*POSITION* 1)

(defun rm_msgs::MultiDofCmd-to-symbol (const)
  (cond
        ((= const 0) 'rm_msgs::MultiDofCmd::*VELOCITY*)
        ((= const 1) 'rm_msgs::MultiDofCmd::*POSITION*)
        (t nil)))

(defclass rm_msgs::MultiDofCmd
  :super ros::object
  :slots (_stamp _mode _linear _angular ))

(defmethod rm_msgs::MultiDofCmd
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:mode __mode) 0)
    ((:linear __linear) (instance geometry_msgs::Vector3 :init))
    ((:angular __angular) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _mode (round __mode))
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; uint8 _mode
    1
    ;; geometry_msgs/Vector3 _linear
    (send _linear :serialization-length)
    ;; geometry_msgs/Vector3 _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; geometry_msgs/Vector3 _linear
       (send _linear :serialize s)
     ;; geometry_msgs/Vector3 _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; geometry_msgs/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; geometry_msgs/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get rm_msgs::MultiDofCmd :md5sum-) "0ef5d8d462010858e9cd0f8a34969a34")
(setf (get rm_msgs::MultiDofCmd :datatype-) "rm_msgs/MultiDofCmd")
(setf (get rm_msgs::MultiDofCmd :definition-)
      "uint8 VELOCITY = 0
uint8 POSITION = 1

time stamp
uint8 mode

# VELOCITY/POSITION
geometry_msgs/Vector3 linear
geometry_msgs/Vector3 angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rm_msgs/MultiDofCmd "0ef5d8d462010858e9cd0f8a34969a34")


