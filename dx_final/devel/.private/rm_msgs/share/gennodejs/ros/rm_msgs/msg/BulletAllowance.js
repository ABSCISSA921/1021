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

class BulletAllowance {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bullet_allowance_num_17_mm = null;
      this.bullet_allowance_num_42_mm = null;
      this.coin_remaining_num = null;
      this.projectile_allowance_fortress = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('bullet_allowance_num_17_mm')) {
        this.bullet_allowance_num_17_mm = initObj.bullet_allowance_num_17_mm
      }
      else {
        this.bullet_allowance_num_17_mm = 0;
      }
      if (initObj.hasOwnProperty('bullet_allowance_num_42_mm')) {
        this.bullet_allowance_num_42_mm = initObj.bullet_allowance_num_42_mm
      }
      else {
        this.bullet_allowance_num_42_mm = 0;
      }
      if (initObj.hasOwnProperty('coin_remaining_num')) {
        this.coin_remaining_num = initObj.coin_remaining_num
      }
      else {
        this.coin_remaining_num = 0;
      }
      if (initObj.hasOwnProperty('projectile_allowance_fortress')) {
        this.projectile_allowance_fortress = initObj.projectile_allowance_fortress
      }
      else {
        this.projectile_allowance_fortress = 0;
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
    // Serializes a message object of type BulletAllowance
    // Serialize message field [bullet_allowance_num_17_mm]
    bufferOffset = _serializer.uint16(obj.bullet_allowance_num_17_mm, buffer, bufferOffset);
    // Serialize message field [bullet_allowance_num_42_mm]
    bufferOffset = _serializer.uint16(obj.bullet_allowance_num_42_mm, buffer, bufferOffset);
    // Serialize message field [coin_remaining_num]
    bufferOffset = _serializer.uint16(obj.coin_remaining_num, buffer, bufferOffset);
    // Serialize message field [projectile_allowance_fortress]
    bufferOffset = _serializer.uint16(obj.projectile_allowance_fortress, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BulletAllowance
    let len;
    let data = new BulletAllowance(null);
    // Deserialize message field [bullet_allowance_num_17_mm]
    data.bullet_allowance_num_17_mm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [bullet_allowance_num_42_mm]
    data.bullet_allowance_num_42_mm = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [coin_remaining_num]
    data.coin_remaining_num = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [projectile_allowance_fortress]
    data.projectile_allowance_fortress = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/BulletAllowance';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd37e99d879c3fd6d3eb6ff551cb04737';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 bullet_allowance_num_17_mm
    uint16 bullet_allowance_num_42_mm
    uint16 coin_remaining_num
    uint16 projectile_allowance_fortress
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BulletAllowance(null);
    if (msg.bullet_allowance_num_17_mm !== undefined) {
      resolved.bullet_allowance_num_17_mm = msg.bullet_allowance_num_17_mm;
    }
    else {
      resolved.bullet_allowance_num_17_mm = 0
    }

    if (msg.bullet_allowance_num_42_mm !== undefined) {
      resolved.bullet_allowance_num_42_mm = msg.bullet_allowance_num_42_mm;
    }
    else {
      resolved.bullet_allowance_num_42_mm = 0
    }

    if (msg.coin_remaining_num !== undefined) {
      resolved.coin_remaining_num = msg.coin_remaining_num;
    }
    else {
      resolved.coin_remaining_num = 0
    }

    if (msg.projectile_allowance_fortress !== undefined) {
      resolved.projectile_allowance_fortress = msg.projectile_allowance_fortress;
    }
    else {
      resolved.projectile_allowance_fortress = 0
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

module.exports = BulletAllowance;
