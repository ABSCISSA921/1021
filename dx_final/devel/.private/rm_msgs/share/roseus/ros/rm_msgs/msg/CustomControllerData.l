;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::CustomControllerData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'CustomControllerData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CUSTOMCONTROLLERDATA")
  (make-package "RM_MSGS::CUSTOMCONTROLLERDATA"))

(in-package "ROS")
;;//! \htmlinclude CustomControllerData.msg.html


(defclass rm_msgs::CustomControllerData
  :super ros::object
  :slots (_encoder_data _joystick_l_y_data _joystick_l_x_data _joystick_r_y_data _joystick_r_x_data _button_data ))

(defmethod rm_msgs::CustomControllerData
  (:init
   (&key
    ((:encoder_data __encoder_data) (make-array 6 :initial-element 0.0 :element-type :float))
    ((:joystick_l_y_data __joystick_l_y_data) 0)
    ((:joystick_l_x_data __joystick_l_x_data) 0)
    ((:joystick_r_y_data __joystick_r_y_data) 0)
    ((:joystick_r_x_data __joystick_r_x_data) 0)
    ((:button_data __button_data) (let (r) (dotimes (i 4) (push nil r)) r))
    )
   (send-super :init)
   (setq _encoder_data __encoder_data)
   (setq _joystick_l_y_data (round __joystick_l_y_data))
   (setq _joystick_l_x_data (round __joystick_l_x_data))
   (setq _joystick_r_y_data (round __joystick_r_y_data))
   (setq _joystick_r_x_data (round __joystick_r_x_data))
   (setq _button_data __button_data)
   self)
  (:encoder_data
   (&optional __encoder_data)
   (if __encoder_data (setq _encoder_data __encoder_data)) _encoder_data)
  (:joystick_l_y_data
   (&optional __joystick_l_y_data)
   (if __joystick_l_y_data (setq _joystick_l_y_data __joystick_l_y_data)) _joystick_l_y_data)
  (:joystick_l_x_data
   (&optional __joystick_l_x_data)
   (if __joystick_l_x_data (setq _joystick_l_x_data __joystick_l_x_data)) _joystick_l_x_data)
  (:joystick_r_y_data
   (&optional __joystick_r_y_data)
   (if __joystick_r_y_data (setq _joystick_r_y_data __joystick_r_y_data)) _joystick_r_y_data)
  (:joystick_r_x_data
   (&optional __joystick_r_x_data)
   (if __joystick_r_x_data (setq _joystick_r_x_data __joystick_r_x_data)) _joystick_r_x_data)
  (:button_data
   (&optional __button_data)
   (if __button_data (setq _button_data __button_data)) _button_data)
  (:serialization-length
   ()
   (+
    ;; float64[6] _encoder_data
    (* 8    6)
    ;; uint16 _joystick_l_y_data
    2
    ;; uint16 _joystick_l_x_data
    2
    ;; uint16 _joystick_r_y_data
    2
    ;; uint16 _joystick_r_x_data
    2
    ;; bool[4] _button_data
    (* 1    4)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[6] _encoder_data
     (dotimes (i 6)
       (sys::poke (elt _encoder_data i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint16 _joystick_l_y_data
       (write-word _joystick_l_y_data s)
     ;; uint16 _joystick_l_x_data
       (write-word _joystick_l_x_data s)
     ;; uint16 _joystick_r_y_data
       (write-word _joystick_r_y_data s)
     ;; uint16 _joystick_r_x_data
       (write-word _joystick_r_x_data s)
     ;; bool[4] _button_data
     (dotimes (i 4)
       (if (elt _button_data i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[6] _encoder_data
   (dotimes (i (length _encoder_data))
     (setf (elt _encoder_data i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint16 _joystick_l_y_data
     (setq _joystick_l_y_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _joystick_l_x_data
     (setq _joystick_l_x_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _joystick_r_y_data
     (setq _joystick_r_y_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _joystick_r_x_data
     (setq _joystick_r_x_data (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool[4] _button_data
   (dotimes (i (length _button_data))
     (setf (elt _button_data i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get rm_msgs::CustomControllerData :md5sum-) "5a85b28a60657f47c3215f53168ea534")
(setf (get rm_msgs::CustomControllerData :datatype-) "rm_msgs/CustomControllerData")
(setf (get rm_msgs::CustomControllerData :definition-)
      "float64[6] encoder_data

uint16 joystick_l_y_data
uint16 joystick_l_x_data
uint16 joystick_r_y_data
uint16 joystick_r_x_data

bool[4] button_data

")



(provide :rm_msgs/CustomControllerData "5a85b28a60657f47c3215f53168ea534")


