// Auto-generated. Do not edit!

// (in-package drrobot_jaguarV2_player.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MotorInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_type = null;
      this.encoder_pos = null;
      this.encoder_vel = null;
      this.encoder_dir = null;
      this.motor_current = null;
      this.motor_pwm = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('robot_type')) {
        this.robot_type = initObj.robot_type
      }
      else {
        this.robot_type = '';
      }
      if (initObj.hasOwnProperty('encoder_pos')) {
        this.encoder_pos = initObj.encoder_pos
      }
      else {
        this.encoder_pos = 0;
      }
      if (initObj.hasOwnProperty('encoder_vel')) {
        this.encoder_vel = initObj.encoder_vel
      }
      else {
        this.encoder_vel = 0;
      }
      if (initObj.hasOwnProperty('encoder_dir')) {
        this.encoder_dir = initObj.encoder_dir
      }
      else {
        this.encoder_dir = 0;
      }
      if (initObj.hasOwnProperty('motor_current')) {
        this.motor_current = initObj.motor_current
      }
      else {
        this.motor_current = 0.0;
      }
      if (initObj.hasOwnProperty('motor_pwm')) {
        this.motor_pwm = initObj.motor_pwm
      }
      else {
        this.motor_pwm = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Serialize message field [encoder_pos]
    bufferOffset = _serializer.uint32(obj.encoder_pos, buffer, bufferOffset);
    // Serialize message field [encoder_vel]
    bufferOffset = _serializer.uint32(obj.encoder_vel, buffer, bufferOffset);
    // Serialize message field [encoder_dir]
    bufferOffset = _serializer.uint32(obj.encoder_dir, buffer, bufferOffset);
    // Serialize message field [motor_current]
    bufferOffset = _serializer.float32(obj.motor_current, buffer, bufferOffset);
    // Serialize message field [motor_pwm]
    bufferOffset = _serializer.uint32(obj.motor_pwm, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorInfo
    let len;
    let data = new MotorInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [encoder_pos]
    data.encoder_pos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [encoder_vel]
    data.encoder_vel = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [encoder_dir]
    data.encoder_dir = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [motor_current]
    data.motor_current = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor_pwm]
    data.motor_pwm = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_type.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/MotorInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e31f4f22948e8b2ee140c8cc701e042';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # motor sensor data message from DrRobot Robot.
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.robot_type !== undefined) {
      resolved.robot_type = msg.robot_type;
    }
    else {
      resolved.robot_type = ''
    }

    if (msg.encoder_pos !== undefined) {
      resolved.encoder_pos = msg.encoder_pos;
    }
    else {
      resolved.encoder_pos = 0
    }

    if (msg.encoder_vel !== undefined) {
      resolved.encoder_vel = msg.encoder_vel;
    }
    else {
      resolved.encoder_vel = 0
    }

    if (msg.encoder_dir !== undefined) {
      resolved.encoder_dir = msg.encoder_dir;
    }
    else {
      resolved.encoder_dir = 0
    }

    if (msg.motor_current !== undefined) {
      resolved.motor_current = msg.motor_current;
    }
    else {
      resolved.motor_current = 0.0
    }

    if (msg.motor_pwm !== undefined) {
      resolved.motor_pwm = msg.motor_pwm;
    }
    else {
      resolved.motor_pwm = 0
    }

    return resolved;
    }
};

module.exports = MotorInfo;
