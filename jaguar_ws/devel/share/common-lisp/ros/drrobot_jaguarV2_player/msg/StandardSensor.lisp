; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude StandardSensor.msg.html

(cl:defclass <StandardSensor> (roslisp-msg-protocol:ros-message)
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
   (humanSensorData
    :reader humanSensorData
    :initarg :humanSensorData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (tiltingSensorData
    :reader tiltingSensorData
    :initarg :tiltingSensorData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (overHeatSensorData
    :reader overHeatSensorData
    :initarg :overHeatSensorData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (thermoSensorData
    :reader thermoSensorData
    :initarg :thermoSensorData
    :type cl:integer
    :initform 0)
   (boardPowerVol
    :reader boardPowerVol
    :initarg :boardPowerVol
    :type cl:float
    :initform 0.0)
   (motorPowerVol
    :reader motorPowerVol
    :initarg :motorPowerVol
    :type cl:float
    :initform 0.0)
   (servoPowerVol
    :reader servoPowerVol
    :initarg :servoPowerVol
    :type cl:float
    :initform 0.0)
   (refVol
    :reader refVol
    :initarg :refVol
    :type cl:float
    :initform 0.0)
   (potVol
    :reader potVol
    :initarg :potVol
    :type cl:float
    :initform 0.0))
)

(cl:defclass StandardSensor (<StandardSensor>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StandardSensor>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StandardSensor)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<StandardSensor> is deprecated: use drrobot_jaguarV2_player-msg:StandardSensor instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:header-val is deprecated.  Use drrobot_jaguarV2_player-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:robot_type-val is deprecated.  Use drrobot_jaguarV2_player-msg:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'humanSensorData-val :lambda-list '(m))
(cl:defmethod humanSensorData-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:humanSensorData-val is deprecated.  Use drrobot_jaguarV2_player-msg:humanSensorData instead.")
  (humanSensorData m))

(cl:ensure-generic-function 'tiltingSensorData-val :lambda-list '(m))
(cl:defmethod tiltingSensorData-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:tiltingSensorData-val is deprecated.  Use drrobot_jaguarV2_player-msg:tiltingSensorData instead.")
  (tiltingSensorData m))

(cl:ensure-generic-function 'overHeatSensorData-val :lambda-list '(m))
(cl:defmethod overHeatSensorData-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:overHeatSensorData-val is deprecated.  Use drrobot_jaguarV2_player-msg:overHeatSensorData instead.")
  (overHeatSensorData m))

(cl:ensure-generic-function 'thermoSensorData-val :lambda-list '(m))
(cl:defmethod thermoSensorData-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:thermoSensorData-val is deprecated.  Use drrobot_jaguarV2_player-msg:thermoSensorData instead.")
  (thermoSensorData m))

(cl:ensure-generic-function 'boardPowerVol-val :lambda-list '(m))
(cl:defmethod boardPowerVol-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:boardPowerVol-val is deprecated.  Use drrobot_jaguarV2_player-msg:boardPowerVol instead.")
  (boardPowerVol m))

(cl:ensure-generic-function 'motorPowerVol-val :lambda-list '(m))
(cl:defmethod motorPowerVol-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:motorPowerVol-val is deprecated.  Use drrobot_jaguarV2_player-msg:motorPowerVol instead.")
  (motorPowerVol m))

(cl:ensure-generic-function 'servoPowerVol-val :lambda-list '(m))
(cl:defmethod servoPowerVol-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:servoPowerVol-val is deprecated.  Use drrobot_jaguarV2_player-msg:servoPowerVol instead.")
  (servoPowerVol m))

(cl:ensure-generic-function 'refVol-val :lambda-list '(m))
(cl:defmethod refVol-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:refVol-val is deprecated.  Use drrobot_jaguarV2_player-msg:refVol instead.")
  (refVol m))

(cl:ensure-generic-function 'potVol-val :lambda-list '(m))
(cl:defmethod potVol-val ((m <StandardSensor>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:potVol-val is deprecated.  Use drrobot_jaguarV2_player-msg:potVol instead.")
  (potVol m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StandardSensor>) ostream)
  "Serializes a message object of type '<StandardSensor>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'humanSensorData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'humanSensorData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tiltingSensorData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'tiltingSensorData))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'overHeatSensorData))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'overHeatSensorData))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thermoSensorData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thermoSensorData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'thermoSensorData)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'thermoSensorData)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'boardPowerVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motorPowerVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servoPowerVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'refVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'potVol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StandardSensor>) istream)
  "Deserializes a message object of type '<StandardSensor>"
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
  (cl:setf (cl:slot-value msg 'humanSensorData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'humanSensorData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'tiltingSensorData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tiltingSensorData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'overHeatSensorData) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'overHeatSensorData)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thermoSensorData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thermoSensorData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'thermoSensorData)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'thermoSensorData)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'boardPowerVol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motorPowerVol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servoPowerVol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'refVol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'potVol) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StandardSensor>)))
  "Returns string type for a message object of type '<StandardSensor>"
  "drrobot_jaguarV2_player/StandardSensor")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StandardSensor)))
  "Returns string type for a message object of type 'StandardSensor"
  "drrobot_jaguarV2_player/StandardSensor")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StandardSensor>)))
  "Returns md5sum for a message object of type '<StandardSensor>"
  "e867c61af4cf779989629edb31d6fbd8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StandardSensor)))
  "Returns md5sum for a message object of type 'StandardSensor"
  "e867c61af4cf779989629edb31d6fbd8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StandardSensor>)))
  "Returns full string definition for message of type '<StandardSensor>"
  (cl:format cl:nil "# standard Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#make sure below sensors on your robot or not~%uint32[] humanSensorData		#human sensor~%uint32[] tiltingSensorData    #tilting sensor X Y~%uint32[] overHeatSensorData   # over heat sensor on the board~%uint32 thermoSensorData	    # enviroment temperature~%float32 boardPowerVol 			# control board voltage~%float32 motorPowerVol			# motor power voltage~%float32 servoPowerVol			# servo power voltage~%float32 refVol					# AD reference voltage~%float32 potVol					# potentialmeter power voltage , not used now~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StandardSensor)))
  "Returns full string definition for message of type 'StandardSensor"
  (cl:format cl:nil "# standard Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#make sure below sensors on your robot or not~%uint32[] humanSensorData		#human sensor~%uint32[] tiltingSensorData    #tilting sensor X Y~%uint32[] overHeatSensorData   # over heat sensor on the board~%uint32 thermoSensorData	    # enviroment temperature~%float32 boardPowerVol 			# control board voltage~%float32 motorPowerVol			# motor power voltage~%float32 servoPowerVol			# servo power voltage~%float32 refVol					# AD reference voltage~%float32 potVol					# potentialmeter power voltage , not used now~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StandardSensor>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_type))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'humanSensorData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tiltingSensorData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'overHeatSensorData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StandardSensor>))
  "Converts a ROS message object to a list"
  (cl:list 'StandardSensor
    (cl:cons ':header (header msg))
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':humanSensorData (humanSensorData msg))
    (cl:cons ':tiltingSensorData (tiltingSensorData msg))
    (cl:cons ':overHeatSensorData (overHeatSensorData msg))
    (cl:cons ':thermoSensorData (thermoSensorData msg))
    (cl:cons ':boardPowerVol (boardPowerVol msg))
    (cl:cons ':motorPowerVol (motorPowerVol msg))
    (cl:cons ':servoPowerVol (servoPowerVol msg))
    (cl:cons ':refVol (refVol msg))
    (cl:cons ':potVol (potVol msg))
))
