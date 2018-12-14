;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::CustomSensor)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'CustomSensor (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::CUSTOMSENSOR")
  (make-package "DRROBOT_JAGUARV2_PLAYER::CUSTOMSENSOR"))

(in-package "ROS")
;;//! \htmlinclude CustomSensor.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drrobot_jaguarV2_player::CustomSensor
  :super ros::object
  :slots (_header _robot_type _customADData _customIO ))

(defmethod drrobot_jaguarV2_player::CustomSensor
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_type __robot_type) "")
    ((:customADData __customADData) (make-array 0 :initial-element 0 :element-type :integer))
    ((:customIO __customIO) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_type (string __robot_type))
   (setq _customADData __customADData)
   (setq _customIO (round __customIO))
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
  (:customADData
   (&optional __customADData)
   (if __customADData (setq _customADData __customADData)) _customADData)
  (:customIO
   (&optional __customIO)
   (if __customIO (setq _customIO __customIO)) _customIO)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_type
    4 (length _robot_type)
    ;; uint32[] _customADData
    (* 4    (length _customADData)) 4
    ;; uint8 _customIO
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _robot_type
       (write-long (length _robot_type) s) (princ _robot_type s)
     ;; uint32[] _customADData
     (write-long (length _customADData) s)
     (dotimes (i (length _customADData))
       (write-long (elt _customADData i) s)
       )
     ;; uint8 _customIO
       (write-byte _customIO s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32[] _customADData
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _customADData (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _customADData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8 _customIO
     (setq _customIO (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::CustomSensor :md5sum-) "99688dde61b19bf7f23d2791779ffdd3")
(setf (get drrobot_jaguarV2_player::CustomSensor :datatype-) "drrobot_jaguarV2_player/CustomSensor")
(setf (get drrobot_jaguarV2_player::CustomSensor :definition-)
      "# custom Sensor information message from DrRobot Robot.

Header header    	# timestamp in the header is the time the driver
		 	# returned the battery/power reading
string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion

#make sure what sensor is on your expanded sensor port
uint32[] customADData		# custom AD channel 8 channel on the board, which channel is avaiable please contact Dr Robot
uint8 customIO    #expanded IO

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



(provide :drrobot_jaguarV2_player/CustomSensor "99688dde61b19bf7f23d2791779ffdd3")


