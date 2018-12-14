;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::MotorInfo)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'MotorInfo (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::MOTORINFO")
  (make-package "DRROBOT_JAGUARV2_PLAYER::MOTORINFO"))

(in-package "ROS")
;;//! \htmlinclude MotorInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drrobot_jaguarV2_player::MotorInfo
  :super ros::object
  :slots (_header _robot_type _encoder_pos _encoder_vel _encoder_dir _motor_current _motor_pwm ))

(defmethod drrobot_jaguarV2_player::MotorInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_type __robot_type) "")
    ((:encoder_pos __encoder_pos) 0)
    ((:encoder_vel __encoder_vel) 0)
    ((:encoder_dir __encoder_dir) 0)
    ((:motor_current __motor_current) 0.0)
    ((:motor_pwm __motor_pwm) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_type (string __robot_type))
   (setq _encoder_pos (round __encoder_pos))
   (setq _encoder_vel (round __encoder_vel))
   (setq _encoder_dir (round __encoder_dir))
   (setq _motor_current (float __motor_current))
   (setq _motor_pwm (round __motor_pwm))
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
  (:encoder_pos
   (&optional __encoder_pos)
   (if __encoder_pos (setq _encoder_pos __encoder_pos)) _encoder_pos)
  (:encoder_vel
   (&optional __encoder_vel)
   (if __encoder_vel (setq _encoder_vel __encoder_vel)) _encoder_vel)
  (:encoder_dir
   (&optional __encoder_dir)
   (if __encoder_dir (setq _encoder_dir __encoder_dir)) _encoder_dir)
  (:motor_current
   (&optional __motor_current)
   (if __motor_current (setq _motor_current __motor_current)) _motor_current)
  (:motor_pwm
   (&optional __motor_pwm)
   (if __motor_pwm (setq _motor_pwm __motor_pwm)) _motor_pwm)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_type
    4 (length _robot_type)
    ;; uint32 _encoder_pos
    4
    ;; uint32 _encoder_vel
    4
    ;; uint32 _encoder_dir
    4
    ;; float32 _motor_current
    4
    ;; uint32 _motor_pwm
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
     ;; uint32 _encoder_pos
       (write-long _encoder_pos s)
     ;; uint32 _encoder_vel
       (write-long _encoder_vel s)
     ;; uint32 _encoder_dir
       (write-long _encoder_dir s)
     ;; float32 _motor_current
       (sys::poke _motor_current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _motor_pwm
       (write-long _motor_pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _encoder_pos
     (setq _encoder_pos (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _encoder_vel
     (setq _encoder_vel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _encoder_dir
     (setq _encoder_dir (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _motor_current
     (setq _motor_current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _motor_pwm
     (setq _motor_pwm (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::MotorInfo :md5sum-) "9e31f4f22948e8b2ee140c8cc701e042")
(setf (get drrobot_jaguarV2_player::MotorInfo :datatype-) "drrobot_jaguarV2_player/MotorInfo")
(setf (get drrobot_jaguarV2_player::MotorInfo :definition-)
      "# motor sensor data message from DrRobot Robot.

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



(provide :drrobot_jaguarV2_player/MotorInfo "9e31f4f22948e8b2ee140c8cc701e042")


