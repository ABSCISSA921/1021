;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ClientMapSendData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ClientMapSendData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CLIENTMAPSENDDATA")
  (make-package "RM_MSGS::CLIENTMAPSENDDATA"))

(in-package "ROS")
;;//! \htmlinclude ClientMapSendData.msg.html


(intern "*KEY_Q*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_Q* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_Q* 81)
(intern "*KEY_W*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_W* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_W* 87)
(intern "*KEY_E*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_E* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_E* 69)
(intern "*KEY_R*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_R* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_R* 82)
(intern "*KEY_T*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_T* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_T* 84)
(intern "*KEY_Y*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_Y* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_Y* 89)
(intern "*KEY_U*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_U* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_U* 85)
(intern "*KEY_O*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_O* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_O* 79)
(intern "*KEY_A*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_A* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_A* 65)
(intern "*KEY_S*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_S* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_S* 83)
(intern "*KEY_D*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_D* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_D* 68)
(intern "*KEY_F*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_F* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_F* 70)
(intern "*KEY_G*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_G* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_G* 71)
(intern "*KEY_H*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_H* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_H* 72)
(intern "*KEY_J*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_J* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_J* 74)
(intern "*KEY_K*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_K* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_K* 75)
(intern "*KEY_L*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_L* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_L* 76)
(intern "*KEY_Z*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_Z* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_Z* 90)
(intern "*KEY_X*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_X* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_X* 88)
(intern "*KEY_C*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_C* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_C* 67)
(intern "*KEY_V*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_V* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_V* 86)
(intern "*KEY_N*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_N* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_N* 78)

(defun rm_msgs::ClientMapSendData-to-symbol (const)
  (cond
        ((= const 81) 'rm_msgs::ClientMapSendData::*KEY_Q*)
        ((= const 87) 'rm_msgs::ClientMapSendData::*KEY_W*)
        ((= const 69) 'rm_msgs::ClientMapSendData::*KEY_E*)
        ((= const 82) 'rm_msgs::ClientMapSendData::*KEY_R*)
        ((= const 84) 'rm_msgs::ClientMapSendData::*KEY_T*)
        ((= const 89) 'rm_msgs::ClientMapSendData::*KEY_Y*)
        ((= const 85) 'rm_msgs::ClientMapSendData::*KEY_U*)
        ((= const 79) 'rm_msgs::ClientMapSendData::*KEY_O*)
        ((= const 65) 'rm_msgs::ClientMapSendData::*KEY_A*)
        ((= const 83) 'rm_msgs::ClientMapSendData::*KEY_S*)
        ((= const 68) 'rm_msgs::ClientMapSendData::*KEY_D*)
        ((= const 70) 'rm_msgs::ClientMapSendData::*KEY_F*)
        ((= const 71) 'rm_msgs::ClientMapSendData::*KEY_G*)
        ((= const 72) 'rm_msgs::ClientMapSendData::*KEY_H*)
        ((= const 74) 'rm_msgs::ClientMapSendData::*KEY_J*)
        ((= const 75) 'rm_msgs::ClientMapSendData::*KEY_K*)
        ((= const 76) 'rm_msgs::ClientMapSendData::*KEY_L*)
        ((= const 90) 'rm_msgs::ClientMapSendData::*KEY_Z*)
        ((= const 88) 'rm_msgs::ClientMapSendData::*KEY_X*)
        ((= const 67) 'rm_msgs::ClientMapSendData::*KEY_C*)
        ((= const 86) 'rm_msgs::ClientMapSendData::*KEY_V*)
        ((= const 78) 'rm_msgs::ClientMapSendData::*KEY_N*)
        (t nil)))

(defclass rm_msgs::ClientMapSendData
  :super ros::object
  :slots (_target_position_x _target_position_y _command_keyboard _target_robot_ID _cmd_source ))

(defmethod rm_msgs::ClientMapSendData
  (:init
   (&key
    ((:target_position_x __target_position_x) 0.0)
    ((:target_position_y __target_position_y) 0.0)
    ((:command_keyboard __command_keyboard) 0)
    ((:target_robot_ID __target_robot_ID) 0)
    ((:cmd_source __cmd_source) 0)
    )
   (send-super :init)
   (setq _target_position_x (float __target_position_x))
   (setq _target_position_y (float __target_position_y))
   (setq _command_keyboard (round __command_keyboard))
   (setq _target_robot_ID (round __target_robot_ID))
   (setq _cmd_source (round __cmd_source))
   self)
  (:target_position_x
   (&optional __target_position_x)
   (if __target_position_x (setq _target_position_x __target_position_x)) _target_position_x)
  (:target_position_y
   (&optional __target_position_y)
   (if __target_position_y (setq _target_position_y __target_position_y)) _target_position_y)
  (:command_keyboard
   (&optional __command_keyboard)
   (if __command_keyboard (setq _command_keyboard __command_keyboard)) _command_keyboard)
  (:target_robot_ID
   (&optional __target_robot_ID)
   (if __target_robot_ID (setq _target_robot_ID __target_robot_ID)) _target_robot_ID)
  (:cmd_source
   (&optional __cmd_source)
   (if __cmd_source (setq _cmd_source __cmd_source)) _cmd_source)
  (:serialization-length
   ()
   (+
    ;; float32 _target_position_x
    4
    ;; float32 _target_position_y
    4
    ;; uint8 _command_keyboard
    1
    ;; uint8 _target_robot_ID
    1
    ;; uint8 _cmd_source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_position_x
       (sys::poke _target_position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position_y
       (sys::poke _target_position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _command_keyboard
       (write-byte _command_keyboard s)
     ;; uint8 _target_robot_ID
       (write-byte _target_robot_ID s)
     ;; uint8 _cmd_source
       (write-byte _cmd_source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_position_x
     (setq _target_position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position_y
     (setq _target_position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _command_keyboard
     (setq _command_keyboard (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _target_robot_ID
     (setq _target_robot_ID (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cmd_source
     (setq _cmd_source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::ClientMapSendData :md5sum-) "aee27039134a834173f127a33eff61f7")
(setf (get rm_msgs::ClientMapSendData :datatype-) "rm_msgs/ClientMapSendData")
(setf (get rm_msgs::ClientMapSendData :definition-)
      "uint8 KEY_Q = 81
uint8 KEY_W = 87
uint8 KEY_E = 69
uint8 KEY_R = 82
uint8 KEY_T = 84
uint8 KEY_Y = 89
uint8 KEY_U = 85
uint8 KEY_O = 79

uint8 KEY_A = 65
uint8 KEY_S = 83
uint8 KEY_D = 68
uint8 KEY_F = 70
uint8 KEY_G = 71
uint8 KEY_H = 72
uint8 KEY_J = 74
uint8 KEY_K = 75
uint8 KEY_L = 76

uint8 KEY_Z = 90
uint8 KEY_X = 88
uint8 KEY_C = 67
uint8 KEY_V = 86
uint8 KEY_N = 78

float32 target_position_x
float32 target_position_y
uint8 command_keyboard
uint8 target_robot_ID
uint8 cmd_source

")



(provide :rm_msgs/ClientMapSendData "aee27039134a834173f127a33eff61f7")


