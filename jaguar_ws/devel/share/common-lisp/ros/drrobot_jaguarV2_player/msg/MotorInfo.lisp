; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude MotorInfo.msg.html

(cl:defclass <MotorInfo> (roslisp-msg-protocol:ros-message)
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
   (encoder_pos
    :reader encoder_pos
    :initarg :encoder_pos
    :type cl:integer
    :initform 0)
   (encoder_vel
    :reader encoder_vel
    :initarg :encoder_vel
    :type cl:integer
    :initform 0)
   (encoder_dir
    :reader encoder_dir
    :initarg :encoder_dir
    :type cl:integer
    :initform 0)
   (motor_current
    :reader motor_current
    :initarg :motor_current
    :type cl:float
    :initform 0.0)
   (motor_pwm
    :reader motor_pwm
    :initarg :motor_pwm
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorInfo (<MotorInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<MotorInfo> is deprecated: use drrobot_jaguarV2_player-msg:MotorInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:header-val is deprecated.  Use drrobot_jaguarV2_player-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'robot_type-val :lambda-list '(m))
(cl:defmethod robot_type-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:robot_type-val is deprecated.  Use drrobot_jaguarV2_player-msg:robot_type instead.")
  (robot_type m))

(cl:ensure-generic-function 'encoder_pos-val :lambda-list '(m))
(cl:defmethod encoder_pos-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:encoder_pos-val is deprecated.  Use drrobot_jaguarV2_player-msg:encoder_pos instead.")
  (encoder_pos m))

(cl:ensure-generic-function 'encoder_vel-val :lambda-list '(m))
(cl:defmethod encoder_vel-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:encoder_vel-val is deprecated.  Use drrobot_jaguarV2_player-msg:encoder_vel instead.")
  (encoder_vel m))

(cl:ensure-generic-function 'encoder_dir-val :lambda-list '(m))
(cl:defmethod encoder_dir-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:encoder_dir-val is deprecated.  Use drrobot_jaguarV2_player-msg:encoder_dir instead.")
  (encoder_dir m))

(cl:ensure-generic-function 'motor_current-val :lambda-list '(m))
(cl:defmethod motor_current-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:motor_current-val is deprecated.  Use drrobot_jaguarV2_player-msg:motor_current instead.")
  (motor_current m))

(cl:ensure-generic-function 'motor_pwm-val :lambda-list '(m))
(cl:defmethod motor_pwm-val ((m <MotorInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:motor_pwm-val is deprecated.  Use drrobot_jaguarV2_player-msg:motor_pwm instead.")
  (motor_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorInfo>) ostream)
  "Serializes a message object of type '<MotorInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'robot_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'robot_type))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_pos)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_vel)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_dir)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_dir)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_current))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motor_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motor_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motor_pwm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorInfo>) istream)
  "Deserializes a message object of type '<MotorInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'robot_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'robot_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_pos)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_vel)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'encoder_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'encoder_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'encoder_dir)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'encoder_dir)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_current) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'motor_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'motor_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'motor_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'motor_pwm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorInfo>)))
  "Returns string type for a message object of type '<MotorInfo>"
  "drrobot_jaguarV2_player/MotorInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorInfo)))
  "Returns string type for a message object of type 'MotorInfo"
  "drrobot_jaguarV2_player/MotorInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorInfo>)))
  "Returns md5sum for a message object of type '<MotorInfo>"
  "9e31f4f22948e8b2ee140c8cc701e042")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorInfo)))
  "Returns md5sum for a message object of type 'MotorInfo"
  "9e31f4f22948e8b2ee140c8cc701e042")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorInfo>)))
  "Returns full string definition for message of type '<MotorInfo>"
  (cl:format cl:nil "# motor sensor data message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Jaguar Power/Motion~%~%uint32 encoder_pos	# encoder positon count~%uint32 encoder_vel	# encoder velocity value~%uint32 encoder_dir	# encoder direction~%~%float32 motor_current	# motor current~%uint32 motor_pwm	# output PWM value, only for Jaguar series robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorInfo)))
  "Returns full string definition for message of type 'MotorInfo"
  (cl:format cl:nil "# motor sensor data message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Jaguar Power/Motion~%~%uint32 encoder_pos	# encoder positon count~%uint32 encoder_vel	# encoder velocity value~%uint32 encoder_dir	# encoder direction~%~%float32 motor_current	# motor current~%uint32 motor_pwm	# output PWM value, only for Jaguar series robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'robot_type))
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorInfo
    (cl:cons ':header (header msg))
    (cl:cons ':robot_type (robot_type msg))
    (cl:cons ':encoder_pos (encoder_pos msg))
    (cl:cons ':encoder_vel (encoder_vel msg))
    (cl:cons ':encoder_dir (encoder_dir msg))
    (cl:cons ':motor_current (motor_current msg))
    (cl:cons ':motor_pwm (motor_pwm msg))
))
