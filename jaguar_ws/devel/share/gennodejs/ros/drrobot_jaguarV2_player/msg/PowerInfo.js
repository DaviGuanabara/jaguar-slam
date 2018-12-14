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

class PowerInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_type = null;
      this.bat1_vol = null;
      this.bat2_vol = null;
      this.bat1_temp = null;
      this.bat2_temp = null;
      this.dcin_vol = null;
      this.ref_vol = null;
      this.power_status = null;
      this.power_path = null;
      this.charge_path = null;
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
      if (initObj.hasOwnProperty('bat1_vol')) {
        this.bat1_vol = initObj.bat1_vol
      }
      else {
        this.bat1_vol = 0.0;
      }
      if (initObj.hasOwnProperty('bat2_vol')) {
        this.bat2_vol = initObj.bat2_vol
      }
      else {
        this.bat2_vol = 0.0;
      }
      if (initObj.hasOwnProperty('bat1_temp')) {
        this.bat1_temp = initObj.bat1_temp
      }
      else {
        this.bat1_temp = 0.0;
      }
      if (initObj.hasOwnProperty('bat2_temp')) {
        this.bat2_temp = initObj.bat2_temp
      }
      else {
        this.bat2_temp = 0.0;
      }
      if (initObj.hasOwnProperty('dcin_vol')) {
        this.dcin_vol = initObj.dcin_vol
      }
      else {
        this.dcin_vol = 0.0;
      }
      if (initObj.hasOwnProperty('ref_vol')) {
        this.ref_vol = initObj.ref_vol
      }
      else {
        this.ref_vol = 0.0;
      }
      if (initObj.hasOwnProperty('power_status')) {
        this.power_status = initObj.power_status
      }
      else {
        this.power_status = 0;
      }
      if (initObj.hasOwnProperty('power_path')) {
        this.power_path = initObj.power_path
      }
      else {
        this.power_path = 0;
      }
      if (initObj.hasOwnProperty('charge_path')) {
        this.charge_path = initObj.charge_path
      }
      else {
        this.charge_path = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PowerInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Serialize message field [bat1_vol]
    bufferOffset = _serializer.float32(obj.bat1_vol, buffer, bufferOffset);
    // Serialize message field [bat2_vol]
    bufferOffset = _serializer.float32(obj.bat2_vol, buffer, bufferOffset);
    // Serialize message field [bat1_temp]
    bufferOffset = _serializer.float32(obj.bat1_temp, buffer, bufferOffset);
    // Serialize message field [bat2_temp]
    bufferOffset = _serializer.float32(obj.bat2_temp, buffer, bufferOffset);
    // Serialize message field [dcin_vol]
    bufferOffset = _serializer.float32(obj.dcin_vol, buffer, bufferOffset);
    // Serialize message field [ref_vol]
    bufferOffset = _serializer.float32(obj.ref_vol, buffer, bufferOffset);
    // Serialize message field [power_status]
    bufferOffset = _serializer.uint8(obj.power_status, buffer, bufferOffset);
    // Serialize message field [power_path]
    bufferOffset = _serializer.uint8(obj.power_path, buffer, bufferOffset);
    // Serialize message field [charge_path]
    bufferOffset = _serializer.uint8(obj.charge_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerInfo
    let len;
    let data = new PowerInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bat1_vol]
    data.bat1_vol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bat2_vol]
    data.bat2_vol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bat1_temp]
    data.bat1_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bat2_temp]
    data.bat2_temp = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dcin_vol]
    data.dcin_vol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [ref_vol]
    data.ref_vol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [power_status]
    data.power_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_path]
    data.power_path = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [charge_path]
    data.charge_path = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_type.length;
    return length + 31;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/PowerInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13107d877ae888e7541f720d1432d852';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # battery /power information message from DrRobot Robot.
    
    Header header    	# timestamp in the header is the time the driver
    		 	# returned the battery/power reading
    string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion
    
    #below message is only I90 series with Power control system on robot, otherwise reserved
    float32 bat1_vol	# battery1 voltage
    float32 bat2_vol	# battery2 voltage
    float32 bat1_temp	# battery1 temperature reading, now only is the AD value
    float32 bat2_temp	# battery2 temperature reading, now only is the AD value
    float32 dcin_vol	# dcin power voltage reading
    float32 ref_vol		# board AD reference voltage reading
    uint8 power_status	# power status, referee document to get detailed info for every bit
    uint8 power_path	# power selected path, please referee DrRobot document
    uint8 charge_path	# charger selected path, please referee DrRobot document
    
    
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
    const resolved = new PowerInfo(null);
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

    if (msg.bat1_vol !== undefined) {
      resolved.bat1_vol = msg.bat1_vol;
    }
    else {
      resolved.bat1_vol = 0.0
    }

    if (msg.bat2_vol !== undefined) {
      resolved.bat2_vol = msg.bat2_vol;
    }
    else {
      resolved.bat2_vol = 0.0
    }

    if (msg.bat1_temp !== undefined) {
      resolved.bat1_temp = msg.bat1_temp;
    }
    else {
      resolved.bat1_temp = 0.0
    }

    if (msg.bat2_temp !== undefined) {
      resolved.bat2_temp = msg.bat2_temp;
    }
    else {
      resolved.bat2_temp = 0.0
    }

    if (msg.dcin_vol !== undefined) {
      resolved.dcin_vol = msg.dcin_vol;
    }
    else {
      resolved.dcin_vol = 0.0
    }

    if (msg.ref_vol !== undefined) {
      resolved.ref_vol = msg.ref_vol;
    }
    else {
      resolved.ref_vol = 0.0
    }

    if (msg.power_status !== undefined) {
      resolved.power_status = msg.power_status;
    }
    else {
      resolved.power_status = 0
    }

    if (msg.power_path !== undefined) {
      resolved.power_path = msg.power_path;
    }
    else {
      resolved.power_path = 0
    }

    if (msg.charge_path !== undefined) {
      resolved.charge_path = msg.charge_path;
    }
    else {
      resolved.charge_path = 0
    }

    return resolved;
    }
};

module.exports = PowerInfo;
