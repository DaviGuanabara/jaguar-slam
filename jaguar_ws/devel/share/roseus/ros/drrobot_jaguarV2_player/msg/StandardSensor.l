;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::StandardSensor)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'StandardSensor (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::STANDARDSENSOR")
  (make-package "DRROBOT_JAGUARV2_PLAYER::STANDARDSENSOR"))

(in-package "ROS")
;;//! \htmlinclude StandardSensor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drrobot_jaguarV2_player::StandardSensor
  :super ros::object
  :slots (_header _robot_type _humanSensorData _tiltingSensorData _overHeatSensorData _thermoSensorData _boardPowerVol _motorPowerVol _servoPowerVol _refVol _potVol ))

(defmethod drrobot_jaguarV2_player::StandardSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_type __robot_type) "")
    ((:humanSensorData __humanSensorData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:tiltingSensorData __tiltingSensorData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:overHeatSensorData __overHeatSensorData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:thermoSensorData __thermoSensorData) 0)
    ((:boardPowerVol __boardPowerVol) 0.0)
    ((:motorPowerVol __motorPowerVol) 0.0)
    ((:servoPowerVol __servoPowerVol) 0.0)
    ((:refVol __refVol) 0.0)
    ((:potVol __potVol) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_type (string __robot_type))
   (setq _humanSensorData __humanSensorData)
   (setq _tiltingSensorData __tiltingSensorData)
   (setq _overHeatSensorData __overHeatSensorData)
   (setq _thermoSensorData (round __thermoSensorData))
   (setq _boardPowerVol (float __boardPowerVol))
   (setq _motorPowerVol (float __motorPowerVol))
   (setq _servoPowerVol (float __servoPowerVol))
   (setq _refVol (float __refVol))
   (setq _potVol (float __potVol))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:robot_type
   (&optional __robot_type)
   (if __robot_type (setq _robot_type __robot_type)) _robot_type)
  (:humanSensorData
   (&optional __humanSensorData)
   (if __humanSensorData (setq _humanSensorData __humanSensorData)) _humanSensorData)
  (:tiltingSensorData
   (&optional __tiltingSensorData)
   (if __tiltingSensorData (setq _tiltingSensorData __tiltingSensorData)) _tiltingSensorData)
  (:overHeatSensorData
   (&optional __overHeatSensorData)
   (if __overHeatSensorData (setq _overHeatSensorData __overHeatSensorData)) _overHeatSensorData)
  (:thermoSensorData
   (&optional __thermoSensorData)
   (if __thermoSensorData (setq _thermoSensorData __thermoSensorData)) _thermoSensorData)
  (:boardPowerVol
   (&optional __boardPowerVol)
   (if __boardPowerVol (setq _boardPowerVol __boardPowerVol)) _boardPowerVol)
  (:motorPowerVol
   (&optional __motorPowerVol)
   (if __motorPowerVol (setq _motorPowerVol __motorPowerVol)) _motorPowerVol)
  (:servoPowerVol
   (&optional __servoPowerVol)
   (if __servoPowerVol (setq _servoPowerVol __servoPowerVol)) _servoPowerVol)
  (:refVol
   (&optional __refVol)
   (if __refVol (setq _refVol __refVol)) _refVol)
  (:potVol
   (&optional __potVol)
   (if __potVol (setq _potVol __potVol)) _potVol)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_type
    4 (length _robot_type)
    ;; uint32[] _humanSensorData
    (* 4    (length _humanSensorData)) 4
    ;; uint32[] _tiltingSensorData
    (* 4    (length _tiltingSensorData)) 4
    ;; uint32[] _overHeatSensorData
    (* 4    (length _overHeatSensorData)) 4
    ;; uint32 _thermoSensorData
    4
    ;; float32 _boardPowerVol
    4
    ;; float32 _motorPowerVol
    4
    ;; float32 _servoPowerVol
    4
    ;; float32 _refVol
    4
    ;; float32 _potVol
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;; uint32[] _humanSensorData
     (write-long (length _humanSensorData) s)
     (dotimes (i (length _humanSensorData))
       (write-long (elt _humanSensorData i) s)
       )
     ;; uint32[] _tiltingSensorData
     (write-long (length _tiltingSensorData) s)
     (dotimes (i (length _tiltingSensorData))
       (write-long (elt _tiltingSensorData i) s)
       )
     ;; uint32[] _overHeatSensorData
     (write-long (length _overHeatSensorData) s)
     (dotimes (i (length _overHeatSensorData))
       (write-long (elt _overHeatSensorData i) s)
       )
     ;; uint32 _thermoSensorData
       (write-long _thermoSensorData s)
     ;; float32 _boardPowerVol
       (sys::poke _boardPowerVol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motorPowerVol
       (sys::poke _motorPowerVol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servoPowerVol
       (sys::poke _servoPowerVol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _refVol
       (sys::poke _refVol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _potVol
       (sys::poke _potVol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32[] _humanSensorData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _humanSensorData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _humanSensorData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _tiltingSensorData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tiltingSensorData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _tiltingSensorData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32[] _overHeatSensorData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _overHeatSensorData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _overHeatSensorData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint32 _thermoSensorData
     (setq _thermoSensorData (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _boardPowerVol
     (setq _boardPowerVol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motorPowerVol
     (setq _motorPowerVol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servoPowerVol
     (setq _servoPowerVol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _refVol
     (setq _refVol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _potVol
     (setq _potVol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::StandardSensor :md5sum-) "e867c61af4cf779989629edb31d6fbd8")
(setf (get drrobot_jaguarV2_player::StandardSensor :datatype-) "drrobot_jaguarV2_player/StandardSensor")
(setf (get drrobot_jaguarV2_player::StandardSensor :definition-)
      "# standard Sensor information message from DrRobot Robot.

Header header    	# timestamp in the header is the time the driver
		 	# returned the battery/power reading
string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion

#make sure below sensors on your robot or not
uint32[] humanSensorData		#human sensor
uint32[] tiltingSensorData    #tilting sensor X Y
uint32[] overHeatSensorData   # over heat sensor on the board
uint32 thermoSensorData	    # enviroment temperature
float32 boardPowerVol 			# control board voltage
float32 motorPowerVol			# motor power voltage
float32 servoPowerVol			# servo power voltage
float32 refVol					# AD reference voltage
float32 potVol					# potentialmeter power voltage , not used now
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :drrobot_jaguarV2_player/StandardSensor "e867c61af4cf779989629edb31d6fbd8")


