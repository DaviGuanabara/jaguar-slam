; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude RangeArray.msg.html

(cl:defclass <RangeArray> (roslisp-msg-protocol:ros-message)
  ((ranges
    :reader ranges
    :initarg :ranges
    :type (cl:vector drrobot_jaguarV2_player-msg:Range)
   :initform (cl:make-array 0 :element-type 'drrobot_jaguarV2_player-msg:Range :initial-element (cl:make-instance 'drrobot_jaguarV2_player-msg:Range))))
)

(cl:defclass RangeArray (<RangeArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RangeArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RangeArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<RangeArray> is deprecated: use drrobot_jaguarV2_player-msg:RangeArray instead.")))

(cl:ensure-generic-function 'ranges-val :lambda-list '(m))
(cl:defmethod ranges-val ((m <RangeArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:ranges-val is deprecated.  Use drrobot_jaguarV2_player-msg:ranges instead.")
  (ranges m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RangeArray>) ostream)
  "Serializes a message object of type '<RangeArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ranges))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ranges))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RangeArray>) istream)
  "Deserializes a message object of type '<RangeArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ranges) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ranges)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'drrobot_jaguarV2_player-msg:Range))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RangeArray>)))
  "Returns string type for a message object of type '<RangeArray>"
  "drrobot_jaguarV2_player/RangeArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RangeArray)))
  "Returns string type for a message object of type 'RangeArray"
  "drrobot_jaguarV2_player/RangeArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RangeArray>)))
  "Returns md5sum for a message object of type '<RangeArray>"
  "b72db098d4ed346ce682a1d5e70d327c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RangeArray)))
  "Returns md5sum for a message object of type 'RangeArray"
  "b72db098d4ed346ce682a1d5e70d327c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RangeArray>)))
  "Returns full string definition for message of type '<RangeArray>"
  (cl:format cl:nil "#this message will be used for IR ranger sensor and ultrasonic range sensor~%Range[] ranges~%~%================================================================================~%MSG: drrobot_jaguarV2_player/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is not appropriate for fixed-range obstacle detectors, ~%# such as the Sharp GP2D15. This message is also not appropriate for laser ~%# scanners. See the LaserScan message if you are working with a laser scanner.~%~%Header header    	# timestamp in the header is the time the ranger~%		 	# returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%		 	# (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%		 	# valid for [rad]~%		 	# the object causing the range reading may have~%		 	# been anywhere within -field_of_view/2 and~%		 	# field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%~%float32 range           # range data [m]~%		 	# (Note: values < range_min or > range_max~%		 	# should be discarded)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RangeArray)))
  "Returns full string definition for message of type 'RangeArray"
  (cl:format cl:nil "#this message will be used for IR ranger sensor and ultrasonic range sensor~%Range[] ranges~%~%================================================================================~%MSG: drrobot_jaguarV2_player/Range~%# Single range reading from an active ranger that emits energy and reports~%# one range reading that is valid along an arc at the distance measured. ~%# This message is not appropriate for fixed-range obstacle detectors, ~%# such as the Sharp GP2D15. This message is also not appropriate for laser ~%# scanners. See the LaserScan message if you are working with a laser scanner.~%~%Header header    	# timestamp in the header is the time the ranger~%		 	# returned the distance reading~%~%# Radiation type enums~%# If you want a value added to this list, send an email to the ros-users list~%uint8 ULTRASOUND=0~%uint8 INFRARED=1~%~%uint8 radiation_type    # the type of radiation used by the sensor~%		 	# (sound, IR, etc) [enum]~%~%float32 field_of_view   # the size of the arc that the distance reading is~%		 	# valid for [rad]~%		 	# the object causing the range reading may have~%		 	# been anywhere within -field_of_view/2 and~%		 	# field_of_view/2 at the measured range. ~%                        # 0 angle corresponds to the x-axis of the sensor.~%~%float32 min_range       # minimum range value [m]~%float32 max_range       # maximum range value [m]~%~%float32 range           # range data [m]~%		 	# (Note: values < range_min or > range_max~%		 	# should be discarded)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RangeArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ranges) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RangeArray>))
  "Converts a ROS message object to a list"
  (cl:list 'RangeArray
    (cl:cons ':ranges (ranges msg))
))
