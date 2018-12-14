; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude CustomSensor.msg.html

(cl:defclass <CustomSensor> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (robot_type
    :reader robot_type
    :initarg :robot_type
    :type cl:string
    :initform "")
   (customADData
    :reader customADData
    :initarg :customADData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (customIO
    :reader customIO
    :initarg :customIO
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CustomSensor (<CustomSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CustomSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CustomSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<CustomSensor> is deprecated: use drrobot_jaguarV2_player-msg:CustomSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CustomSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:header-val is deprecated.  Use drrobot_jaguarV2_player-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <CustomSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:robot_type-val is deprecated.  Use drrobot_jaguarV2_player-msg:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'customADData-val :lambda-list '(m))
(cl:defmethod customADData-val ((m <CustomSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:customADData-val is deprecated.  Use drrobot_jaguarV2_player-msg:customADData instead.")
  (customADData m))

(cl:ensure-generic-function 'customIO-val :lambda-list '(m))
(cl:defmethod customIO-val ((m <CustomSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:customIO-val is deprecated.  Use drrobot_jaguarV2_player-msg:customIO instead.")
  (customIO m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CustomSensor>) ostream)
  "Serializes a message object of type '<CustomSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'customADData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'customADData))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'customIO)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CustomSensor>) istream)
  "Deserializes a message object of type '<CustomSensor>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'customADData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'customADData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'customIO)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CustomSensor>)))
  "Returns string type for a message object of type '<CustomSensor>"
  "drrobot_jaguarV2_player/CustomSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CustomSensor)))
  "Returns string type for a message object of type 'CustomSensor"
  "drrobot_jaguarV2_player/CustomSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CustomSensor>)))
  "Returns md5sum for a message object of type '<CustomSensor>"
  "99688dde61b19bf7f23d2791779ffdd3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CustomSensor)))
  "Returns md5sum for a message object of type 'CustomSensor"
  "99688dde61b19bf7f23d2791779ffdd3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CustomSensor>)))
  "Returns full string definition for message of type '<CustomSensor>"
  (cl:format cl:nil "# custom Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#make sure what sensor is on your expanded sensor port~%uint32[] customADData		# custom AD channel 8 channel on the board, which channel is avaiable please contact Dr Robot~%uint8 customIO    #expanded IO~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CustomSensor)))
  "Returns full string definition for message of type 'CustomSensor"
  (cl:format cl:nil "# custom Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#make sure what sensor is on your expanded sensor port~%uint32[] customADData		# custom AD channel 8 channel on the board, which channel is avaiable please contact Dr Robot~%uint8 customIO    #expanded IO~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CustomSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'customADData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CustomSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'CustomSensor
    (cl:cons ':header (header msg))
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':customADData (customADData msg))
    (cl:cons ':customIO (customIO msg))
))
