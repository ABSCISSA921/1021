;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::BusState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'BusState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::BUSSTATE")
  (make-package "RM_MSGS::BUSSTATE"))

(in-package "ROS")
;;//! \htmlinclude BusState.msg.html


(defclass rm_msgs::BusState
  :super ros::object
  :slots (_stamp _name _isOnline ))

(defmethod rm_msgs::BusState
  (:init
   (&key
    ((:stamp __stamp) (instance ros::time :init))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:isOnline __isOnline) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _name __name)
   (setq _isOnline __isOnline)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:isOnline
   (&optional __isOnline)
   (if __isOnline (setq _isOnline __isOnline)) _isOnline)
  (:serialization-length
   ()
   (+
    ;; time _stamp
    8
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; bool[] _isOnline
    (* 1    (length _isOnline)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _isOnline
     (write-long (length _isOnline) s)
     (dotimes (i (length _isOnline))
       (if (elt _isOnline i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _isOnline
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _isOnline (make-list n))
     (dotimes (i n)
     (setf (elt _isOnline i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get rm_msgs::BusState :md5sum-) "f9d1975e503263409ee9d79a2a9249fe")
(setf (get rm_msgs::BusState :datatype-) "rm_msgs/BusState")
(setf (get rm_msgs::BusState :definition-)
      "time stamp

string[] name
bool[] isOnline

")



(provide :rm_msgs/BusState "f9d1975e503263409ee9d79a2a9249fe")


