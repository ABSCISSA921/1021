// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RadarInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.radar_info = null;
    }
    else {
      if (initObj.hasOwnProperty('radar_info')) {
        this.radar_info = initObj.radar_info
      }
      else {
        this.radar_info = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarInfo
    // Serialize message field [radar_info]
    bufferOffset = _serializer.uint8(obj.radar_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarInfo
    let len;
    let data = new RadarInfo(null);
    // Deserialize message field [radar_info]
    data.radar_info = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e33b2c279afbab996e05f5134608f519';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 radar_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarInfo(null);
    if (msg.radar_info !== undefined) {
      resolved.radar_info = msg.radar_info;
    }
    else {
      resolved.radar_info = 0
    }

    return resolved;
    }
};

module.exports = RadarInfo;
