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

class RadarToSentry {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_ID = null;
      this.position_x = null;
      this.position_y = null;
      this.engineer_marked = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_ID')) {
        this.robot_ID = initObj.robot_ID
      }
      else {
        this.robot_ID = 0;
      }
      if (initObj.hasOwnProperty('position_x')) {
        this.position_x = initObj.position_x
      }
      else {
        this.position_x = 0.0;
      }
      if (initObj.hasOwnProperty('position_y')) {
        this.position_y = initObj.position_y
      }
      else {
        this.position_y = 0.0;
      }
      if (initObj.hasOwnProperty('engineer_marked')) {
        this.engineer_marked = initObj.engineer_marked
      }
      else {
        this.engineer_marked = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RadarToSentry
    // Serialize message field [robot_ID]
    bufferOffset = _serializer.uint8(obj.robot_ID, buffer, bufferOffset);
    // Serialize message field [position_x]
    bufferOffset = _serializer.float32(obj.position_x, buffer, bufferOffset);
    // Serialize message field [position_y]
    bufferOffset = _serializer.float32(obj.position_y, buffer, bufferOffset);
    // Serialize message field [engineer_marked]
    bufferOffset = _serializer.bool(obj.engineer_marked, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarToSentry
    let len;
    let data = new RadarToSentry(null);
    // Deserialize message field [robot_ID]
    data.robot_ID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position_x]
    data.position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [position_y]
    data.position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [engineer_marked]
    data.engineer_marked = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarToSentry';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55598f76d4bb77ccd6286fc50e5b4aed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 robot_ID
    float32 position_x
    float32 position_y
    bool engineer_marked
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarToSentry(null);
    if (msg.robot_ID !== undefined) {
      resolved.robot_ID = msg.robot_ID;
    }
    else {
      resolved.robot_ID = 0
    }

    if (msg.position_x !== undefined) {
      resolved.position_x = msg.position_x;
    }
    else {
      resolved.position_x = 0.0
    }

    if (msg.position_y !== undefined) {
      resolved.position_y = msg.position_y;
    }
    else {
      resolved.position_y = 0.0
    }

    if (msg.engineer_marked !== undefined) {
      resolved.engineer_marked = msg.engineer_marked;
    }
    else {
      resolved.engineer_marked = false
    }

    return resolved;
    }
};

module.exports = RadarToSentry;
