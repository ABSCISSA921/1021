;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::SentryAttackingTarget)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'SentryAttackingTarget (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::SENTRYATTACKINGTARGET")
  (make-package "RM_MSGS::SENTRYATTACKINGTARGET"))

(in-package "ROS")
;;//! \htmlinclude SentryAttackingTarget.msg.html


(defclass rm_msgs::SentryAttackingTarget
  :super ros::object
  :slots (_target_robot_ID _target_position_x _target_position_y ))

(defmethod rm_msgs::SentryAttackingTarget
  (:init
   (&key
    ((:target_robot_ID __target_robot_ID) 0)
    ((:target_position_x __target_position_x) 0.0)
    ((:target_position_y __target_position_y) 0.0)
    )
   (send-super :init)
   (setq _target_robot_ID (round __target_robot_ID))
   (setq _target_position_x (float __target_position_x))
   (setq _target_position_y (float __target_position_y))
   self)
  (:target_robot_ID
   (&optional __target_robot_ID)
   (if __target_robot_ID (setq _target_robot_ID __target_robot_ID)) _target_robot_ID)
  (:target_position_x
   (&optional __target_position_x)
   (if __target_position_x (setq _target_position_x __target_position_x)) _target_position_x)
  (:target_position_y
   (&optional __target_position_y)
   (if __target_position_y (setq _target_position_y __target_position_y)) _target_position_y)
  (:serialization-length
   ()
   (+
    ;; uint8 _target_robot_ID
    1
    ;; float32 _target_position_x
    4
    ;; float32 _target_position_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _target_robot_ID
       (write-byte _target_robot_ID s)
     ;; float32 _target_position_x
       (sys::poke _target_position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position_y
       (sys::poke _target_position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _target_robot_ID
     (setq _target_robot_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _target_position_x
     (setq _target_position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position_y
     (setq _target_position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::SentryAttackingTarget :md5sum-) "7a40fa9feb588f965f643eb4bde597b4")
(setf (get rm_msgs::SentryAttackingTarget :datatype-) "rm_msgs/SentryAttackingTarget")
(setf (get rm_msgs::SentryAttackingTarget :definition-)
      "uint8 target_robot_ID
float32 target_position_x
float32 target_position_y

")



(provide :rm_msgs/SentryAttackingTarget "7a40fa9feb588f965f643eb4bde597b4")


