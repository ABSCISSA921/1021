;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::MapSentryData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'MapSentryData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::MAPSENTRYDATA")
  (make-package "RM_MSGS::MAPSENTRYDATA"))

(in-package "ROS")
;;//! \htmlinclude MapSentryData.msg.html


(defclass rm_msgs::MapSentryData
  :super ros::object
  :slots (_intention _start_position_x _start_position_y _delta_x _delta_y _stamp ))

(defmethod rm_msgs::MapSentryData
  (:init
   (&key
    ((:intention __intention) 0)
    ((:start_position_x __start_position_x) 0)
    ((:start_position_y __start_position_y) 0)
    ((:delta_x __delta_x) (make-array 49 :initial-element 0 :element-type :integer))
    ((:delta_y __delta_y) (make-array 49 :initial-element 0 :element-type :integer))
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _intention (round __intention))
   (setq _start_position_x (round __start_position_x))
   (setq _start_position_y (round __start_position_y))
   (setq _delta_x __delta_x)
   (setq _delta_y __delta_y)
   (setq _stamp __stamp)
   self)
  (:intention
   (&optional __intention)
   (if __intention (setq _intention __intention)) _intention)
  (:start_position_x
   (&optional __start_position_x)
   (if __start_position_x (setq _start_position_x __start_position_x)) _start_position_x)
  (:start_position_y
   (&optional __start_position_y)
   (if __start_position_y (setq _start_position_y __start_position_y)) _start_position_y)
  (:delta_x
   (&optional __delta_x)
   (if __delta_x (setq _delta_x __delta_x)) _delta_x)
  (:delta_y
   (&optional __delta_y)
   (if __delta_y (setq _delta_y __delta_y)) _delta_y)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _intention
    1
    ;; uint16 _start_position_x
    2
    ;; uint16 _start_position_y
    2
    ;; int8[49] _delta_x
    (* 1    49)
    ;; int8[49] _delta_y
    (* 1    49)
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _intention
       (write-byte _intention s)
     ;; uint16 _start_position_x
       (write-word _start_position_x s)
     ;; uint16 _start_position_y
       (write-word _start_position_y s)
     ;; int8[49] _delta_x
     (dotimes (i 49)
       (write-byte (elt _delta_x i) s)
       )
     ;; int8[49] _delta_y
     (dotimes (i 49)
       (write-byte (elt _delta_y i) s)
       )
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _intention
     (setq _intention (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _start_position_x
     (setq _start_position_x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _start_position_y
     (setq _start_position_y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int8[49] _delta_x
   (dotimes (i (length _delta_x))
     (setf (elt _delta_x i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _delta_x i) 127) (setf (elt _delta_x i) (- (elt _delta_x i) 256)))
     )
   ;; int8[49] _delta_y
   (dotimes (i (length _delta_y))
     (setf (elt _delta_y i) (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> (elt _delta_y i) 127) (setf (elt _delta_y i) (- (elt _delta_y i) 256)))
     )
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::MapSentryData :md5sum-) "d6e15a95bf254643938dfaa446ff12c8")
(setf (get rm_msgs::MapSentryData :datatype-) "rm_msgs/MapSentryData")
(setf (get rm_msgs::MapSentryData :definition-)
      "uint8 intention
uint16 start_position_x
uint16 start_position_y
int8[49] delta_x
int8[49] delta_y

time stamp

")



(provide :rm_msgs/MapSentryData "d6e15a95bf254643938dfaa446ff12c8")


