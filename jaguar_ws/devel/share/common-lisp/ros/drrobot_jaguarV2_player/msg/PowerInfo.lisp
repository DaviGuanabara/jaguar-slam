; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude PowerInfo.msg.html

(cl:defclass <PowerInfo> (roslisp-msg-protocol:ros-message)
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
   (bat1_vol
    :reader bat1_vol
    :initarg :bat1_vol
    :type cl:float
    :initform 0.0)
   (bat2_vol
    :reader bat2_vol
    :initarg :bat2_vol
    :type cl:float
    :initform 0.0)
   (bat1_temp
    :reader bat1_temp
    :initarg :bat1_temp
    :type cl:float
    :initform 0.0)
   (bat2_temp
    :reader bat2_temp
    :initarg :bat2_temp
    :type cl:float
    :initform 0.0)
   (dcin_vol
    :reader dcin_vol
    :initarg :dcin_vol
    :type cl:float
    :initform 0.0)
   (ref_vol
    :reader ref_vol
    :initarg :ref_vol
    :type cl:float
    :initform 0.0)
   (power_status
    :reader power_status
    :initarg :power_status
    :type cl:fixnum
    :initform 0)
   (power_path
    :reader power_path
    :initarg :power_path
    :type cl:fixnum
    :initform 0)
   (charge_path
    :reader charge_path
    :initarg :charge_path
    :type cl:fixnum
    :initform 0))
)

(cl:defclass PowerInfo (<PowerInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<PowerInfo> is deprecated: use drrobot_jaguarV2_player-msg:PowerInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:header-val is deprecated.  Use drrobot_jaguarV2_player-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:robot_type-val is deprecated.  Use drrobot_jaguarV2_player-msg:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'bat1_vol-val :lambda-list '(m))
(cl:defmethod bat1_vol-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:bat1_vol-val is deprecated.  Use drrobot_jaguarV2_player-msg:bat1_vol instead.")
  (bat1_vol m))

(cl:ensure-generic-function 'bat2_vol-val :lambda-list '(m))
(cl:defmethod bat2_vol-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:bat2_vol-val is deprecated.  Use drrobot_jaguarV2_player-msg:bat2_vol instead.")
  (bat2_vol m))

(cl:ensure-generic-function 'bat1_temp-val :lambda-list '(m))
(cl:defmethod bat1_temp-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:bat1_temp-val is deprecated.  Use drrobot_jaguarV2_player-msg:bat1_temp instead.")
  (bat1_temp m))

(cl:ensure-generic-function 'bat2_temp-val :lambda-list '(m))
(cl:defmethod bat2_temp-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:bat2_temp-val is deprecated.  Use drrobot_jaguarV2_player-msg:bat2_temp instead.")
  (bat2_temp m))

(cl:ensure-generic-function 'dcin_vol-val :lambda-list '(m))
(cl:defmethod dcin_vol-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:dcin_vol-val is deprecated.  Use drrobot_jaguarV2_player-msg:dcin_vol instead.")
  (dcin_vol m))

(cl:ensure-generic-function 'ref_vol-val :lambda-list '(m))
(cl:defmethod ref_vol-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:ref_vol-val is deprecated.  Use drrobot_jaguarV2_player-msg:ref_vol instead.")
  (ref_vol m))

(cl:ensure-generic-function 'power_status-val :lambda-list '(m))
(cl:defmethod power_status-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:power_status-val is deprecated.  Use drrobot_jaguarV2_player-msg:power_status instead.")
  (power_status m))

(cl:ensure-generic-function 'power_path-val :lambda-list '(m))
(cl:defmethod power_path-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:power_path-val is deprecated.  Use drrobot_jaguarV2_player-msg:power_path instead.")
  (power_path m))

(cl:ensure-generic-function 'charge_path-val :lambda-list '(m))
(cl:defmethod charge_path-val ((m <PowerInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:charge_path-val is deprecated.  Use drrobot_jaguarV2_player-msg:charge_path instead.")
  (charge_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerInfo>) ostream)
  "Serializes a message object of type '<PowerInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat1_vol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat2_vol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat1_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bat2_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'dcin_vol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ref_vol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_path)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_path)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerInfo>) istream)
  "Deserializes a message object of type '<PowerInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat1_vol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat2_vol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat1_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bat2_temp) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'dcin_vol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_vol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_path)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'charge_path)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerInfo>)))
  "Returns string type for a message object of type '<PowerInfo>"
  "drrobot_jaguarV2_player/PowerInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerInfo)))
  "Returns string type for a message object of type 'PowerInfo"
  "drrobot_jaguarV2_player/PowerInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerInfo>)))
  "Returns md5sum for a message object of type '<PowerInfo>"
  "13107d877ae888e7541f720d1432d852")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerInfo)))
  "Returns md5sum for a message object of type 'PowerInfo"
  "13107d877ae888e7541f720d1432d852")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerInfo>)))
  "Returns full string definition for message of type '<PowerInfo>"
  (cl:format cl:nil "# battery /power information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#below message is only I90 series with Power control system on robot, otherwise reserved~%float32 bat1_vol	# battery1 voltage~%float32 bat2_vol	# battery2 voltage~%float32 bat1_temp	# battery1 temperature reading, now only is the AD value~%float32 bat2_temp	# battery2 temperature reading, now only is the AD value~%float32 dcin_vol	# dcin power voltage reading~%float32 ref_vol		# board AD reference voltage reading~%uint8 power_status	# power status, referee document to get detailed info for every bit~%uint8 power_path	# power selected path, please referee DrRobot document~%uint8 charge_path	# charger selected path, please referee DrRobot document~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerInfo)))
  "Returns full string definition for message of type 'PowerInfo"
  (cl:format cl:nil "# battery /power information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion~%~%#below message is only I90 series with Power control system on robot, otherwise reserved~%float32 bat1_vol	# battery1 voltage~%float32 bat2_vol	# battery2 voltage~%float32 bat1_temp	# battery1 temperature reading, now only is the AD value~%float32 bat2_temp	# battery2 temperature reading, now only is the AD value~%float32 dcin_vol	# dcin power voltage reading~%float32 ref_vol		# board AD reference voltage reading~%uint8 power_status	# power status, referee document to get detailed info for every bit~%uint8 power_path	# power selected path, please referee DrRobot document~%uint8 charge_path	# charger selected path, please referee DrRobot document~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_type))
     4
     4
     4
     4
     4
     4
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerInfo
    (cl:cons ':header (header msg))
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':bat1_vol (bat1_vol msg))
    (cl:cons ':bat2_vol (bat2_vol msg))
    (cl:cons ':bat1_temp (bat1_temp msg))
    (cl:cons ':bat2_temp (bat2_temp msg))
    (cl:cons ':dcin_vol (dcin_vol msg))
    (cl:cons ':ref_vol (ref_vol msg))
    (cl:cons ':power_status (power_status msg))
    (cl:cons ':power_path (power_path msg))
    (cl:cons ':charge_path (charge_path msg))
))
