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

class CustomSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_type = null;
      this.customADData = null;
      this.customIO = null;
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
      if (initObj.hasOwnProperty('customADData')) {
        this.customADData = initObj.customADData
      }
      else {
        this.customADData = [];
      }
      if (initObj.hasOwnProperty('customIO')) {
        this.customIO = initObj.customIO
      }
      else {
        this.customIO = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Serialize message field [customADData]
    bufferOffset = _arraySerializer.uint32(obj.customADData, buffer, bufferOffset, null);
    // Serialize message field [customIO]
    bufferOffset = _serializer.uint8(obj.customIO, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomSensor
    let len;
    let data = new CustomSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [customADData]
    data.customADData = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [customIO]
    data.customIO = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_type.length;
    length += 4 * object.customADData.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/CustomSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '99688dde61b19bf7f23d2791779ffdd3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # custom Sensor information message from DrRobot Robot.
    
    Header header    	# timestamp in the header is the time the driver
    		 	# returned the battery/power reading
    string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion
    
    #make sure what sensor is on your expanded sensor port
    uint32[] customADData		# custom AD channel 8 channel on the board, which channel is avaiable please contact Dr Robot
    uint8 customIO    #expanded IO
    
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
    const resolved = new CustomSensor(null);
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

    if (msg.customADData !== undefined) {
      resolved.customADData = msg.customADData;
    }
    else {
      resolved.customADData = []
    }

    if (msg.customIO !== undefined) {
      resolved.customIO = msg.customIO;
    }
    else {
      resolved.customIO = 0
    }

    return resolved;
    }
};

module.exports = CustomSensor;
