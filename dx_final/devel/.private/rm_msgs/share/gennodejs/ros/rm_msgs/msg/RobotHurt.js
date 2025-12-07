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

class RobotHurt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.armor_id = null;
      this.hurt_type = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('armor_id')) {
        this.armor_id = initObj.armor_id
      }
      else {
        this.armor_id = 0;
      }
      if (initObj.hasOwnProperty('hurt_type')) {
        this.hurt_type = initObj.hurt_type
      }
      else {
        this.hurt_type = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotHurt
    // Serialize message field [armor_id]
    bufferOffset = _serializer.uint8(obj.armor_id, buffer, bufferOffset);
    // Serialize message field [hurt_type]
    bufferOffset = _serializer.uint8(obj.hurt_type, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotHurt
    let len;
    let data = new RobotHurt(null);
    // Deserialize message field [armor_id]
    data.armor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hurt_type]
    data.hurt_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 10;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RobotHurt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '603a676d8da8f575fe2daaa14c7ac198';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 armor_id
    uint8 hurt_type
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotHurt(null);
    if (msg.armor_id !== undefined) {
      resolved.armor_id = msg.armor_id;
    }
    else {
      resolved.armor_id = 0
    }

    if (msg.hurt_type !== undefined) {
      resolved.hurt_type = msg.hurt_type;
    }
    else {
      resolved.hurt_type = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = RobotHurt;
