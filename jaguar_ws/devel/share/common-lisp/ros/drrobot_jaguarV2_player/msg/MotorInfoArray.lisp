; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude MotorInfoArray.msg.html

(cl:defclass <MotorInfoArray> (roslisp-msg-protocol:ros-message)
  ((motorInfos
    :reader motorInfos
    :initarg :motorInfos
    :type (cl:vector drrobot_jaguarV2_player-msg:MotorInfo)
   :initform (cl:make-array 0 :element-type 'drrobot_jaguarV2_player-msg:MotorInfo :initial-element (cl:make-instance 'drrobot_jaguarV2_player-msg:MotorInfo))))
)

(cl:defclass MotorInfoArray (<MotorInfoArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorInfoArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorInfoArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<MotorInfoArray> is deprecated: use drrobot_jaguarV2_player-msg:MotorInfoArray instead.")))

(cl:ensure-generic-function 'motorInfos-val :lambda-list '(m))
(cl:defmethod motorInfos-val ((m <MotorInfoArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:motorInfos-val is deprecated.  Use drrobot_jaguarV2_player-msg:motorInfos instead.")
  (motorInfos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorInfoArray>) ostream)
  "Serializes a message object of type '<MotorInfoArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'motorInfos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'motorInfos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorInfoArray>) istream)
  "Deserializes a message object of type '<MotorInfoArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'motorInfos) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'motorInfos)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'drrobot_jaguarV2_player-msg:MotorInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorInfoArray>)))
  "Returns string type for a message object of type '<MotorInfoArray>"
  "drrobot_jaguarV2_player/MotorInfoArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorInfoArray)))
  "Returns string type for a message object of type 'MotorInfoArray"
  "drrobot_jaguarV2_player/MotorInfoArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorInfoArray>)))
  "Returns md5sum for a message object of type '<MotorInfoArray>"
  "64d8eb9826ec2f78779f54df29bcc931")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorInfoArray)))
  "Returns md5sum for a message object of type 'MotorInfoArray"
  "64d8eb9826ec2f78779f54df29bcc931")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorInfoArray>)))
  "Returns full string definition for message of type '<MotorInfoArray>"
  (cl:format cl:nil "#this message will be used for motor sensor~%MotorInfo[] motorInfos~%~%================================================================================~%MSG: drrobot_jaguarV2_player/MotorInfo~%# motor sensor data message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Jaguar Power/Motion~%~%uint32 encoder_pos	# encoder positon count~%uint32 encoder_vel	# encoder velocity value~%uint32 encoder_dir	# encoder direction~%~%float32 motor_current	# motor current~%uint32 motor_pwm	# output PWM value, only for Jaguar series robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorInfoArray)))
  "Returns full string definition for message of type 'MotorInfoArray"
  (cl:format cl:nil "#this message will be used for motor sensor~%MotorInfo[] motorInfos~%~%================================================================================~%MSG: drrobot_jaguarV2_player/MotorInfo~%# motor sensor data message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the battery/power reading~%string robot_type	# robot type, I90 series, sentinel3 or Jaguar Power/Motion~%~%uint32 encoder_pos	# encoder positon count~%uint32 encoder_vel	# encoder velocity value~%uint32 encoder_dir	# encoder direction~%~%float32 motor_current	# motor current~%uint32 motor_pwm	# output PWM value, only for Jaguar series robot~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorInfoArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'motorInfos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorInfoArray>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorInfoArray
    (cl:cons ':motorInfos (motorInfos msg))
))
