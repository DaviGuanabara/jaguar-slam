;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::PowerInfo)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'PowerInfo (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::POWERINFO")
  (make-package "DRROBOT_JAGUARV2_PLAYER::POWERINFO"))

(in-package "ROS")
;;//! \htmlinclude PowerInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass drrobot_jaguarV2_player::PowerInfo
  :super ros::object
  :slots (_header _robot_type _bat1_vol _bat2_vol _bat1_temp _bat2_temp _dcin_vol _ref_vol _power_status _power_path _charge_path ))

(defmethod drrobot_jaguarV2_player::PowerInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:robot_type __robot_type) "")
    ((:bat1_vol __bat1_vol) 0.0)
    ((:bat2_vol __bat2_vol) 0.0)
    ((:bat1_temp __bat1_temp) 0.0)
    ((:bat2_temp __bat2_temp) 0.0)
    ((:dcin_vol __dcin_vol) 0.0)
    ((:ref_vol __ref_vol) 0.0)
    ((:power_status __power_status) 0)
    ((:power_path __power_path) 0)
    ((:charge_path __charge_path) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _robot_type (string __robot_type))
   (setq _bat1_vol (float __bat1_vol))
   (setq _bat2_vol (float __bat2_vol))
   (setq _bat1_temp (float __bat1_temp))
   (setq _bat2_temp (float __bat2_temp))
   (setq _dcin_vol (float __dcin_vol))
   (setq _ref_vol (float __ref_vol))
   (setq _power_status (round __power_status))
   (setq _power_path (round __power_path))
   (setq _charge_path (round __charge_path))
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
  (:bat1_vol
   (&optional __bat1_vol)
   (if __bat1_vol (setq _bat1_vol __bat1_vol)) _bat1_vol)
  (:bat2_vol
   (&optional __bat2_vol)
   (if __bat2_vol (setq _bat2_vol __bat2_vol)) _bat2_vol)
  (:bat1_temp
   (&optional __bat1_temp)
   (if __bat1_temp (setq _bat1_temp __bat1_temp)) _bat1_temp)
  (:bat2_temp
   (&optional __bat2_temp)
   (if __bat2_temp (setq _bat2_temp __bat2_temp)) _bat2_temp)
  (:dcin_vol
   (&optional __dcin_vol)
   (if __dcin_vol (setq _dcin_vol __dcin_vol)) _dcin_vol)
  (:ref_vol
   (&optional __ref_vol)
   (if __ref_vol (setq _ref_vol __ref_vol)) _ref_vol)
  (:power_status
   (&optional __power_status)
   (if __power_status (setq _power_status __power_status)) _power_status)
  (:power_path
   (&optional __power_path)
   (if __power_path (setq _power_path __power_path)) _power_path)
  (:charge_path
   (&optional __charge_path)
   (if __charge_path (setq _charge_path __charge_path)) _charge_path)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _robot_type
    4 (length _robot_type)
    ;; float32 _bat1_vol
    4
    ;; float32 _bat2_vol
    4
    ;; float32 _bat1_temp
    4
    ;; float32 _bat2_temp
    4
    ;; float32 _dcin_vol
    4
    ;; float32 _ref_vol
    4
    ;; uint8 _power_status
    1
    ;; uint8 _power_path
    1
    ;; uint8 _charge_path
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
     ;; float32 _bat1_vol
       (sys::poke _bat1_vol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bat2_vol
       (sys::poke _bat2_vol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bat1_temp
       (sys::poke _bat1_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bat2_temp
       (sys::poke _bat2_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _dcin_vol
       (sys::poke _dcin_vol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ref_vol
       (sys::poke _ref_vol (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _power_status
       (write-byte _power_status s)
     ;; uint8 _power_path
       (write-byte _power_path s)
     ;; uint8 _charge_path
       (write-byte _charge_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _robot_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _robot_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _bat1_vol
     (setq _bat1_vol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bat2_vol
     (setq _bat2_vol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bat1_temp
     (setq _bat1_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bat2_temp
     (setq _bat2_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _dcin_vol
     (setq _dcin_vol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ref_vol
     (setq _ref_vol (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _power_status
     (setq _power_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_path
     (setq _power_path (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _charge_path
     (setq _charge_path (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::PowerInfo :md5sum-) "13107d877ae888e7541f720d1432d852")
(setf (get drrobot_jaguarV2_player::PowerInfo :datatype-) "drrobot_jaguarV2_player/PowerInfo")
(setf (get drrobot_jaguarV2_player::PowerInfo :definition-)
      "# battery /power information message from DrRobot Robot.

Header header    	# timestamp in the header is the time the driver
		 	# returned the battery/power reading
string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion

#below message is only I90 series with Power control system on robot, otherwise reserved
float32 bat1_vol	# battery1 voltage
float32 bat2_vol	# battery2 voltage
float32 bat1_temp	# battery1 temperature reading, now only is the AD value
float32 bat2_temp	# battery2 temperature reading, now only is the AD value
float32 dcin_vol	# dcin power voltage reading
float32 ref_vol		# board AD reference voltage reading
uint8 power_status	# power status, referee document to get detailed info for every bit
uint8 power_path	# power selected path, please referee DrRobot document
uint8 charge_path	# charger selected path, please referee DrRobot document


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



(provide :drrobot_jaguarV2_player/PowerInfo "13107d877ae888e7541f720d1432d852")


