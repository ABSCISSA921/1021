;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ClientMapReceiveData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ClientMapReceiveData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CLIENTMAPRECEIVEDATA")
  (make-package "RM_MSGS::CLIENTMAPRECEIVEDATA"))

(in-package "ROS")
;;//! \htmlinclude ClientMapReceiveData.msg.html


(defclass rm_msgs::ClientMapReceiveData
  :super ros::object
  :slots (_hero_position_x _hero_position_y _engineer_position_x _engineer_position_y _infantry_3_position_x _infantry_3_position_y _infantry_4_position_x _infantry_4_position_y _infantry_5_position_x _infantry_5_position_y _sentry_position_x _sentry_position_y _stamp ))

(defmethod rm_msgs::ClientMapReceiveData
  (:init
   (&key
    ((:hero_position_x __hero_position_x) 0)
    ((:hero_position_y __hero_position_y) 0)
    ((:engineer_position_x __engineer_position_x) 0)
    ((:engineer_position_y __engineer_position_y) 0)
    ((:infantry_3_position_x __infantry_3_position_x) 0)
    ((:infantry_3_position_y __infantry_3_position_y) 0)
    ((:infantry_4_position_x __infantry_4_position_x) 0)
    ((:infantry_4_position_y __infantry_4_position_y) 0)
    ((:infantry_5_position_x __infantry_5_position_x) 0)
    ((:infantry_5_position_y __infantry_5_position_y) 0)
    ((:sentry_position_x __sentry_position_x) 0)
    ((:sentry_position_y __sentry_position_y) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _hero_position_x (round __hero_position_x))
   (setq _hero_position_y (round __hero_position_y))
   (setq _engineer_position_x (round __engineer_position_x))
   (setq _engineer_position_y (round __engineer_position_y))
   (setq _infantry_3_position_x (round __infantry_3_position_x))
   (setq _infantry_3_position_y (round __infantry_3_position_y))
   (setq _infantry_4_position_x (round __infantry_4_position_x))
   (setq _infantry_4_position_y (round __infantry_4_position_y))
   (setq _infantry_5_position_x (round __infantry_5_position_x))
   (setq _infantry_5_position_y (round __infantry_5_position_y))
   (setq _sentry_position_x (round __sentry_position_x))
   (setq _sentry_position_y (round __sentry_position_y))
   (setq _stamp __stamp)
   self)
  (:hero_position_x
   (&optional __hero_position_x)
   (if __hero_position_x (setq _hero_position_x __hero_position_x)) _hero_position_x)
  (:hero_position_y
   (&optional __hero_position_y)
   (if __hero_position_y (setq _hero_position_y __hero_position_y)) _hero_position_y)
  (:engineer_position_x
   (&optional __engineer_position_x)
   (if __engineer_position_x (setq _engineer_position_x __engineer_position_x)) _engineer_position_x)
  (:engineer_position_y
   (&optional __engineer_position_y)
   (if __engineer_position_y (setq _engineer_position_y __engineer_position_y)) _engineer_position_y)
  (:infantry_3_position_x
   (&optional __infantry_3_position_x)
   (if __infantry_3_position_x (setq _infantry_3_position_x __infantry_3_position_x)) _infantry_3_position_x)
  (:infantry_3_position_y
   (&optional __infantry_3_position_y)
   (if __infantry_3_position_y (setq _infantry_3_position_y __infantry_3_position_y)) _infantry_3_position_y)
  (:infantry_4_position_x
   (&optional __infantry_4_position_x)
   (if __infantry_4_position_x (setq _infantry_4_position_x __infantry_4_position_x)) _infantry_4_position_x)
  (:infantry_4_position_y
   (&optional __infantry_4_position_y)
   (if __infantry_4_position_y (setq _infantry_4_position_y __infantry_4_position_y)) _infantry_4_position_y)
  (:infantry_5_position_x
   (&optional __infantry_5_position_x)
   (if __infantry_5_position_x (setq _infantry_5_position_x __infantry_5_position_x)) _infantry_5_position_x)
  (:infantry_5_position_y
   (&optional __infantry_5_position_y)
   (if __infantry_5_position_y (setq _infantry_5_position_y __infantry_5_position_y)) _infantry_5_position_y)
  (:sentry_position_x
   (&optional __sentry_position_x)
   (if __sentry_position_x (setq _sentry_position_x __sentry_position_x)) _sentry_position_x)
  (:sentry_position_y
   (&optional __sentry_position_y)
   (if __sentry_position_y (setq _sentry_position_y __sentry_position_y)) _sentry_position_y)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _hero_position_x
    2
    ;; uint16 _hero_position_y
    2
    ;; uint16 _engineer_position_x
    2
    ;; uint16 _engineer_position_y
    2
    ;; uint16 _infantry_3_position_x
    2
    ;; uint16 _infantry_3_position_y
    2
    ;; uint16 _infantry_4_position_x
    2
    ;; uint16 _infantry_4_position_y
    2
    ;; uint16 _infantry_5_position_x
    2
    ;; uint16 _infantry_5_position_y
    2
    ;; uint16 _sentry_position_x
    2
    ;; uint16 _sentry_position_y
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _hero_position_x
       (write-word _hero_position_x s)
     ;; uint16 _hero_position_y
       (write-word _hero_position_y s)
     ;; uint16 _engineer_position_x
       (write-word _engineer_position_x s)
     ;; uint16 _engineer_position_y
       (write-word _engineer_position_y s)
     ;; uint16 _infantry_3_position_x
       (write-word _infantry_3_position_x s)
     ;; uint16 _infantry_3_position_y
       (write-word _infantry_3_position_y s)
     ;; uint16 _infantry_4_position_x
       (write-word _infantry_4_position_x s)
     ;; uint16 _infantry_4_position_y
       (write-word _infantry_4_position_y s)
     ;; uint16 _infantry_5_position_x
       (write-word _infantry_5_position_x s)
     ;; uint16 _infantry_5_position_y
       (write-word _infantry_5_position_y s)
     ;; uint16 _sentry_position_x
       (write-word _sentry_position_x s)
     ;; uint16 _sentry_position_y
       (write-word _sentry_position_y s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _hero_position_x
     (setq _hero_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _hero_position_y
     (setq _hero_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _engineer_position_x
     (setq _engineer_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _engineer_position_y
     (setq _engineer_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_3_position_x
     (setq _infantry_3_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_3_position_y
     (setq _infantry_3_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_4_position_x
     (setq _infantry_4_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_4_position_y
     (setq _infantry_4_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_5_position_x
     (setq _infantry_5_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _infantry_5_position_y
     (setq _infantry_5_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sentry_position_x
     (setq _sentry_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _sentry_position_y
     (setq _sentry_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ClientMapReceiveData :md5sum-) "765860ed57371d5f547d7681e64c9b02")
(setf (get rm_msgs::ClientMapReceiveData :datatype-) "rm_msgs/ClientMapReceiveData")
(setf (get rm_msgs::ClientMapReceiveData :definition-)
      "uint16 hero_position_x
uint16 hero_position_y
uint16 engineer_position_x
uint16 engineer_position_y
uint16 infantry_3_position_x
uint16 infantry_3_position_y
uint16 infantry_4_position_x
uint16 infantry_4_position_y
uint16 infantry_5_position_x
uint16 infantry_5_position_y
uint16 sentry_position_x
uint16 sentry_position_y

time stamp

")



(provide :rm_msgs/ClientMapReceiveData "765860ed57371d5f547d7681e64c9b02")


