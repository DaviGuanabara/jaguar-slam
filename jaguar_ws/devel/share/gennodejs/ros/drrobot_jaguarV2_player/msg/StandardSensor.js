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

class StandardSensor {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.robot_type = null;
      this.humanSensorData = null;
      this.tiltingSensorData = null;
      this.overHeatSensorData = null;
      this.thermoSensorData = null;
      this.boardPowerVol = null;
      this.motorPowerVol = null;
      this.servoPowerVol = null;
      this.refVol = null;
      this.potVol = null;
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
      if (initObj.hasOwnProperty('humanSensorData')) {
        this.humanSensorData = initObj.humanSensorData
      }
      else {
        this.humanSensorData = [];
      }
      if (initObj.hasOwnProperty('tiltingSensorData')) {
        this.tiltingSensorData = initObj.tiltingSensorData
      }
      else {
        this.tiltingSensorData = [];
      }
      if (initObj.hasOwnProperty('overHeatSensorData')) {
        this.overHeatSensorData = initObj.overHeatSensorData
      }
      else {
        this.overHeatSensorData = [];
      }
      if (initObj.hasOwnProperty('thermoSensorData')) {
        this.thermoSensorData = initObj.thermoSensorData
      }
      else {
        this.thermoSensorData = 0;
      }
      if (initObj.hasOwnProperty('boardPowerVol')) {
        this.boardPowerVol = initObj.boardPowerVol
      }
      else {
        this.boardPowerVol = 0.0;
      }
      if (initObj.hasOwnProperty('motorPowerVol')) {
        this.motorPowerVol = initObj.motorPowerVol
      }
      else {
        this.motorPowerVol = 0.0;
      }
      if (initObj.hasOwnProperty('servoPowerVol')) {
        this.servoPowerVol = initObj.servoPowerVol
      }
      else {
        this.servoPowerVol = 0.0;
      }
      if (initObj.hasOwnProperty('refVol')) {
        this.refVol = initObj.refVol
      }
      else {
        this.refVol = 0.0;
      }
      if (initObj.hasOwnProperty('potVol')) {
        this.potVol = initObj.potVol
      }
      else {
        this.potVol = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StandardSensor
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [robot_type]
    bufferOffset = _serializer.string(obj.robot_type, buffer, bufferOffset);
    // Serialize message field [humanSensorData]
    bufferOffset = _arraySerializer.uint32(obj.humanSensorData, buffer, bufferOffset, null);
    // Serialize message field [tiltingSensorData]
    bufferOffset = _arraySerializer.uint32(obj.tiltingSensorData, buffer, bufferOffset, null);
    // Serialize message field [overHeatSensorData]
    bufferOffset = _arraySerializer.uint32(obj.overHeatSensorData, buffer, bufferOffset, null);
    // Serialize message field [thermoSensorData]
    bufferOffset = _serializer.uint32(obj.thermoSensorData, buffer, bufferOffset);
    // Serialize message field [boardPowerVol]
    bufferOffset = _serializer.float32(obj.boardPowerVol, buffer, bufferOffset);
    // Serialize message field [motorPowerVol]
    bufferOffset = _serializer.float32(obj.motorPowerVol, buffer, bufferOffset);
    // Serialize message field [servoPowerVol]
    bufferOffset = _serializer.float32(obj.servoPowerVol, buffer, bufferOffset);
    // Serialize message field [refVol]
    bufferOffset = _serializer.float32(obj.refVol, buffer, bufferOffset);
    // Serialize message field [potVol]
    bufferOffset = _serializer.float32(obj.potVol, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StandardSensor
    let len;
    let data = new StandardSensor(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [robot_type]
    data.robot_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [humanSensorData]
    data.humanSensorData = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [tiltingSensorData]
    data.tiltingSensorData = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [overHeatSensorData]
    data.overHeatSensorData = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [thermoSensorData]
    data.thermoSensorData = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [boardPowerVol]
    data.boardPowerVol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motorPowerVol]
    data.motorPowerVol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [servoPowerVol]
    data.servoPowerVol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [refVol]
    data.refVol = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [potVol]
    data.potVol = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.robot_type.length;
    length += 4 * object.humanSensorData.length;
    length += 4 * object.tiltingSensorData.length;
    length += 4 * object.overHeatSensorData.length;
    return length + 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/StandardSensor';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e867c61af4cf779989629edb31d6fbd8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # standard Sensor information message from DrRobot Robot.
    
    Header header    	# timestamp in the header is the time the driver
    		 	# returned the battery/power reading
    string robot_type	# robot type, I90 series, sentinel3 or Hawk/H20 Power/Motion
    
    #make sure below sensors on your robot or not
    uint32[] humanSensorData		#human sensor
    uint32[] tiltingSensorData    #tilting sensor X Y
    uint32[] overHeatSensorData   # over heat sensor on the board
    uint32 thermoSensorData	    # enviroment temperature
    float32 boardPowerVol 			# control board voltage
    float32 motorPowerVol			# motor power voltage
    float32 servoPowerVol			# servo power voltage
    float32 refVol					# AD reference voltage
    float32 potVol					# potentialmeter power voltage , not used now
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
    const resolved = new StandardSensor(null);
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

    if (msg.humanSensorData !== undefined) {
      resolved.humanSensorData = msg.humanSensorData;
    }
    else {
      resolved.humanSensorData = []
    }

    if (msg.tiltingSensorData !== undefined) {
      resolved.tiltingSensorData = msg.tiltingSensorData;
    }
    else {
      resolved.tiltingSensorData = []
    }

    if (msg.overHeatSensorData !== undefined) {
      resolved.overHeatSensorData = msg.overHeatSensorData;
    }
    else {
      resolved.overHeatSensorData = []
    }

    if (msg.thermoSensorData !== undefined) {
      resolved.thermoSensorData = msg.thermoSensorData;
    }
    else {
      resolved.thermoSensorData = 0
    }

    if (msg.boardPowerVol !== undefined) {
      resolved.boardPowerVol = msg.boardPowerVol;
    }
    else {
      resolved.boardPowerVol = 0.0
    }

    if (msg.motorPowerVol !== undefined) {
      resolved.motorPowerVol = msg.motorPowerVol;
    }
    else {
      resolved.motorPowerVol = 0.0
    }

    if (msg.servoPowerVol !== undefined) {
      resolved.servoPowerVol = msg.servoPowerVol;
    }
    else {
      resolved.servoPowerVol = 0.0
    }

    if (msg.refVol !== undefined) {
      resolved.refVol = msg.refVol;
    }
    else {
      resolved.refVol = 0.0
    }

    if (msg.potVol !== undefined) {
      resolved.potVol = msg.potVol;
    }
    else {
      resolved.potVol = 0.0
    }

    return resolved;
    }
};

module.exports = StandardSensor;
