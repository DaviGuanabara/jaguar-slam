;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::IMUInfo)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'IMUInfo (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::IMUINFO")
  (make-package "DRROBOT_JAGUARV2_PLAYER::IMUINFO"))

(in-package "ROS")
;;//! \htmlinclude IMUInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drrobot_jaguarV2_player::IMUInfo
  :super ros::object
  :slots (_header _accelRawData _gyroRawData _magRawData _accelReading _gyroReading ))

(defmethod drrobot_jaguarV2_player::IMUInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:accelRawData __accelRawData) (make-array 3 :initial-element 0 :element-type :integer))
    ((:gyroRawData __gyroRawData) (make-array 3 :initial-element 0 :element-type :integer))
    ((:magRawData __magRawData) (make-array 3 :initial-element 0 :element-type :integer))
    ((:accelReading __accelReading) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:gyroReading __gyroReading) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _accelRawData __accelRawData)
   (setq _gyroRawData __gyroRawData)
   (setq _magRawData __magRawData)
   (setq _accelReading __accelReading)
   (setq _gyroReading __gyroReading)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:accelRawData
   (&optional __accelRawData)
   (if __accelRawData (setq _accelRawData __accelRawData)) _accelRawData)
  (:gyroRawData
   (&optional __gyroRawData)
   (if __gyroRawData (setq _gyroRawData __gyroRawData)) _gyroRawData)
  (:magRawData
   (&optional __magRawData)
   (if __magRawData (setq _magRawData __magRawData)) _magRawData)
  (:accelReading
   (&optional __accelReading)
   (if __accelReading (setq _accelReading __accelReading)) _accelReading)
  (:gyroReading
   (&optional __gyroReading)
   (if __gyroReading (setq _gyroReading __gyroReading)) _gyroReading)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32[3] _accelRawData
    (* 4    3)
    ;; uint32[3] _gyroRawData
    (* 4    3)
    ;; uint32[3] _magRawData
    (* 4    3)
    ;; float32[3] _accelReading
    (* 4    3)
    ;; float32[3] _gyroReading
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32[3] _accelRawData
     (dotimes (i 3)
       (write-long (elt _accelRawData i) s)
       )
     ;; uint32[3] _gyroRawData
     (dotimes (i 3)
       (write-long (elt _gyroRawData i) s)
       )
     ;; uint32[3] _magRawData
     (dotimes (i 3)
       (write-long (elt _magRawData i) s)
       )
     ;; float32[3] _accelReading
     (dotimes (i 3)
       (sys::poke (elt _accelReading i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[3] _gyroReading
     (dotimes (i 3)
       (sys::poke (elt _gyroReading i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32[3] _accelRawData
   (dotimes (i (length _accelRawData))
     (setf (elt _accelRawData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[3] _gyroRawData
   (dotimes (i (length _gyroRawData))
     (setf (elt _gyroRawData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; uint32[3] _magRawData
   (dotimes (i (length _magRawData))
     (setf (elt _magRawData i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; float32[3] _accelReading
   (dotimes (i (length _accelReading))
     (setf (elt _accelReading i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[3] _gyroReading
   (dotimes (i (length _gyroReading))
     (setf (elt _gyroReading i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::IMUInfo :md5sum-) "701e9d1318413bd1e8936e4896f37226")
(setf (get drrobot_jaguarV2_player::IMUInfo :datatype-) "drrobot_jaguarV2_player/IMUInfo")
(setf (get drrobot_jaguarV2_player::IMUInfo :definition-)
      "# IMU Sensor information message from DrRobot Robot.

Header header    	# timestamp in the header is the time the driver
		 	# returned the data reading
#make sure below sensors on your robot or not
uint32[3] accelRawData 		#Raw accel sensor reading, 0-x, 1-y,z-2
uint32[3] gyroRawData    	#Gyro raw data
uint32[3] magRawData   		# magRaw
float32[3] accelReading		# accel sensor reading  m/s2
float32[3] gyroReading		# gyro sensor reading   rad/m


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



(provide :drrobot_jaguarV2_player/IMUInfo "701e9d1318413bd1e8936e4896f37226")


