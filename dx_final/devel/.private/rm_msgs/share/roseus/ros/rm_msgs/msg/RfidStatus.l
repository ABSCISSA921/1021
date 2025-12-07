;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::RfidStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'RfidStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::RFIDSTATUS")
  (make-package "RM_MSGS::RFIDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RfidStatus.msg.html


(defclass rm_msgs::RfidStatus
  :super ros::object
  :slots (_base_buff_point_state _own_central_elevated_ground_state _enemy_central_elevated_ground_state _own_trapezoidal_elevated_ground_state _enemy_trapezoidal_elevated_ground_state _forward_own_terrain_span_buff_point_state _behind_own_terrain_span_buff_point_state _forward_enemy_terrain_span_buff_point_state _behind_enemy_terrain_span_buff_point_state _below_central_own_terrain_span_buff_point_state _upper_central_own_terrain_span_buff_point_state _below_central_enemy_terrain_span_buff_point_state _upper_central_enemy_terrain_span_buff_point_state _below_road_own_terrain_span_buff_point_state _upper_road_own_terrain_span_buff_point_state _below_road_enemy_terrain_span_buff_point_state _upper_road_enemy_terrain_span_buff_point_state _own_fort_buff_point _own_outpost_buff_point _nan_overlapping_supplier_zone _overlapping_supplier_zone _own_large_resource_island_point _enemy_large_resource_island_point _central_buff_point _enemy_fortress_buff_point _stamp ))

(defmethod rm_msgs::RfidStatus
  (:init
   (&key
    ((:base_buff_point_state __base_buff_point_state) nil)
    ((:own_central_elevated_ground_state __own_central_elevated_ground_state) nil)
    ((:enemy_central_elevated_ground_state __enemy_central_elevated_ground_state) nil)
    ((:own_trapezoidal_elevated_ground_state __own_trapezoidal_elevated_ground_state) nil)
    ((:enemy_trapezoidal_elevated_ground_state __enemy_trapezoidal_elevated_ground_state) nil)
    ((:forward_own_terrain_span_buff_point_state __forward_own_terrain_span_buff_point_state) nil)
    ((:behind_own_terrain_span_buff_point_state __behind_own_terrain_span_buff_point_state) nil)
    ((:forward_enemy_terrain_span_buff_point_state __forward_enemy_terrain_span_buff_point_state) nil)
    ((:behind_enemy_terrain_span_buff_point_state __behind_enemy_terrain_span_buff_point_state) nil)
    ((:below_central_own_terrain_span_buff_point_state __below_central_own_terrain_span_buff_point_state) nil)
    ((:upper_central_own_terrain_span_buff_point_state __upper_central_own_terrain_span_buff_point_state) nil)
    ((:below_central_enemy_terrain_span_buff_point_state __below_central_enemy_terrain_span_buff_point_state) nil)
    ((:upper_central_enemy_terrain_span_buff_point_state __upper_central_enemy_terrain_span_buff_point_state) nil)
    ((:below_road_own_terrain_span_buff_point_state __below_road_own_terrain_span_buff_point_state) nil)
    ((:upper_road_own_terrain_span_buff_point_state __upper_road_own_terrain_span_buff_point_state) nil)
    ((:below_road_enemy_terrain_span_buff_point_state __below_road_enemy_terrain_span_buff_point_state) nil)
    ((:upper_road_enemy_terrain_span_buff_point_state __upper_road_enemy_terrain_span_buff_point_state) nil)
    ((:own_fort_buff_point __own_fort_buff_point) nil)
    ((:own_outpost_buff_point __own_outpost_buff_point) nil)
    ((:nan_overlapping_supplier_zone __nan_overlapping_supplier_zone) nil)
    ((:overlapping_supplier_zone __overlapping_supplier_zone) nil)
    ((:own_large_resource_island_point __own_large_resource_island_point) nil)
    ((:enemy_large_resource_island_point __enemy_large_resource_island_point) nil)
    ((:central_buff_point __central_buff_point) nil)
    ((:enemy_fortress_buff_point __enemy_fortress_buff_point) nil)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _base_buff_point_state __base_buff_point_state)
   (setq _own_central_elevated_ground_state __own_central_elevated_ground_state)
   (setq _enemy_central_elevated_ground_state __enemy_central_elevated_ground_state)
   (setq _own_trapezoidal_elevated_ground_state __own_trapezoidal_elevated_ground_state)
   (setq _enemy_trapezoidal_elevated_ground_state __enemy_trapezoidal_elevated_ground_state)
   (setq _forward_own_terrain_span_buff_point_state __forward_own_terrain_span_buff_point_state)
   (setq _behind_own_terrain_span_buff_point_state __behind_own_terrain_span_buff_point_state)
   (setq _forward_enemy_terrain_span_buff_point_state __forward_enemy_terrain_span_buff_point_state)
   (setq _behind_enemy_terrain_span_buff_point_state __behind_enemy_terrain_span_buff_point_state)
   (setq _below_central_own_terrain_span_buff_point_state __below_central_own_terrain_span_buff_point_state)
   (setq _upper_central_own_terrain_span_buff_point_state __upper_central_own_terrain_span_buff_point_state)
   (setq _below_central_enemy_terrain_span_buff_point_state __below_central_enemy_terrain_span_buff_point_state)
   (setq _upper_central_enemy_terrain_span_buff_point_state __upper_central_enemy_terrain_span_buff_point_state)
   (setq _below_road_own_terrain_span_buff_point_state __below_road_own_terrain_span_buff_point_state)
   (setq _upper_road_own_terrain_span_buff_point_state __upper_road_own_terrain_span_buff_point_state)
   (setq _below_road_enemy_terrain_span_buff_point_state __below_road_enemy_terrain_span_buff_point_state)
   (setq _upper_road_enemy_terrain_span_buff_point_state __upper_road_enemy_terrain_span_buff_point_state)
   (setq _own_fort_buff_point __own_fort_buff_point)
   (setq _own_outpost_buff_point __own_outpost_buff_point)
   (setq _nan_overlapping_supplier_zone __nan_overlapping_supplier_zone)
   (setq _overlapping_supplier_zone __overlapping_supplier_zone)
   (setq _own_large_resource_island_point __own_large_resource_island_point)
   (setq _enemy_large_resource_island_point __enemy_large_resource_island_point)
   (setq _central_buff_point __central_buff_point)
   (setq _enemy_fortress_buff_point __enemy_fortress_buff_point)
   (setq _stamp __stamp)
   self)
  (:base_buff_point_state
   (&optional (__base_buff_point_state :null))
   (if (not (eq __base_buff_point_state :null)) (setq _base_buff_point_state __base_buff_point_state)) _base_buff_point_state)
  (:own_central_elevated_ground_state
   (&optional (__own_central_elevated_ground_state :null))
   (if (not (eq __own_central_elevated_ground_state :null)) (setq _own_central_elevated_ground_state __own_central_elevated_ground_state)) _own_central_elevated_ground_state)
  (:enemy_central_elevated_ground_state
   (&optional (__enemy_central_elevated_ground_state :null))
   (if (not (eq __enemy_central_elevated_ground_state :null)) (setq _enemy_central_elevated_ground_state __enemy_central_elevated_ground_state)) _enemy_central_elevated_ground_state)
  (:own_trapezoidal_elevated_ground_state
   (&optional (__own_trapezoidal_elevated_ground_state :null))
   (if (not (eq __own_trapezoidal_elevated_ground_state :null)) (setq _own_trapezoidal_elevated_ground_state __own_trapezoidal_elevated_ground_state)) _own_trapezoidal_elevated_ground_state)
  (:enemy_trapezoidal_elevated_ground_state
   (&optional (__enemy_trapezoidal_elevated_ground_state :null))
   (if (not (eq __enemy_trapezoidal_elevated_ground_state :null)) (setq _enemy_trapezoidal_elevated_ground_state __enemy_trapezoidal_elevated_ground_state)) _enemy_trapezoidal_elevated_ground_state)
  (:forward_own_terrain_span_buff_point_state
   (&optional (__forward_own_terrain_span_buff_point_state :null))
   (if (not (eq __forward_own_terrain_span_buff_point_state :null)) (setq _forward_own_terrain_span_buff_point_state __forward_own_terrain_span_buff_point_state)) _forward_own_terrain_span_buff_point_state)
  (:behind_own_terrain_span_buff_point_state
   (&optional (__behind_own_terrain_span_buff_point_state :null))
   (if (not (eq __behind_own_terrain_span_buff_point_state :null)) (setq _behind_own_terrain_span_buff_point_state __behind_own_terrain_span_buff_point_state)) _behind_own_terrain_span_buff_point_state)
  (:forward_enemy_terrain_span_buff_point_state
   (&optional (__forward_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __forward_enemy_terrain_span_buff_point_state :null)) (setq _forward_enemy_terrain_span_buff_point_state __forward_enemy_terrain_span_buff_point_state)) _forward_enemy_terrain_span_buff_point_state)
  (:behind_enemy_terrain_span_buff_point_state
   (&optional (__behind_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __behind_enemy_terrain_span_buff_point_state :null)) (setq _behind_enemy_terrain_span_buff_point_state __behind_enemy_terrain_span_buff_point_state)) _behind_enemy_terrain_span_buff_point_state)
  (:below_central_own_terrain_span_buff_point_state
   (&optional (__below_central_own_terrain_span_buff_point_state :null))
   (if (not (eq __below_central_own_terrain_span_buff_point_state :null)) (setq _below_central_own_terrain_span_buff_point_state __below_central_own_terrain_span_buff_point_state)) _below_central_own_terrain_span_buff_point_state)
  (:upper_central_own_terrain_span_buff_point_state
   (&optional (__upper_central_own_terrain_span_buff_point_state :null))
   (if (not (eq __upper_central_own_terrain_span_buff_point_state :null)) (setq _upper_central_own_terrain_span_buff_point_state __upper_central_own_terrain_span_buff_point_state)) _upper_central_own_terrain_span_buff_point_state)
  (:below_central_enemy_terrain_span_buff_point_state
   (&optional (__below_central_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __below_central_enemy_terrain_span_buff_point_state :null)) (setq _below_central_enemy_terrain_span_buff_point_state __below_central_enemy_terrain_span_buff_point_state)) _below_central_enemy_terrain_span_buff_point_state)
  (:upper_central_enemy_terrain_span_buff_point_state
   (&optional (__upper_central_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __upper_central_enemy_terrain_span_buff_point_state :null)) (setq _upper_central_enemy_terrain_span_buff_point_state __upper_central_enemy_terrain_span_buff_point_state)) _upper_central_enemy_terrain_span_buff_point_state)
  (:below_road_own_terrain_span_buff_point_state
   (&optional (__below_road_own_terrain_span_buff_point_state :null))
   (if (not (eq __below_road_own_terrain_span_buff_point_state :null)) (setq _below_road_own_terrain_span_buff_point_state __below_road_own_terrain_span_buff_point_state)) _below_road_own_terrain_span_buff_point_state)
  (:upper_road_own_terrain_span_buff_point_state
   (&optional (__upper_road_own_terrain_span_buff_point_state :null))
   (if (not (eq __upper_road_own_terrain_span_buff_point_state :null)) (setq _upper_road_own_terrain_span_buff_point_state __upper_road_own_terrain_span_buff_point_state)) _upper_road_own_terrain_span_buff_point_state)
  (:below_road_enemy_terrain_span_buff_point_state
   (&optional (__below_road_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __below_road_enemy_terrain_span_buff_point_state :null)) (setq _below_road_enemy_terrain_span_buff_point_state __below_road_enemy_terrain_span_buff_point_state)) _below_road_enemy_terrain_span_buff_point_state)
  (:upper_road_enemy_terrain_span_buff_point_state
   (&optional (__upper_road_enemy_terrain_span_buff_point_state :null))
   (if (not (eq __upper_road_enemy_terrain_span_buff_point_state :null)) (setq _upper_road_enemy_terrain_span_buff_point_state __upper_road_enemy_terrain_span_buff_point_state)) _upper_road_enemy_terrain_span_buff_point_state)
  (:own_fort_buff_point
   (&optional (__own_fort_buff_point :null))
   (if (not (eq __own_fort_buff_point :null)) (setq _own_fort_buff_point __own_fort_buff_point)) _own_fort_buff_point)
  (:own_outpost_buff_point
   (&optional (__own_outpost_buff_point :null))
   (if (not (eq __own_outpost_buff_point :null)) (setq _own_outpost_buff_point __own_outpost_buff_point)) _own_outpost_buff_point)
  (:nan_overlapping_supplier_zone
   (&optional (__nan_overlapping_supplier_zone :null))
   (if (not (eq __nan_overlapping_supplier_zone :null)) (setq _nan_overlapping_supplier_zone __nan_overlapping_supplier_zone)) _nan_overlapping_supplier_zone)
  (:overlapping_supplier_zone
   (&optional (__overlapping_supplier_zone :null))
   (if (not (eq __overlapping_supplier_zone :null)) (setq _overlapping_supplier_zone __overlapping_supplier_zone)) _overlapping_supplier_zone)
  (:own_large_resource_island_point
   (&optional (__own_large_resource_island_point :null))
   (if (not (eq __own_large_resource_island_point :null)) (setq _own_large_resource_island_point __own_large_resource_island_point)) _own_large_resource_island_point)
  (:enemy_large_resource_island_point
   (&optional (__enemy_large_resource_island_point :null))
   (if (not (eq __enemy_large_resource_island_point :null)) (setq _enemy_large_resource_island_point __enemy_large_resource_island_point)) _enemy_large_resource_island_point)
  (:central_buff_point
   (&optional (__central_buff_point :null))
   (if (not (eq __central_buff_point :null)) (setq _central_buff_point __central_buff_point)) _central_buff_point)
  (:enemy_fortress_buff_point
   (&optional (__enemy_fortress_buff_point :null))
   (if (not (eq __enemy_fortress_buff_point :null)) (setq _enemy_fortress_buff_point __enemy_fortress_buff_point)) _enemy_fortress_buff_point)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; bool _base_buff_point_state
    1
    ;; bool _own_central_elevated_ground_state
    1
    ;; bool _enemy_central_elevated_ground_state
    1
    ;; bool _own_trapezoidal_elevated_ground_state
    1
    ;; bool _enemy_trapezoidal_elevated_ground_state
    1
    ;; bool _forward_own_terrain_span_buff_point_state
    1
    ;; bool _behind_own_terrain_span_buff_point_state
    1
    ;; bool _forward_enemy_terrain_span_buff_point_state
    1
    ;; bool _behind_enemy_terrain_span_buff_point_state
    1
    ;; bool _below_central_own_terrain_span_buff_point_state
    1
    ;; bool _upper_central_own_terrain_span_buff_point_state
    1
    ;; bool _below_central_enemy_terrain_span_buff_point_state
    1
    ;; bool _upper_central_enemy_terrain_span_buff_point_state
    1
    ;; bool _below_road_own_terrain_span_buff_point_state
    1
    ;; bool _upper_road_own_terrain_span_buff_point_state
    1
    ;; bool _below_road_enemy_terrain_span_buff_point_state
    1
    ;; bool _upper_road_enemy_terrain_span_buff_point_state
    1
    ;; bool _own_fort_buff_point
    1
    ;; bool _own_outpost_buff_point
    1
    ;; bool _nan_overlapping_supplier_zone
    1
    ;; bool _overlapping_supplier_zone
    1
    ;; bool _own_large_resource_island_point
    1
    ;; bool _enemy_large_resource_island_point
    1
    ;; bool _central_buff_point
    1
    ;; bool _enemy_fortress_buff_point
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _base_buff_point_state
       (if _base_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _own_central_elevated_ground_state
       (if _own_central_elevated_ground_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_central_elevated_ground_state
       (if _enemy_central_elevated_ground_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _own_trapezoidal_elevated_ground_state
       (if _own_trapezoidal_elevated_ground_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_trapezoidal_elevated_ground_state
       (if _enemy_trapezoidal_elevated_ground_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward_own_terrain_span_buff_point_state
       (if _forward_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _behind_own_terrain_span_buff_point_state
       (if _behind_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _forward_enemy_terrain_span_buff_point_state
       (if _forward_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _behind_enemy_terrain_span_buff_point_state
       (if _behind_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _below_central_own_terrain_span_buff_point_state
       (if _below_central_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _upper_central_own_terrain_span_buff_point_state
       (if _upper_central_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _below_central_enemy_terrain_span_buff_point_state
       (if _below_central_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _upper_central_enemy_terrain_span_buff_point_state
       (if _upper_central_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _below_road_own_terrain_span_buff_point_state
       (if _below_road_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _upper_road_own_terrain_span_buff_point_state
       (if _upper_road_own_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _below_road_enemy_terrain_span_buff_point_state
       (if _below_road_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _upper_road_enemy_terrain_span_buff_point_state
       (if _upper_road_enemy_terrain_span_buff_point_state (write-byte -1 s) (write-byte 0 s))
     ;; bool _own_fort_buff_point
       (if _own_fort_buff_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _own_outpost_buff_point
       (if _own_outpost_buff_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _nan_overlapping_supplier_zone
       (if _nan_overlapping_supplier_zone (write-byte -1 s) (write-byte 0 s))
     ;; bool _overlapping_supplier_zone
       (if _overlapping_supplier_zone (write-byte -1 s) (write-byte 0 s))
     ;; bool _own_large_resource_island_point
       (if _own_large_resource_island_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_large_resource_island_point
       (if _enemy_large_resource_island_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _central_buff_point
       (if _central_buff_point (write-byte -1 s) (write-byte 0 s))
     ;; bool _enemy_fortress_buff_point
       (if _enemy_fortress_buff_point (write-byte -1 s) (write-byte 0 s))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _base_buff_point_state
     (setq _base_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _own_central_elevated_ground_state
     (setq _own_central_elevated_ground_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_central_elevated_ground_state
     (setq _enemy_central_elevated_ground_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _own_trapezoidal_elevated_ground_state
     (setq _own_trapezoidal_elevated_ground_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_trapezoidal_elevated_ground_state
     (setq _enemy_trapezoidal_elevated_ground_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward_own_terrain_span_buff_point_state
     (setq _forward_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _behind_own_terrain_span_buff_point_state
     (setq _behind_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _forward_enemy_terrain_span_buff_point_state
     (setq _forward_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _behind_enemy_terrain_span_buff_point_state
     (setq _behind_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _below_central_own_terrain_span_buff_point_state
     (setq _below_central_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _upper_central_own_terrain_span_buff_point_state
     (setq _upper_central_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _below_central_enemy_terrain_span_buff_point_state
     (setq _below_central_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _upper_central_enemy_terrain_span_buff_point_state
     (setq _upper_central_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _below_road_own_terrain_span_buff_point_state
     (setq _below_road_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _upper_road_own_terrain_span_buff_point_state
     (setq _upper_road_own_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _below_road_enemy_terrain_span_buff_point_state
     (setq _below_road_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _upper_road_enemy_terrain_span_buff_point_state
     (setq _upper_road_enemy_terrain_span_buff_point_state (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _own_fort_buff_point
     (setq _own_fort_buff_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _own_outpost_buff_point
     (setq _own_outpost_buff_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _nan_overlapping_supplier_zone
     (setq _nan_overlapping_supplier_zone (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overlapping_supplier_zone
     (setq _overlapping_supplier_zone (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _own_large_resource_island_point
     (setq _own_large_resource_island_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_large_resource_island_point
     (setq _enemy_large_resource_island_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _central_buff_point
     (setq _central_buff_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enemy_fortress_buff_point
     (setq _enemy_fortress_buff_point (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::RfidStatus :md5sum-) "7a24d6646cadd38d0b3cc4cdc34de56b")
(setf (get rm_msgs::RfidStatus :datatype-) "rm_msgs/RfidStatus")
(setf (get rm_msgs::RfidStatus :definition-)
      "bool base_buff_point_state
bool own_central_elevated_ground_state
bool enemy_central_elevated_ground_state
bool own_trapezoidal_elevated_ground_state
bool enemy_trapezoidal_elevated_ground_state
bool forward_own_terrain_span_buff_point_state
bool behind_own_terrain_span_buff_point_state
bool forward_enemy_terrain_span_buff_point_state
bool behind_enemy_terrain_span_buff_point_state
bool below_central_own_terrain_span_buff_point_state
bool upper_central_own_terrain_span_buff_point_state
bool below_central_enemy_terrain_span_buff_point_state
bool upper_central_enemy_terrain_span_buff_point_state
bool below_road_own_terrain_span_buff_point_state
bool upper_road_own_terrain_span_buff_point_state
bool below_road_enemy_terrain_span_buff_point_state
bool upper_road_enemy_terrain_span_buff_point_state
bool own_fort_buff_point
bool own_outpost_buff_point
bool nan_overlapping_supplier_zone
bool overlapping_supplier_zone
bool own_large_resource_island_point
bool enemy_large_resource_island_point
bool central_buff_point
bool enemy_fortress_buff_point

time stamp

")



(provide :rm_msgs/RfidStatus "7a24d6646cadd38d0b3cc4cdc34de56b")


