// Auto-generated. Do not edit!

// (in-package drrobot_jaguarV2_player.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorInfo = require('./MotorInfo.js');

//-----------------------------------------------------------

class MotorInfoArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motorInfos = null;
    }
    else {
      if (initObj.hasOwnProperty('motorInfos')) {
        this.motorInfos = initObj.motorInfos
      }
      else {
        this.motorInfos = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorInfoArray
    // Serialize message field [motorInfos]
    // Serialize the length for message field [motorInfos]
    bufferOffset = _serializer.uint32(obj.motorInfos.length, buffer, bufferOffset);
    obj.motorInfos.forEach((val) => {
      bufferOffset = MotorInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorInfoArray
    let len;
    let data = new MotorInfoArray(null);
    // Deserialize message field [motorInfos]
    // Deserialize array length for message field [motorInfos]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motorInfos = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motorInfos[i] = MotorInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.motorInfos.forEach((val) => {
      length += MotorInfo.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/MotorInfoArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '64d8eb9826ec2f78779f54df29bcc931';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #this message will be used for motor sensor
    MotorInfo[] motorInfos
    
    ================================================================================
    MSG: drrobot_jaguarV2_player/MotorInfo
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
    const resolved = new MotorInfoArray(null);
    if (msg.motorInfos !== undefined) {
      resolved.motorInfos = new Array(msg.motorInfos.length);
      for (let i = 0; i < resolved.motorInfos.length; ++i) {
        resolved.motorInfos[i] = MotorInfo.Resolve(msg.motorInfos[i]);
      }
    }
    else {
      resolved.motorInfos = []
    }

    return resolved;
    }
};

module.exports = MotorInfoArray;
