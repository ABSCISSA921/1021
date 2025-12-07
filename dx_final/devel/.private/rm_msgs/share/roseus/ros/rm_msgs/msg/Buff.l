;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Buff)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Buff (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BUFF")
  (make-package "RM_MSGS::BUFF"))

(in-package "ROS")
;;//! \htmlinclude Buff.msg.html


(defclass rm_msgs::Buff
  :super ros::object
  :slots (_recovery_buff _cooling_buff _defence_buff _vulnerability_buff _attack_buff _remaining_energy ))

(defmethod rm_msgs::Buff
  (:init
   (&key
    ((:recovery_buff __recovery_buff) 0)
    ((:cooling_buff __cooling_buff) 0)
    ((:defence_buff __defence_buff) 0)
    ((:vulnerability_buff __vulnerability_buff) 0)
    ((:attack_buff __attack_buff) 0)
    ((:remaining_energy __remaining_energy) 0)
    )
   (send-super :init)
   (setq _recovery_buff (round __recovery_buff))
   (setq _cooling_buff (round __cooling_buff))
   (setq _defence_buff (round __defence_buff))
   (setq _vulnerability_buff (round __vulnerability_buff))
   (setq _attack_buff (round __attack_buff))
   (setq _remaining_energy (round __remaining_energy))
   self)
  (:recovery_buff
   (&optional __recovery_buff)
   (if __recovery_buff (setq _recovery_buff __recovery_buff)) _recovery_buff)
  (:cooling_buff
   (&optional __cooling_buff)
   (if __cooling_buff (setq _cooling_buff __cooling_buff)) _cooling_buff)
  (:defence_buff
   (&optional __defence_buff)
   (if __defence_buff (setq _defence_buff __defence_buff)) _defence_buff)
  (:vulnerability_buff
   (&optional __vulnerability_buff)
   (if __vulnerability_buff (setq _vulnerability_buff __vulnerability_buff)) _vulnerability_buff)
  (:attack_buff
   (&optional __attack_buff)
   (if __attack_buff (setq _attack_buff __attack_buff)) _attack_buff)
  (:remaining_energy
   (&optional __remaining_energy)
   (if __remaining_energy (setq _remaining_energy __remaining_energy)) _remaining_energy)
  (:serialization-length
   ()
   (+
    ;; uint8 _recovery_buff
    1
    ;; uint8 _cooling_buff
    1
    ;; uint8 _defence_buff
    1
    ;; uint8 _vulnerability_buff
    1
    ;; uint16 _attack_buff
    2
    ;; uint8 _remaining_energy
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _recovery_buff
       (write-byte _recovery_buff s)
     ;; uint8 _cooling_buff
       (write-byte _cooling_buff s)
     ;; uint8 _defence_buff
       (write-byte _defence_buff s)
     ;; uint8 _vulnerability_buff
       (write-byte _vulnerability_buff s)
     ;; uint16 _attack_buff
       (write-word _attack_buff s)
     ;; uint8 _remaining_energy
       (write-byte _remaining_energy s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _recovery_buff
     (setq _recovery_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _cooling_buff
     (setq _cooling_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _defence_buff
     (setq _defence_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _vulnerability_buff
     (setq _vulnerability_buff (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _attack_buff
     (setq _attack_buff (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _remaining_energy
     (setq _remaining_energy (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rm_msgs::Buff :md5sum-) "0350c419b72e90cb811a4148874b61cf")
(setf (get rm_msgs::Buff :datatype-) "rm_msgs/Buff")
(setf (get rm_msgs::Buff :definition-)
      "uint8 recovery_buff
uint8 cooling_buff
uint8 defence_buff
uint8 vulnerability_buff
uint16 attack_buff
uint8 remaining_energy

")



(provide :rm_msgs/Buff "0350c419b72e90cb811a4148874b61cf")


