;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::LocalHeatState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'LocalHeatState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::LOCALHEATSTATE")
  (make-package "RM_MSGS::LOCALHEATSTATE"))

(in-package "ROS")
;;//! \htmlinclude LocalHeatState.msg.html


(defclass rm_msgs::LocalHeatState
  :super ros::object
  :slots (_friction_speed _friction_change_speed _friction_change_speed_derivative _has_shoot _stamp ))

(defmethod rm_msgs::LocalHeatState
  (:init
   (&key
    ((:friction_speed __friction_speed) 0.0)
    ((:friction_change_speed __friction_change_speed) 0.0)
    ((:friction_change_speed_derivative __friction_change_speed_derivative) 0.0)
    ((:has_shoot __has_shoot) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _friction_speed (float __friction_speed))
   (setq _friction_change_speed (float __friction_change_speed))
   (setq _friction_change_speed_derivative (float __friction_change_speed_derivative))
   (setq _has_shoot __has_shoot)
   (setq _stamp __stamp)
   self)
  (:friction_speed
   (&optional __friction_speed)
   (if __friction_speed (setq _friction_speed __friction_speed)) _friction_speed)
  (:friction_change_speed
   (&optional __friction_change_speed)
   (if __friction_change_speed (setq _friction_change_speed __friction_change_speed)) _friction_change_speed)
  (:friction_change_speed_derivative
   (&optional __friction_change_speed_derivative)
   (if __friction_change_speed_derivative (setq _friction_change_speed_derivative __friction_change_speed_derivative)) _friction_change_speed_derivative)
  (:has_shoot
   (&optional (__has_shoot :null))
   (if (not (eq __has_shoot :null)) (setq _has_shoot __has_shoot)) _has_shoot)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float64 _friction_speed
    8
    ;; float64 _friction_change_speed
    8
    ;; float64 _friction_change_speed_derivative
    8
    ;; bool _has_shoot
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _friction_speed
       (sys::poke _friction_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _friction_change_speed
       (sys::poke _friction_change_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _friction_change_speed_derivative
       (sys::poke _friction_change_speed_derivative (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; bool _has_shoot
       (if _has_shoot (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _friction_speed
     (setq _friction_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _friction_change_speed
     (setq _friction_change_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _friction_change_speed_derivative
     (setq _friction_change_speed_derivative (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; bool _has_shoot
     (setq _has_shoot (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::LocalHeatState :md5sum-) "29a8a14a26935854a78d9ab8fc58289b")
(setf (get rm_msgs::LocalHeatState :datatype-) "rm_msgs/LocalHeatState")
(setf (get rm_msgs::LocalHeatState :definition-)
      "float64 friction_speed
float64 friction_change_speed
float64 friction_change_speed_derivative
bool has_shoot
time stamp

")



(provide :rm_msgs/LocalHeatState "29a8a14a26935854a78d9ab8fc58289b")


