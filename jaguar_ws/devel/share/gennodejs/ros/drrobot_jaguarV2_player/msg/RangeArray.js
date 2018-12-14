// Auto-generated. Do not edit!

// (in-package drrobot_jaguarV2_player.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Range = require('./Range.js');

//-----------------------------------------------------------

class RangeArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ranges = null;
    }
    else {
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RangeArray
    // Serialize message field [ranges]
    // Serialize the length for message field [ranges]
    bufferOffset = _serializer.uint32(obj.ranges.length, buffer, bufferOffset);
    obj.ranges.forEach((val) => {
      bufferOffset = Range.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RangeArray
    let len;
    let data = new RangeArray(null);
    // Deserialize message field [ranges]
    // Deserialize array length for message field [ranges]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ranges = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ranges[i] = Range.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ranges.forEach((val) => {
      length += Range.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'drrobot_jaguarV2_player/RangeArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b72db098d4ed346ce682a1d5e70d327c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #this message will be used for IR ranger sensor and ultrasonic range sensor
    Range[] ranges
    
    ================================================================================
    MSG: drrobot_jaguarV2_player/Range
    # Single range reading from an active ranger that emits energy and reports
    # one range reading that is valid along an arc at the distance measured. 
    # This message is not appropriate for fixed-range obstacle detectors, 
    # such as the Sharp GP2D15. This message is also not appropriate for laser 
    # scanners. See the LaserScan message if you are working with a laser scanner.
    
    Header header    	# timestamp in the header is the time the ranger
    		 	# returned the distance reading
    
    # Radiation type enums
    # If you want a value added to this list, send an email to the ros-users list
    uint8 ULTRASOUND=0
    uint8 INFRARED=1
    
    uint8 radiation_type    # the type of radiation used by the sensor
    		 	# (sound, IR, etc) [enum]
    
    float32 field_of_view   # the size of the arc that the distance reading is
    		 	# valid for [rad]
    		 	# the object causing the range reading may have
    		 	# been anywhere within -field_of_view/2 and
    		 	# field_of_view/2 at the measured range. 
                            # 0 angle corresponds to the x-axis of the sensor.
    
    float32 min_range       # minimum range value [m]
    float32 max_range       # maximum range value [m]
    
    float32 range           # range data [m]
    		 	# (Note: values < range_min or > range_max
    		 	# should be discarded)
    
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
    const resolved = new RangeArray(null);
    if (msg.ranges !== undefined) {
      resolved.ranges = new Array(msg.ranges.length);
      for (let i = 0; i < resolved.ranges.length; ++i) {
        resolved.ranges[i] = Range.Resolve(msg.ranges[i]);
      }
    }
    else {
      resolved.ranges = []
    }

    return resolved;
    }
};

module.exports = RangeArray;
