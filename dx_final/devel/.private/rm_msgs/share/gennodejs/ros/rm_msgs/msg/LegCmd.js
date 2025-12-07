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

class LegCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jump = null;
      this.leg_length = null;
    }
    else {
      if (initObj.hasOwnProperty('jump')) {
        this.jump = initObj.jump
      }
      else {
        this.jump = false;
      }
      if (initObj.hasOwnProperty('leg_length')) {
        this.leg_length = initObj.leg_length
      }
      else {
        this.leg_length = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegCmd
    // Serialize message field [jump]
    bufferOffset = _serializer.bool(obj.jump, buffer, bufferOffset);
    // Serialize message field [leg_length]
    bufferOffset = _serializer.float64(obj.leg_length, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegCmd
    let len;
    let data = new LegCmd(null);
    // Deserialize message field [jump]
    data.jump = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [leg_length]
    data.leg_length = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/LegCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b88c1d23c403ffa8f3ded0d5c3447e4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool jump
    float64 leg_length
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LegCmd(null);
    if (msg.jump !== undefined) {
      resolved.jump = msg.jump;
    }
    else {
      resolved.jump = false
    }

    if (msg.leg_length !== undefined) {
      resolved.leg_length = msg.leg_length;
    }
    else {
      resolved.leg_length = 0.0
    }

    return resolved;
    }
};

module.exports = LegCmd;
