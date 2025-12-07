;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::StateCmd)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'StateCmd (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::STATECMD")
  (make-package "RM_MSGS::STATECMD"))

(in-package "ROS")
;;//! \htmlinclude StateCmd.msg.html


(defclass rm_msgs::StateCmd
  :super ros::object
  :slots (_mode _data _stamp ))

(defmethod rm_msgs::StateCmd
  (:init
   (&key
    ((:mode __mode) 0)
    ((:data __data) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _mode (round __mode))
   (setq _data (float __data))
   (setq _stamp __stamp)
   self)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _mode
    1
    ;; float64 _data
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _mode
       (write-byte _mode s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::StateCmd :md5sum-) "55348fd528431bf4c4b507668d894589")
(setf (get rm_msgs::StateCmd :datatype-) "rm_msgs/StateCmd")
(setf (get rm_msgs::StateCmd :definition-)
      "uint8 mode
float64 data

time stamp

")



(provide :rm_msgs/StateCmd "55348fd528431bf4c4b507668d894589")


