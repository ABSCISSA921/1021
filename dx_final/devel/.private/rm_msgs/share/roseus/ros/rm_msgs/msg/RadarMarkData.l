;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RadarMarkData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RadarMarkData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RADARMARKDATA")
  (make-package "RM_MSGS::RADARMARKDATA"))

(in-package "ROS")
;;//! \htmlinclude RadarMarkData.msg.html


(defclass rm_msgs::RadarMarkData
  :super ros::object
  :slots (_mark_hero_progress _mark_engineer_progress _mark_standard_3_progress _mark_standard_4_progress _mark_sentry_progress _stamp ))

(defmethod rm_msgs::RadarMarkData
  (:init
   (&key
    ((:mark_hero_progress __mark_hero_progress) nil)
    ((:mark_engineer_progress __mark_engineer_progress) nil)
    ((:mark_standard_3_progress __mark_standard_3_progress) nil)
    ((:mark_standard_4_progress __mark_standard_4_progress) nil)
    ((:mark_sentry_progress __mark_sentry_progress) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _mark_hero_progress __mark_hero_progress)
   (setq _mark_engineer_progress __mark_engineer_progress)
   (setq _mark_standard_3_progress __mark_standard_3_progress)
   (setq _mark_standard_4_progress __mark_standard_4_progress)
   (setq _mark_sentry_progress __mark_sentry_progress)
   (setq _stamp __stamp)
   self)
  (:mark_hero_progress
   (&optional (__mark_hero_progress :null))
   (if (not (eq __mark_hero_progress :null)) (setq _mark_hero_progress __mark_hero_progress)) _mark_hero_progress)
  (:mark_engineer_progress
   (&optional (__mark_engineer_progress :null))
   (if (not (eq __mark_engineer_progress :null)) (setq _mark_engineer_progress __mark_engineer_progress)) _mark_engineer_progress)
  (:mark_standard_3_progress
   (&optional (__mark_standard_3_progress :null))
   (if (not (eq __mark_standard_3_progress :null)) (setq _mark_standard_3_progress __mark_standard_3_progress)) _mark_standard_3_progress)
  (:mark_standard_4_progress
   (&optional (__mark_standard_4_progress :null))
   (if (not (eq __mark_standard_4_progress :null)) (setq _mark_standard_4_progress __mark_standard_4_progress)) _mark_standard_4_progress)
  (:mark_sentry_progress
   (&optional (__mark_sentry_progress :null))
   (if (not (eq __mark_sentry_progress :null)) (setq _mark_sentry_progress __mark_sentry_progress)) _mark_sentry_progress)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _mark_hero_progress
    1
    ;; bool _mark_engineer_progress
    1
    ;; bool _mark_standard_3_progress
    1
    ;; bool _mark_standard_4_progress
    1
    ;; bool _mark_sentry_progress
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _mark_hero_progress
       (if _mark_hero_progress (write-byte -1 s) (write-byte 0 s))
     ;; bool _mark_engineer_progress
       (if _mark_engineer_progress (write-byte -1 s) (write-byte 0 s))
     ;; bool _mark_standard_3_progress
       (if _mark_standard_3_progress (write-byte -1 s) (write-byte 0 s))
     ;; bool _mark_standard_4_progress
       (if _mark_standard_4_progress (write-byte -1 s) (write-byte 0 s))
     ;; bool _mark_sentry_progress
       (if _mark_sentry_progress (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _mark_hero_progress
     (setq _mark_hero_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mark_engineer_progress
     (setq _mark_engineer_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mark_standard_3_progress
     (setq _mark_standard_3_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mark_standard_4_progress
     (setq _mark_standard_4_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mark_sentry_progress
     (setq _mark_sentry_progress (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RadarMarkData :md5sum-) "9220326c1ed840bfbfd0ed6791aea229")
(setf (get rm_msgs::RadarMarkData :datatype-) "rm_msgs/RadarMarkData")
(setf (get rm_msgs::RadarMarkData :definition-)
      "bool mark_hero_progress
bool mark_engineer_progress
bool mark_standard_3_progress
bool mark_standard_4_progress
bool mark_sentry_progress

time stamp

")



(provide :rm_msgs/RadarMarkData "9220326c1ed840bfbfd0ed6791aea229")


