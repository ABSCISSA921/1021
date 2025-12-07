;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::EngineerUi)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'EngineerUi (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ENGINEERUI")
  (make-package "RM_MSGS::ENGINEERUI"))

(in-package "ROS")
;;//! \htmlinclude EngineerUi.msg.html


(defclass rm_msgs::EngineerUi
  :super ros::object
  :slots (_control_mode _gripper_state _ex_arm_state _stone_num _step_queue_name _symbol _stamp ))

(defmethod rm_msgs::EngineerUi
  (:init
   (&key
    ((:control_mode __control_mode) "")
    ((:gripper_state __gripper_state) "")
    ((:ex_arm_state __ex_arm_state) "")
    ((:stone_num __stone_num) 0)
    ((:step_queue_name __step_queue_name) "")
    ((:symbol __symbol) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _control_mode (string __control_mode))
   (setq _gripper_state (string __gripper_state))
   (setq _ex_arm_state (string __ex_arm_state))
   (setq _stone_num (round __stone_num))
   (setq _step_queue_name (string __step_queue_name))
   (setq _symbol (round __symbol))
   (setq _stamp __stamp)
   self)
  (:control_mode
   (&optional __control_mode)
   (if __control_mode (setq _control_mode __control_mode)) _control_mode)
  (:gripper_state
   (&optional __gripper_state)
   (if __gripper_state (setq _gripper_state __gripper_state)) _gripper_state)
  (:ex_arm_state
   (&optional __ex_arm_state)
   (if __ex_arm_state (setq _ex_arm_state __ex_arm_state)) _ex_arm_state)
  (:stone_num
   (&optional __stone_num)
   (if __stone_num (setq _stone_num __stone_num)) _stone_num)
  (:step_queue_name
   (&optional __step_queue_name)
   (if __step_queue_name (setq _step_queue_name __step_queue_name)) _step_queue_name)
  (:symbol
   (&optional __symbol)
   (if __symbol (setq _symbol __symbol)) _symbol)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; string _control_mode
    4 (length _control_mode)
    ;; string _gripper_state
    4 (length _gripper_state)
    ;; string _ex_arm_state
    4 (length _ex_arm_state)
    ;; uint32 _stone_num
    4
    ;; string _step_queue_name
    4 (length _step_queue_name)
    ;; uint32 _symbol
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _control_mode
       (write-long (length _control_mode) s) (princ _control_mode s)
     ;; string _gripper_state
       (write-long (length _gripper_state) s) (princ _gripper_state s)
     ;; string _ex_arm_state
       (write-long (length _ex_arm_state) s) (princ _ex_arm_state s)
     ;; uint32 _stone_num
       (write-long _stone_num s)
     ;; string _step_queue_name
       (write-long (length _step_queue_name) s) (princ _step_queue_name s)
     ;; uint32 _symbol
       (write-long _symbol s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _control_mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _control_mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gripper_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gripper_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ex_arm_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ex_arm_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _stone_num
     (setq _stone_num (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _step_queue_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _step_queue_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _symbol
     (setq _symbol (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::EngineerUi :md5sum-) "d63975e3d07f2008b665b034a02c094f")
(setf (get rm_msgs::EngineerUi :datatype-) "rm_msgs/EngineerUi")
(setf (get rm_msgs::EngineerUi :definition-)
      "string control_mode
string gripper_state
string ex_arm_state
uint32 stone_num

string step_queue_name
uint32 symbol
time stamp

")



(provide :rm_msgs/EngineerUi "d63975e3d07f2008b665b034a02c094f")


