;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARDATA")
  (make-package "RM_MSGS::RADARDATA"))

(in-package "ROS")
;;//! \htmlinclude RadarData.msg.html


(intern "*FLYING_SLOPE*" (find-package "RM_MSGS::RADARDATA"))
(shadow '*FLYING_SLOPE* (find-package "RM_MSGS::RADARDATA"))
(defconstant rm_msgs::RadarData::*FLYING_SLOPE* 1)
(intern "*MARKING*" (find-package "RM_MSGS::RADARDATA"))
(shadow '*MARKING* (find-package "RM_MSGS::RADARDATA"))
(defconstant rm_msgs::RadarData::*MARKING* 2)
(intern "*POINT_ONE_SHOOTING*" (find-package "RM_MSGS::RADARDATA"))
(shadow '*POINT_ONE_SHOOTING* (find-package "RM_MSGS::RADARDATA"))
(defconstant rm_msgs::RadarData::*POINT_ONE_SHOOTING* 3)
(intern "*POINT_TWO_SHOOTING*" (find-package "RM_MSGS::RADARDATA"))
(shadow '*POINT_TWO_SHOOTING* (find-package "RM_MSGS::RADARDATA"))
(defconstant rm_msgs::RadarData::*POINT_TWO_SHOOTING* 4)
(intern "*REFILLING*" (find-package "RM_MSGS::RADARDATA"))
(shadow '*REFILLING* (find-package "RM_MSGS::RADARDATA"))
(defconstant rm_msgs::RadarData::*REFILLING* 5)

(defun rm_msgs::RadarData-to-symbol (const)
  (cond
        ((= const 1) 'rm_msgs::RadarData::*FLYING_SLOPE*)
        ((= const 2) 'rm_msgs::RadarData::*MARKING*)
        ((= const 3) 'rm_msgs::RadarData::*POINT_ONE_SHOOTING*)
        ((= const 4) 'rm_msgs::RadarData::*POINT_TWO_SHOOTING*)
        ((= const 5) 'rm_msgs::RadarData::*REFILLING*)
        (t nil)))

(defclass rm_msgs::RadarData
  :super ros::object
  :slots (_robot_id _state ))

(defmethod rm_msgs::RadarData
  (:init
   (&key
    ((:robot_id __robot_id) 0)
    ((:state __state) 0)
    )
   (send-super :init)
   (setq _robot_id (round __robot_id))
   (setq _state (round __state))
   self)
  (:robot_id
   (&optional __robot_id)
   (if __robot_id (setq _robot_id __robot_id)) _robot_id)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; uint8 _robot_id
    1
    ;; uint8 _state
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _robot_id
       (write-byte _robot_id s)
     ;; uint8 _state
       (write-byte _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _robot_id
     (setq _robot_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state
     (setq _state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::RadarData :md5sum-) "d804292969a0f67322d7ec462883ef13")
(setf (get rm_msgs::RadarData :datatype-) "rm_msgs/RadarData")
(setf (get rm_msgs::RadarData :definition-)
      "uint8 FLYING_SLOPE = 1
uint8 MARKING = 2
uint8 POINT_ONE_SHOOTING = 3
uint8 POINT_TWO_SHOOTING = 4
uint8 REFILLING = 5
uint8 robot_id

uint8 state

")



(provide :rm_msgs/RadarData "d804292969a0f67322d7ec462883ef13")


