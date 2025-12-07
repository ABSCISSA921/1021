;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ActuatorState)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ActuatorState (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::ACTUATORSTATE")
  (make-package "RM_MSGS::ACTUATORSTATE"))

(in-package "ROS")
;;//! \htmlinclude ActuatorState.msg.html


(defclass rm_msgs::ActuatorState
  :super ros::object
  :slots (_stamp _name _type _bus _id _halted _need_calibration _calibrated _calibration_reading _position_raw _velocity_raw _temperature _circle _last_position_raw _frequency _position _velocity _effort _commanded_effort _executed_effort _offset ))

(defmethod rm_msgs::ActuatorState
  (:init
   (&key
    ((:stamp __stamp) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    ((:name __name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:type __type) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:bus __bus) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:id __id) (make-array 0 :initial-element 0 :element-type :integer))
    ((:halted __halted) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:need_calibration __need_calibration) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:calibrated __calibrated) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:calibration_reading __calibration_reading) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:position_raw __position_raw) (make-array 0 :initial-element 0 :element-type :integer))
    ((:velocity_raw __velocity_raw) (make-array 0 :initial-element 0 :element-type :integer))
    ((:temperature __temperature) (make-array 0 :initial-element 0 :element-type :char))
    ((:circle __circle) (make-array 0 :initial-element 0 :element-type :integer))
    ((:last_position_raw __last_position_raw) (make-array 0 :initial-element 0 :element-type :integer))
    ((:frequency __frequency) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:commanded_effort __commanded_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:executed_effort __executed_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:offset __offset) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stamp __stamp)
   (setq _name __name)
   (setq _type __type)
   (setq _bus __bus)
   (setq _id __id)
   (setq _halted __halted)
   (setq _need_calibration __need_calibration)
   (setq _calibrated __calibrated)
   (setq _calibration_reading __calibration_reading)
   (setq _position_raw __position_raw)
   (setq _velocity_raw __velocity_raw)
   (setq _temperature __temperature)
   (setq _circle __circle)
   (setq _last_position_raw __last_position_raw)
   (setq _frequency __frequency)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   (setq _commanded_effort __commanded_effort)
   (setq _executed_effort __executed_effort)
   (setq _offset __offset)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:bus
   (&optional __bus)
   (if __bus (setq _bus __bus)) _bus)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:halted
   (&optional __halted)
   (if __halted (setq _halted __halted)) _halted)
  (:need_calibration
   (&optional __need_calibration)
   (if __need_calibration (setq _need_calibration __need_calibration)) _need_calibration)
  (:calibrated
   (&optional __calibrated)
   (if __calibrated (setq _calibrated __calibrated)) _calibrated)
  (:calibration_reading
   (&optional __calibration_reading)
   (if __calibration_reading (setq _calibration_reading __calibration_reading)) _calibration_reading)
  (:position_raw
   (&optional __position_raw)
   (if __position_raw (setq _position_raw __position_raw)) _position_raw)
  (:velocity_raw
   (&optional __velocity_raw)
   (if __velocity_raw (setq _velocity_raw __velocity_raw)) _velocity_raw)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:circle
   (&optional __circle)
   (if __circle (setq _circle __circle)) _circle)
  (:last_position_raw
   (&optional __last_position_raw)
   (if __last_position_raw (setq _last_position_raw __last_position_raw)) _last_position_raw)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:commanded_effort
   (&optional __commanded_effort)
   (if __commanded_effort (setq _commanded_effort __commanded_effort)) _commanded_effort)
  (:executed_effort
   (&optional __executed_effort)
   (if __executed_effort (setq _executed_effort __executed_effort)) _executed_effort)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:serialization-length
   ()
   (+
    ;; time[] _stamp
    (* 8    (length _stamp)) 4
    ;; string[] _name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _name)) 4
    ;; string[] _type
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _type)) 4
    ;; string[] _bus
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _bus)) 4
    ;; int32[] _id
    (* 4    (length _id)) 4
    ;; bool[] _halted
    (* 1    (length _halted)) 4
    ;; bool[] _need_calibration
    (* 1    (length _need_calibration)) 4
    ;; bool[] _calibrated
    (* 1    (length _calibrated)) 4
    ;; bool[] _calibration_reading
    (* 1    (length _calibration_reading)) 4
    ;; uint16[] _position_raw
    (* 2    (length _position_raw)) 4
    ;; int16[] _velocity_raw
    (* 2    (length _velocity_raw)) 4
    ;; uint8[] _temperature
    (* 1    (length _temperature)) 4
    ;; int64[] _circle
    (* 8    (length _circle)) 4
    ;; uint16[] _last_position_raw
    (* 2    (length _last_position_raw)) 4
    ;; float64[] _frequency
    (* 8    (length _frequency)) 4
    ;; float64[] _position
    (* 8    (length _position)) 4
    ;; float64[] _velocity
    (* 8    (length _velocity)) 4
    ;; float64[] _effort
    (* 8    (length _effort)) 4
    ;; float64[] _commanded_effort
    (* 8    (length _commanded_effort)) 4
    ;; float64[] _executed_effort
    (* 8    (length _executed_effort)) 4
    ;; float64[] _offset
    (* 8    (length _offset)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time[] _stamp
     (write-long (length _stamp) s)
     (dotimes (i (length _stamp))
       (write-long (send (elt _stamp i) :sec) s) (write-long (send (elt _stamp i) :nsec) s)
       )
     ;; string[] _name
     (write-long (length _name) s)
     (dolist (elem _name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _type
     (write-long (length _type) s)
     (dolist (elem _type)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _bus
     (write-long (length _bus) s)
     (dolist (elem _bus)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int32[] _id
     (write-long (length _id) s)
     (dotimes (i (length _id))
       (write-long (elt _id i) s)
       )
     ;; bool[] _halted
     (write-long (length _halted) s)
     (dotimes (i (length _halted))
       (if (elt _halted i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _need_calibration
     (write-long (length _need_calibration) s)
     (dotimes (i (length _need_calibration))
       (if (elt _need_calibration i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _calibrated
     (write-long (length _calibrated) s)
     (dotimes (i (length _calibrated))
       (if (elt _calibrated i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[] _calibration_reading
     (write-long (length _calibration_reading) s)
     (dotimes (i (length _calibration_reading))
       (if (elt _calibration_reading i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; uint16[] _position_raw
     (write-long (length _position_raw) s)
     (dotimes (i (length _position_raw))
       (write-word (elt _position_raw i) s)
       )
     ;; int16[] _velocity_raw
     (write-long (length _velocity_raw) s)
     (dotimes (i (length _velocity_raw))
       (write-word (elt _velocity_raw i) s)
       )
     ;; uint8[] _temperature
     (write-long (length _temperature) s)
     (princ _temperature s)
     ;; int64[] _circle
     (write-long (length _circle) s)
     (dotimes (i (length _circle))
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke (elt _circle i) (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class (elt _circle i)) (= (length ((elt _circle i) . bv)) 2)) ;; bignum
              (write-long (ash (elt ((elt _circle i) . bv) 0) 0) s)
              (write-long (ash (elt ((elt _circle i) . bv) 1) -1) s))
             ((and (class (elt _circle i)) (= (length ((elt _circle i) . bv)) 1)) ;; big1
              (write-long (elt ((elt _circle i) . bv) 0) s)
              (write-long (if (>= (elt _circle i) 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long (elt _circle i) s)(write-long (if (>= (elt _circle i) 0) 0 #xffffffff) s)))
       )
     ;; uint16[] _last_position_raw
     (write-long (length _last_position_raw) s)
     (dotimes (i (length _last_position_raw))
       (write-word (elt _last_position_raw i) s)
       )
     ;; float64[] _frequency
     (write-long (length _frequency) s)
     (dotimes (i (length _frequency))
       (sys::poke (elt _frequency i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _commanded_effort
     (write-long (length _commanded_effort) s)
     (dotimes (i (length _commanded_effort))
       (sys::poke (elt _commanded_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _executed_effort
     (write-long (length _executed_effort) s)
     (dotimes (i (length _executed_effort))
       (sys::poke (elt _executed_effort i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _offset
     (write-long (length _offset) s)
     (dotimes (i (length _offset))
       (sys::poke (elt _offset i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time[] _stamp
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stamp (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _stamp)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; string[] _name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _type
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _type (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _type i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _bus
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _bus (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _bus i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int32[] _id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _id i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; bool[] _halted
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _halted (make-list n))
     (dotimes (i n)
     (setf (elt _halted i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _need_calibration
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _need_calibration (make-list n))
     (dotimes (i n)
     (setf (elt _need_calibration i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _calibrated
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calibrated (make-list n))
     (dotimes (i n)
     (setf (elt _calibrated i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; bool[] _calibration_reading
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _calibration_reading (make-list n))
     (dotimes (i n)
     (setf (elt _calibration_reading i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; uint16[] _position_raw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_raw (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _position_raw i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; int16[] _velocity_raw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_raw (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _velocity_raw i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; uint8[] _temperature
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _temperature (make-array n :element-type :char))
     (replace _temperature buf :start2 ptr-) (incf ptr- n))
   ;; int64[] _circle
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _circle (instantiate integer-vector n))
     (dotimes (i n)
#+(or :alpha :irix6 :x86_64)
      (setf (elt _circle i) (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf (elt _circle i) (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
     ))
   ;; uint16[] _last_position_raw
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _last_position_raw (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _last_position_raw i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64[] _frequency
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _frequency (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _frequency i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _commanded_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _commanded_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _commanded_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _executed_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _executed_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _executed_effort i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _offset
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _offset (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _offset i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get rm_msgs::ActuatorState :md5sum-) "f82106ab641e97268a9e8e29a4b47321")
(setf (get rm_msgs::ActuatorState :datatype-) "rm_msgs/ActuatorState")
(setf (get rm_msgs::ActuatorState :definition-)
      "# This message contains the state of an actuator
# An actuator contains a motor and an encoder, and is connected
# to a joint by a transmission

# The time at which this actuator state was measured
time[] stamp

# The name of the actuator
string[] name

# The type of the actuator
string[] type

# The CAN bus
string[] bus

# The CAN id
int32[] id

# Indicates if the motor is halted. A motor can be halted because of a voltage or temperature problem
bool[] halted

# Need calibration
bool[] need_calibration

# Indicates if the motor is calibrated. A motor will be not calibrated when recover from halted
bool[] calibrated

# The value of the calibration reading: low (false) or high (true)
bool[] calibration_reading

# The encoder raw position, represented by the number of encoder ticks
uint16[] position_raw

# The encoder velocity, represented by rpm
int16[] velocity_raw

# The temperature of the motor, represented by c1elsius
uint8[] temperature

# The circle of absolute encoder
int64[]  circle

# The last encoder raw position, represented by the number of encoder ticks
uint16[] last_position_raw

float64[]  frequency

# The encoder position in radians
float64[] position

# The encoder velocity in radians per second
float64[] velocity

# The last effort that was measured by the actuator
float64[] effort

# The last effort command that was requested without limit
float64[] commanded_effort

# The last effort command that was requested with limit
float64[] executed_effort

# The angular offset (in radians) that is added to the encoder reading,
# to get to the position of the actuator. This number is computed when the referece
# sensor is triggered during the calibration phase
float64[] offset

")



(provide :rm_msgs/ActuatorState "f82106ab641e97268a9e8e29a4b47321")


