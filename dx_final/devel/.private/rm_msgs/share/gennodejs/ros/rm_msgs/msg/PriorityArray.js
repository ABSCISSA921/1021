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

class PriorityArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rank_arr = null;
    }
    else {
      if (initObj.hasOwnProperty('rank_arr')) {
        this.rank_arr = initObj.rank_arr
      }
      else {
        this.rank_arr = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PriorityArray
    // Serialize message field [rank_arr]
    bufferOffset = _arraySerializer.uint8(obj.rank_arr, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PriorityArray
    let len;
    let data = new PriorityArray(null);
    // Deserialize message field [rank_arr]
    data.rank_arr = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.rank_arr.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PriorityArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eb29adee789c861a1d9aa2167b08593';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HERO = 0
    uint8 ENGINEER = 1
    uint8 INFANTRY3 = 2
    uint8 INFANTRY4 = 3
    uint8 INFANTRY5 = 4
    uint8 OUTPOST = 5
    uint8 SENTRY = 6
    uint8 BASE = 7
    
    uint8[] rank_arr
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PriorityArray(null);
    if (msg.rank_arr !== undefined) {
      resolved.rank_arr = msg.rank_arr;
    }
    else {
      resolved.rank_arr = []
    }

    return resolved;
    }
};

// Constants for message
PriorityArray.Constants = {
  HERO: 0,
  ENGINEER: 1,
  INFANTRY3: 2,
  INFANTRY4: 3,
  INFANTRY5: 4,
  OUTPOST: 5,
  SENTRY: 6,
  BASE: 7,
}

module.exports = PriorityArray;
