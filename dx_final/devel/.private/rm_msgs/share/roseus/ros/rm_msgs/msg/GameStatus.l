;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::GameStatus)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'GameStatus (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::GAMESTATUS")
  (make-package "RM_MSGS::GAMESTATUS"))

(in-package "ROS")
;;//! \htmlinclude GameStatus.msg.html


(intern "*IN_BATTLE*" (find-package "RM_MSGS::GAMESTATUS"))
(shadow '*IN_BATTLE* (find-package "RM_MSGS::GAMESTATUS"))
(defconstant rm_msgs::GameStatus::*IN_BATTLE* 4)

(defun rm_msgs::GameStatus-to-symbol (const)
  (cond
        ((= const 4) 'rm_msgs::GameStatus::*IN_BATTLE*)
        (t nil)))

(defclass rm_msgs::GameStatus
  :super ros::object
  :slots (_game_type _game_progress _stage_remain_time _sync_time_stamp _stamp ))

(defmethod rm_msgs::GameStatus
  (:init
   (&key
    ((:game_type __game_type) 0)
    ((:game_progress __game_progress) 0)
    ((:stage_remain_time __stage_remain_time) 0)
    ((:sync_time_stamp __sync_time_stamp) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _game_type (round __game_type))
   (setq _game_progress (round __game_progress))
   (setq _stage_remain_time (round __stage_remain_time))
   (setq _sync_time_stamp (round __sync_time_stamp))
   (setq _stamp __stamp)
   self)
  (:game_type
   (&optional __game_type)
   (if __game_type (setq _game_type __game_type)) _game_type)
  (:game_progress
   (&optional __game_progress)
   (if __game_progress (setq _game_progress __game_progress)) _game_progress)
  (:stage_remain_time
   (&optional __stage_remain_time)
   (if __stage_remain_time (setq _stage_remain_time __stage_remain_time)) _stage_remain_time)
  (:sync_time_stamp
   (&optional __sync_time_stamp)
   (if __sync_time_stamp (setq _sync_time_stamp __sync_time_stamp)) _sync_time_stamp)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint8 _game_type
    1
    ;; uint8 _game_progress
    1
    ;; uint16 _stage_remain_time
    2
    ;; uint64 _sync_time_stamp
    8
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _game_type
       (write-byte _game_type s)
     ;; uint8 _game_progress
       (write-byte _game_progress s)
     ;; uint16 _stage_remain_time
       (write-word _stage_remain_time s)
     ;; uint64 _sync_time_stamp
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _sync_time_stamp (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _sync_time_stamp) (= (length (_sync_time_stamp . bv)) 2)) ;; bignum
              (write-long (ash (elt (_sync_time_stamp . bv) 0) 0) s)
              (write-long (ash (elt (_sync_time_stamp . bv) 1) -1) s))
             ((and (class _sync_time_stamp) (= (length (_sync_time_stamp . bv)) 1)) ;; big1
              (write-long (elt (_sync_time_stamp . bv) 0) s)
              (write-long (if (>= _sync_time_stamp 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _sync_time_stamp s)(write-long (if (>= _sync_time_stamp 0) 0 #xffffffff) s)))
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _game_type
     (setq _game_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _game_progress
     (setq _game_progress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _stage_remain_time
     (setq _stage_remain_time (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint64 _sync_time_stamp
     
#+(or :alpha :irix6 :x86_64)
      (setf _sync_time_stamp (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _sync_time_stamp (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::GameStatus :md5sum-) "9ea091244f69177ae6ba30273622db3a")
(setf (get rm_msgs::GameStatus :datatype-) "rm_msgs/GameStatus")
(setf (get rm_msgs::GameStatus :definition-)
      "uint8 game_type
uint8 game_progress
uint16 stage_remain_time
uint64 sync_time_stamp

uint8 IN_BATTLE = 4

time stamp

")



(provide :rm_msgs/GameStatus "9ea091244f69177ae6ba30273622db3a")


