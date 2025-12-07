;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::Dart)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'Dart (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::DART")
  (make-package "RM_MSGS::DART"))

(in-package "ROS")
;;//! \htmlinclude Dart.msg.html


(defclass rm_msgs::Dart
  :super ros::object
  :slots (_distance _height _is_found _stamp ))

(defmethod rm_msgs::Dart
  (:init
   (&key
    ((:distance __distance) 0)
    ((:height __height) 0)
    ((:is_found __is_found) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _distance (round __distance))
   (setq _height (round __height))
   (setq _is_found __is_found)
   (setq _stamp __stamp)
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:height
   (&optional __height)
   (if __height (setq _height __height)) _height)
  (:is_found
   (&optional (__is_found :null))
   (if (not (eq __is_found :null)) (setq _is_found __is_found)) _is_found)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; int16 _distance
    2
    ;; int16 _height
    2
    ;; bool _is_found
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _distance
       (write-word _distance s)
     ;; int16 _height
       (write-word _height s)
     ;; bool _is_found
       (if _is_found (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _distance
     (setq _distance (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _height
     (setq _height (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _is_found
     (setq _is_found (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::Dart :md5sum-) "a786858289d996b001b391aeda1dc1a4")
(setf (get rm_msgs::Dart :datatype-) "rm_msgs/Dart")
(setf (get rm_msgs::Dart :definition-)
      "int16 distance
int16 height
bool is_found
time stamp

")



(provide :rm_msgs/Dart "a786858289d996b001b391aeda1dc1a4")


