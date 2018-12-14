;; Auto-generated. Do not edit!


(when (boundp 'drrobot_jaguarV2_player::RangeArray)
  (if (not (find-package "DRROBOT_JAGUARV2_PLAYER"))
    (make-package "DRROBOT_JAGUARV2_PLAYER"))
  (shadow 'RangeArray (find-package "DRROBOT_JAGUARV2_PLAYER")))
(unless (find-package "DRROBOT_JAGUARV2_PLAYER::RANGEARRAY")
  (make-package "DRROBOT_JAGUARV2_PLAYER::RANGEARRAY"))

(in-package "ROS")
;;//! \htmlinclude RangeArray.msg.html


(defclass drrobot_jaguarV2_player::RangeArray
  :super ros::object
  :slots (_ranges ))

(defmethod drrobot_jaguarV2_player::RangeArray
  (:init
   (&key
    ((:ranges __ranges) (let (r) (dotimes (i 0) (push (instance drrobot_jaguarV2_player::Range :init) r)) r))
    )
   (send-super :init)
   (setq _ranges __ranges)
   self)
  (:ranges
   (&rest __ranges)
   (if (keywordp (car __ranges))
       (send* _ranges __ranges)
     (progn
       (if __ranges (setq _ranges (car __ranges)))
       _ranges)))
  (:serialization-length
   ()
   (+
    ;; drrobot_jaguarV2_player/Range[] _ranges
    (apply #'+ (send-all _ranges :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; drrobot_jaguarV2_player/Range[] _ranges
     (write-long (length _ranges) s)
     (dolist (elem _ranges)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; drrobot_jaguarV2_player/Range[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (let (r) (dotimes (i n) (push (instance drrobot_jaguarV2_player::Range :init) r)) r))
     (dolist (elem- _ranges)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get drrobot_jaguarV2_player::RangeArray :md5sum-) "b72db098d4ed346ce682a1d5e70d327c")
(setf (get drrobot_jaguarV2_player::RangeArray :datatype-) "drrobot_jaguarV2_player/RangeArray")
(setf (get drrobot_jaguarV2_player::RangeArray :definition-)
      "#this message will be used for IR ranger sensor and ultrasonic range sensor
Range[] ranges

================================================================================
MSG: drrobot_jaguarV2_player/Range
# Single range reading from an active ranger that emits energy and reports
# one range reading that is valid along an arc at the distance measured. 
# This message is not appropriate for fixed-range obstacle detectors, 
# such as the Sharp GP2D15. This message is also not appropriate for laser 
# scanners. See the LaserScan message if you are working with a laser scanner.

Header header    	# timestamp in the header is the time the ranger
		 	# returned the distance reading

# Radiation type enums
# If you want a value added to this list, send an email to the ros-users list
uint8 ULTRASOUND=0
uint8 INFRARED=1

uint8 radiation_type    # the type of radiation used by the sensor
		 	# (sound, IR, etc) [enum]

float32 field_of_view   # the size of the arc that the distance reading is
		 	# valid for [rad]
		 	# the object causing the range reading may have
		 	# been anywhere within -field_of_view/2 and
		 	# field_of_view/2 at the measured range. 
                        # 0 angle corresponds to the x-axis of the sensor.

float32 min_range       # minimum range value [m]
float32 max_range       # maximum range value [m]

float32 range           # range data [m]
		 	# (Note: values < range_min or > range_max
		 	# should be discarded)

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



(provide :drrobot_jaguarV2_player/RangeArray "b72db098d4ed346ce682a1d5e70d327c")


