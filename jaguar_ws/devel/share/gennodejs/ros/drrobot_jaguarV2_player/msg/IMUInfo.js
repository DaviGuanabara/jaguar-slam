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

class IMUInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.accelRawData = null;
      this.gyroRawData = null;
      this.magRawData = null;
      this.accelReading = null;
      this.gyroReading = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('accelRawData')) {
        this.accelRawData = initObj.accelRawData
      }
      else {
        this.accelRawData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gyroRawData')) {
        this.gyroRawData = initObj.gyroRawData
      }
      else {
        this.gyroRawData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('magRawData')) {
        this.magRawData = initObj.magRawData
      }
      else {
        this.magRawData = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('accelReading')) {
        this.accelReading = initObj.accelReading
      }
      else {
        this.accelReading = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('gyroReading')) {
        this.gyroReading = initObj.gyroReading
      }
      else {
        this.gyroReading = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMUInfo
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [accelRawData] has the right length
    if (obj.accelRawData.length !== 3) {
      throw new Error('Unable to serialize array field accelRawData - length must be 3')
    }
    // Serialize message field [accelRawData]
    bufferOffset = _arraySerializer.uint32(obj.accelRawData, buffer, bufferOffset, 3);
    // Check that the constant length array field [gyroRawData] has the right length
    if (obj.gyroRawData.length !== 3) {
      throw new Error('Unable to serialize array field gyroRawData - length must be 3')
    }
    // Serialize message field [gyroRawData]
    bufferOffset = _arraySerializer.uint32(obj.gyroRawData, buffer, bufferOffset, 3);
    // Check that the constant length array field [magRawData] has the right length
    if (obj.magRawData.length !== 3) {
      throw new Error('Unable to serialize array field magRawData - length must be 3')
    }
    // Serialize message field [magRawData]
    bufferOffset = _arraySerializer.uint32(obj.magRawData, buffer, bufferOffset, 3);
    // Check that the constant length array field [accelReading] has the right length
    if (obj.accelReading.length !== 3) {
      throw new Error('Unable to serialize array field accelReading - length must be 3')
    }
    // Serialize message field [accelReading]
    bufferOffset = _arraySerializer.float32(obj.accelReading, buffer, bufferOffset, 3);
    // Check that the constant length array field [gyroReading] has the right length
    if (obj.gyroReading.length !== 3) {
      throw new Error('Unable to serialize array field gyroReading - length must be 3')
    }
    // Serialize message field [gyroReading]
    bufferOffset = _arraySerializer.float32(obj.gyroReading, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMUInfo
    let len;
    let data = new IMUInfo(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [accelRawData]
    data.accelRawData = _arrayDeserializer.uint32(buffer, bufferOffset, 3)
    // Deserialize message field [gyroRawData]
    data.gyroRawData = _arrayDeserializer.uint32(buffer, bufferOffset, 3)
    // Deserialize message field [magRawData]
    data.magRawData = _arrayDeserializer.uint32(buffer, bufferOffset, 3)
    // Deserialize message field [accelReading]
    data.accelReading = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [gyroReading]
    data.gyroReading = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/IMUInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '701e9d1318413bd1e8936e4896f37226';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # IMU Sensor information message from DrRobot Robot.
    
    Header header    	# timestamp in the header is the time the driver
    		 	# returned the data reading
    #make sure below sensors on your robot or not
    uint32[3] accelRawData 		#Raw accel sensor reading, 0-x, 1-y,z-2
    uint32[3] gyroRawData    	#Gyro raw data
    uint32[3] magRawData   		# magRaw
    float32[3] accelReading		# accel sensor reading  m/s2
    float32[3] gyroReading		# gyro sensor reading   rad/m
    
    
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
    const resolved = new IMUInfo(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.accelRawData !== undefined) {
      resolved.accelRawData = msg.accelRawData;
    }
    else {
      resolved.accelRawData = new Array(3).fill(0)
    }

    if (msg.gyroRawData !== undefined) {
      resolved.gyroRawData = msg.gyroRawData;
    }
    else {
      resolved.gyroRawData = new Array(3).fill(0)
    }

    if (msg.magRawData !== undefined) {
      resolved.magRawData = msg.magRawData;
    }
    else {
      resolved.magRawData = new Array(3).fill(0)
    }

    if (msg.accelReading !== undefined) {
      resolved.accelReading = msg.accelReading;
    }
    else {
      resolved.accelReading = new Array(3).fill(0)
    }

    if (msg.gyroReading !== undefined) {
      resolved.gyroReading = msg.gyroReading;
    }
    else {
      resolved.gyroReading = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = IMUInfo;
