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

class ShootData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bullet_type = null;
      this.shooter_id = null;
      this.bullet_freq = null;
      this.bullet_speed = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('bullet_type')) {
        this.bullet_type = initObj.bullet_type
      }
      else {
        this.bullet_type = 0;
      }
      if (initObj.hasOwnProperty('shooter_id')) {
        this.shooter_id = initObj.shooter_id
      }
      else {
        this.shooter_id = 0;
      }
      if (initObj.hasOwnProperty('bullet_freq')) {
        this.bullet_freq = initObj.bullet_freq
      }
      else {
        this.bullet_freq = 0;
      }
      if (initObj.hasOwnProperty('bullet_speed')) {
        this.bullet_speed = initObj.bullet_speed
      }
      else {
        this.bullet_speed = 0.0;
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
    // Serializes a message object of type ShootData
    // Serialize message field [bullet_type]
    bufferOffset = _serializer.uint8(obj.bullet_type, buffer, bufferOffset);
    // Serialize message field [shooter_id]
    bufferOffset = _serializer.uint8(obj.shooter_id, buffer, bufferOffset);
    // Serialize message field [bullet_freq]
    bufferOffset = _serializer.uint8(obj.bullet_freq, buffer, bufferOffset);
    // Serialize message field [bullet_speed]
    bufferOffset = _serializer.float32(obj.bullet_speed, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShootData
    let len;
    let data = new ShootData(null);
    // Deserialize message field [bullet_type]
    data.bullet_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [shooter_id]
    data.shooter_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bullet_freq]
    data.bullet_freq = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [bullet_speed]
    data.bullet_speed = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 15;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ShootData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '974d24ddaca58a0fd7ae13376c5c9d3c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 bullet_type
    uint8 shooter_id
    uint8 bullet_freq
    float32 bullet_speed
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShootData(null);
    if (msg.bullet_type !== undefined) {
      resolved.bullet_type = msg.bullet_type;
    }
    else {
      resolved.bullet_type = 0
    }

    if (msg.shooter_id !== undefined) {
      resolved.shooter_id = msg.shooter_id;
    }
    else {
      resolved.shooter_id = 0
    }

    if (msg.bullet_freq !== undefined) {
      resolved.bullet_freq = msg.bullet_freq;
    }
    else {
      resolved.bullet_freq = 0
    }

    if (msg.bullet_speed !== undefined) {
      resolved.bullet_speed = msg.bullet_speed;
    }
    else {
      resolved.bullet_speed = 0.0
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

module.exports = ShootData;
