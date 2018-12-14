; Auto-generated. Do not edit!


(cl:in-package drrobot_jaguarV2_player-msg)


;//! \htmlinclude IMUInfo.msg.html

(cl:defclass <IMUInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (accelRawData
    :reader accelRawData
    :initarg :accelRawData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (gyroRawData
    :reader gyroRawData
    :initarg :gyroRawData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (magRawData
    :reader magRawData
    :initarg :magRawData
    :type (cl:vector cl:integer)
   :initform (cl:make-array 3 :element-type 'cl:integer :initial-element 0))
   (accelReading
    :reader accelReading
    :initarg :accelReading
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0))
   (gyroReading
    :reader gyroReading
    :initarg :gyroReading
    :type (cl:vector cl:float)
   :initform (cl:make-array 3 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass IMUInfo (<IMUInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IMUInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IMUInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drrobot_jaguarV2_player-msg:<IMUInfo> is deprecated: use drrobot_jaguarV2_player-msg:IMUInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:header-val is deprecated.  Use drrobot_jaguarV2_player-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'accelRawData-val :lambda-list '(m))
(cl:defmethod accelRawData-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:accelRawData-val is deprecated.  Use drrobot_jaguarV2_player-msg:accelRawData instead.")
  (accelRawData m))

(cl:ensure-generic-function 'gyroRawData-val :lambda-list '(m))
(cl:defmethod gyroRawData-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:gyroRawData-val is deprecated.  Use drrobot_jaguarV2_player-msg:gyroRawData instead.")
  (gyroRawData m))

(cl:ensure-generic-function 'magRawData-val :lambda-list '(m))
(cl:defmethod magRawData-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:magRawData-val is deprecated.  Use drrobot_jaguarV2_player-msg:magRawData instead.")
  (magRawData m))

(cl:ensure-generic-function 'accelReading-val :lambda-list '(m))
(cl:defmethod accelReading-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:accelReading-val is deprecated.  Use drrobot_jaguarV2_player-msg:accelReading instead.")
  (accelReading m))

(cl:ensure-generic-function 'gyroReading-val :lambda-list '(m))
(cl:defmethod gyroReading-val ((m <IMUInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drrobot_jaguarV2_player-msg:gyroReading-val is deprecated.  Use drrobot_jaguarV2_player-msg:gyroReading instead.")
  (gyroReading m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IMUInfo>) ostream)
  "Serializes a message object of type '<IMUInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'accelRawData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'gyroRawData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) ele) ostream))
   (cl:slot-value msg 'magRawData))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'accelReading))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gyroReading))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IMUInfo>) istream)
  "Deserializes a message object of type '<IMUInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'accelRawData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'accelRawData)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'gyroRawData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gyroRawData)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'magRawData) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'magRawData)))
    (cl:dotimes (i 3)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'accelReading) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'accelReading)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'gyroReading) (cl:make-array 3))
  (cl:let ((vals (cl:slot-value msg 'gyroReading)))
    (cl:dotimes (i 3)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IMUInfo>)))
  "Returns string type for a message object of type '<IMUInfo>"
  "drrobot_jaguarV2_player/IMUInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IMUInfo)))
  "Returns string type for a message object of type 'IMUInfo"
  "drrobot_jaguarV2_player/IMUInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IMUInfo>)))
  "Returns md5sum for a message object of type '<IMUInfo>"
  "701e9d1318413bd1e8936e4896f37226")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IMUInfo)))
  "Returns md5sum for a message object of type 'IMUInfo"
  "701e9d1318413bd1e8936e4896f37226")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IMUInfo>)))
  "Returns full string definition for message of type '<IMUInfo>"
  (cl:format cl:nil "# IMU Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the data reading~%#make sure below sensors on your robot or not~%uint32[3] accelRawData 		#Raw accel sensor reading, 0-x, 1-y,z-2~%uint32[3] gyroRawData    	#Gyro raw data~%uint32[3] magRawData   		# magRaw~%float32[3] accelReading		# accel sensor reading  m/s2~%float32[3] gyroReading		# gyro sensor reading   rad/m~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IMUInfo)))
  "Returns full string definition for message of type 'IMUInfo"
  (cl:format cl:nil "# IMU Sensor information message from DrRobot Robot.~%~%Header header    	# timestamp in the header is the time the driver~%		 	# returned the data reading~%#make sure below sensors on your robot or not~%uint32[3] accelRawData 		#Raw accel sensor reading, 0-x, 1-y,z-2~%uint32[3] gyroRawData    	#Gyro raw data~%uint32[3] magRawData   		# magRaw~%float32[3] accelReading		# accel sensor reading  m/s2~%float32[3] gyroReading		# gyro sensor reading   rad/m~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IMUInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accelRawData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gyroRawData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'magRawData) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'accelReading) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gyroReading) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IMUInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'IMUInfo
    (cl:cons ':header (header msg))
    (cl:cons ':accelRawData (accelRawData msg))
    (cl:cons ':gyroRawData (gyroRawData msg))
    (cl:cons ':magRawData (magRawData msg))
    (cl:cons ':accelReading (accelReading msg))
    (cl:cons ':gyroReading (gyroReading msg))
))
