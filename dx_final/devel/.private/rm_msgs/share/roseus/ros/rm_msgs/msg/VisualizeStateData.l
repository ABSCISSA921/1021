;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::VisualizeStateData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'VisualizeStateData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::VISUALIZESTATEDATA")
  (make-package "RM_MSGS::VISUALIZESTATEDATA"))

(in-package "ROS")
;;//! \htmlinclude VisualizeStateData.msg.html


(defclass rm_msgs::VisualizeStateData
  :super ros::object
  :slots (_state ))

(defmethod rm_msgs::VisualizeStateData
  (:init
   (&key
    ((:state __state) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; bool[] _state
    (* 1    (length _state)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _state
     (write-long (length _state) s)
     (dotimes (i (length _state))
       (if (elt _state i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _state
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _state (make-list n))
     (dotimes (i n)
     (setf (elt _state i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get rm_msgs::VisualizeStateData :md5sum-) "b5958fa30c9a253a1f2857ed1c1f2b7f")
(setf (get rm_msgs::VisualizeStateData :datatype-) "rm_msgs/VisualizeStateData")
(setf (get rm_msgs::VisualizeStateData :definition-)
      "bool[] state

")



(provide :rm_msgs/VisualizeStateData "b5958fa30c9a253a1f2857ed1c1f2b7f")


