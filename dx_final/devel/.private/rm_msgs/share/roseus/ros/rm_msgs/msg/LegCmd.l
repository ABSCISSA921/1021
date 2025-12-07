;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::LegCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'LegCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::LEGCMD")
  (make-package "RM_MSGS::LEGCMD"))

(in-package "ROS")
;;//! \htmlinclude LegCmd.msg.html


(defclass rm_msgs::LegCmd
  :super ros::object
  :slots (_jump _leg_length ))

(defmethod rm_msgs::LegCmd
  (:init
   (&key
    ((:jump __jump) nil)
    ((:leg_length __leg_length) 0.0)
    )
   (send-super :init)
   (setq _jump __jump)
   (setq _leg_length (float __leg_length))
   self)
  (:jump
   (&optional (__jump :null))
   (if (not (eq __jump :null)) (setq _jump __jump)) _jump)
  (:leg_length
   (&optional __leg_length)
   (if __leg_length (setq _leg_length __leg_length)) _leg_length)
  (:serialization-length
   ()
   (+
    ;; bool _jump
    1
    ;; float64 _leg_length
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _jump
       (if _jump (write-byte -1 s) (write-byte 0 s))
     ;; float64 _leg_length
       (sys::poke _leg_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _jump
     (setq _jump (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _leg_length
     (setq _leg_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get rm_msgs::LegCmd :md5sum-) "b88c1d23c403ffa8f3ded0d5c3447e4f")
(setf (get rm_msgs::LegCmd :datatype-) "rm_msgs/LegCmd")
(setf (get rm_msgs::LegCmd :definition-)
      "bool jump
float64 leg_length

")



(provide :rm_msgs/LegCmd "b88c1d23c403ffa8f3ded0d5c3447e4f")


