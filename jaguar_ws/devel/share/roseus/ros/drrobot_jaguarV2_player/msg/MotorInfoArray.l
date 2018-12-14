;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::MotorInfoArray)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'MotorInfoArray (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::MOTORINFOARRAY")
  (make-package "DRROBOT_JAGUARV2_PLAYER::MOTORINFOARRAY"))

(in-package "ROS")
;;//! \htmlinclude MotorInfoArray.msg.html


(defclass drrobot_jaguarV2_player::MotorInfoArray
  :super ros::object
  :slots (_motorInfos ))

(defmethod drrobot_jaguarV2_player::MotorInfoArray
  (:init
   (&key
    ((:motorInfos __motorInfos) (let (r) (dotimes (i 0) (push (instance drrobot_jaguarV2_player::MotorInfo :init) r)) r))
    )
   (send-super :init)
   (setq _motorInfos __motorInfos)
   self)
  (:motorInfos
   (&rest __motorInfos)
   (if (keywordp (car __motorInfos))
       (send* _motorInfos __motorInfos)
     (progn
       (if __motorInfos (setq _motorInfos (car __motorInfos)))
       _motorInfos)))
  (:serialization-length
   ()
   (+
    ;; drrobot_jaguarV2_player/MotorInfo[] _motorInfos
    (apply #'+ (send-all _motorInfos :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; drrobot_jaguarV2_player/MotorInfo[] _motorInfos
     (write-long (length _motorInfos) s)
     (dolist (elem _motorInfos)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; drrobot_jaguarV2_player/MotorInfo[] _motorInfos
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motorInfos (let (r) (dotimes (i n) (push (instance drrobot_jaguarV2_player::MotorInfo :init) r)) r))
     (dolist (elem- _motorInfos)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::MotorInfoArray :md5sum-) "64d8eb9826ec2f78779f54df29bcc931")
(setf (get drrobot_jaguarV2_player::MotorInfoArray :datatype-) "drrobot_jaguarV2_player/MotorInfoArray")
(setf (get drrobot_jaguarV2_player::MotorInfoArray :definition-)
      "#this message will be used for motor sensor
MotorInfo[] motorInfos

================================================================================
MSG: drrobot_jaguarV2_player/MotorInfo
# motor sensor data message from DrRobot Robot.

Header header    	# timestamp in the header is the time the driver
		 	# returned the battery/power reading
string robot_type	# robot type, I90 series, sentinel3 or Jaguar Power/Motion

uint32 encoder_pos	# encoder positon count
uint32 encoder_vel	# encoder velocity value
uint32 encoder_dir	# encoder direction

float32 motor_current	# motor current
uint32 motor_pwm	# output PWM value, only for Jaguar series robot

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



(provide :drrobot_jaguarV2_player/MotorInfoArray "64d8eb9826ec2f78779f54df29bcc931")


