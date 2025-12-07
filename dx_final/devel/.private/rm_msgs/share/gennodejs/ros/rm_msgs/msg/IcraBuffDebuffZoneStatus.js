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

class IcraBuffDebuffZoneStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.f_1_zone_status = null;
      this.f_1_zone_buff_debuff_status = null;
      this.f_2_zone_status = null;
      this.f_2_zone_buff_debuff_status = null;
      this.f_3_zone_status = null;
      this.f_3_zone_buff_debuff_status = null;
      this.f_4_zone_status = null;
      this.f_4_zone_buff_debuff_status = null;
      this.f_5_zone_status = null;
      this.f_5_zone_buff_debuff_status = null;
      this.f_6_zone_status = null;
      this.f_6_zone_buff_debuff_status = null;
      this.red_1_bullet_left = null;
      this.red_2_bullet_left = null;
      this.blue_1_bullet_left = null;
      this.blue_2_bullet_left = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('f_1_zone_status')) {
        this.f_1_zone_status = initObj.f_1_zone_status
      }
      else {
        this.f_1_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_1_zone_buff_debuff_status')) {
        this.f_1_zone_buff_debuff_status = initObj.f_1_zone_buff_debuff_status
      }
      else {
        this.f_1_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('f_2_zone_status')) {
        this.f_2_zone_status = initObj.f_2_zone_status
      }
      else {
        this.f_2_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_2_zone_buff_debuff_status')) {
        this.f_2_zone_buff_debuff_status = initObj.f_2_zone_buff_debuff_status
      }
      else {
        this.f_2_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('f_3_zone_status')) {
        this.f_3_zone_status = initObj.f_3_zone_status
      }
      else {
        this.f_3_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_3_zone_buff_debuff_status')) {
        this.f_3_zone_buff_debuff_status = initObj.f_3_zone_buff_debuff_status
      }
      else {
        this.f_3_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('f_4_zone_status')) {
        this.f_4_zone_status = initObj.f_4_zone_status
      }
      else {
        this.f_4_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_4_zone_buff_debuff_status')) {
        this.f_4_zone_buff_debuff_status = initObj.f_4_zone_buff_debuff_status
      }
      else {
        this.f_4_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('f_5_zone_status')) {
        this.f_5_zone_status = initObj.f_5_zone_status
      }
      else {
        this.f_5_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_5_zone_buff_debuff_status')) {
        this.f_5_zone_buff_debuff_status = initObj.f_5_zone_buff_debuff_status
      }
      else {
        this.f_5_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('f_6_zone_status')) {
        this.f_6_zone_status = initObj.f_6_zone_status
      }
      else {
        this.f_6_zone_status = 0;
      }
      if (initObj.hasOwnProperty('f_6_zone_buff_debuff_status')) {
        this.f_6_zone_buff_debuff_status = initObj.f_6_zone_buff_debuff_status
      }
      else {
        this.f_6_zone_buff_debuff_status = 0;
      }
      if (initObj.hasOwnProperty('red_1_bullet_left')) {
        this.red_1_bullet_left = initObj.red_1_bullet_left
      }
      else {
        this.red_1_bullet_left = 0;
      }
      if (initObj.hasOwnProperty('red_2_bullet_left')) {
        this.red_2_bullet_left = initObj.red_2_bullet_left
      }
      else {
        this.red_2_bullet_left = 0;
      }
      if (initObj.hasOwnProperty('blue_1_bullet_left')) {
        this.blue_1_bullet_left = initObj.blue_1_bullet_left
      }
      else {
        this.blue_1_bullet_left = 0;
      }
      if (initObj.hasOwnProperty('blue_2_bullet_left')) {
        this.blue_2_bullet_left = initObj.blue_2_bullet_left
      }
      else {
        this.blue_2_bullet_left = 0;
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
    // Serializes a message object of type IcraBuffDebuffZoneStatus
    // Serialize message field [f_1_zone_status]
    bufferOffset = _serializer.uint8(obj.f_1_zone_status, buffer, bufferOffset);
    // Serialize message field [f_1_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_1_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [f_2_zone_status]
    bufferOffset = _serializer.uint8(obj.f_2_zone_status, buffer, bufferOffset);
    // Serialize message field [f_2_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_2_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [f_3_zone_status]
    bufferOffset = _serializer.uint8(obj.f_3_zone_status, buffer, bufferOffset);
    // Serialize message field [f_3_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_3_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [f_4_zone_status]
    bufferOffset = _serializer.uint8(obj.f_4_zone_status, buffer, bufferOffset);
    // Serialize message field [f_4_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_4_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [f_5_zone_status]
    bufferOffset = _serializer.uint8(obj.f_5_zone_status, buffer, bufferOffset);
    // Serialize message field [f_5_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_5_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [f_6_zone_status]
    bufferOffset = _serializer.uint8(obj.f_6_zone_status, buffer, bufferOffset);
    // Serialize message field [f_6_zone_buff_debuff_status]
    bufferOffset = _serializer.uint8(obj.f_6_zone_buff_debuff_status, buffer, bufferOffset);
    // Serialize message field [red_1_bullet_left]
    bufferOffset = _serializer.uint16(obj.red_1_bullet_left, buffer, bufferOffset);
    // Serialize message field [red_2_bullet_left]
    bufferOffset = _serializer.uint16(obj.red_2_bullet_left, buffer, bufferOffset);
    // Serialize message field [blue_1_bullet_left]
    bufferOffset = _serializer.uint16(obj.blue_1_bullet_left, buffer, bufferOffset);
    // Serialize message field [blue_2_bullet_left]
    bufferOffset = _serializer.uint16(obj.blue_2_bullet_left, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IcraBuffDebuffZoneStatus
    let len;
    let data = new IcraBuffDebuffZoneStatus(null);
    // Deserialize message field [f_1_zone_status]
    data.f_1_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_1_zone_buff_debuff_status]
    data.f_1_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_2_zone_status]
    data.f_2_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_2_zone_buff_debuff_status]
    data.f_2_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_3_zone_status]
    data.f_3_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_3_zone_buff_debuff_status]
    data.f_3_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_4_zone_status]
    data.f_4_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_4_zone_buff_debuff_status]
    data.f_4_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_5_zone_status]
    data.f_5_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_5_zone_buff_debuff_status]
    data.f_5_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_6_zone_status]
    data.f_6_zone_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [f_6_zone_buff_debuff_status]
    data.f_6_zone_buff_debuff_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [red_1_bullet_left]
    data.red_1_bullet_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_2_bullet_left]
    data.red_2_bullet_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_1_bullet_left]
    data.blue_1_bullet_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_2_bullet_left]
    data.blue_2_bullet_left = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/IcraBuffDebuffZoneStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2f6fc310c2ebda62f2d87ce47e0d1eb0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 f_1_zone_status
    uint8 f_1_zone_buff_debuff_status
    uint8 f_2_zone_status
    uint8 f_2_zone_buff_debuff_status
    uint8 f_3_zone_status
    uint8 f_3_zone_buff_debuff_status
    uint8 f_4_zone_status
    uint8 f_4_zone_buff_debuff_status
    uint8 f_5_zone_status
    uint8 f_5_zone_buff_debuff_status
    uint8 f_6_zone_status
    uint8 f_6_zone_buff_debuff_status
    uint16 red_1_bullet_left
    uint16 red_2_bullet_left
    uint16 blue_1_bullet_left
    uint16 blue_2_bullet_left
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IcraBuffDebuffZoneStatus(null);
    if (msg.f_1_zone_status !== undefined) {
      resolved.f_1_zone_status = msg.f_1_zone_status;
    }
    else {
      resolved.f_1_zone_status = 0
    }

    if (msg.f_1_zone_buff_debuff_status !== undefined) {
      resolved.f_1_zone_buff_debuff_status = msg.f_1_zone_buff_debuff_status;
    }
    else {
      resolved.f_1_zone_buff_debuff_status = 0
    }

    if (msg.f_2_zone_status !== undefined) {
      resolved.f_2_zone_status = msg.f_2_zone_status;
    }
    else {
      resolved.f_2_zone_status = 0
    }

    if (msg.f_2_zone_buff_debuff_status !== undefined) {
      resolved.f_2_zone_buff_debuff_status = msg.f_2_zone_buff_debuff_status;
    }
    else {
      resolved.f_2_zone_buff_debuff_status = 0
    }

    if (msg.f_3_zone_status !== undefined) {
      resolved.f_3_zone_status = msg.f_3_zone_status;
    }
    else {
      resolved.f_3_zone_status = 0
    }

    if (msg.f_3_zone_buff_debuff_status !== undefined) {
      resolved.f_3_zone_buff_debuff_status = msg.f_3_zone_buff_debuff_status;
    }
    else {
      resolved.f_3_zone_buff_debuff_status = 0
    }

    if (msg.f_4_zone_status !== undefined) {
      resolved.f_4_zone_status = msg.f_4_zone_status;
    }
    else {
      resolved.f_4_zone_status = 0
    }

    if (msg.f_4_zone_buff_debuff_status !== undefined) {
      resolved.f_4_zone_buff_debuff_status = msg.f_4_zone_buff_debuff_status;
    }
    else {
      resolved.f_4_zone_buff_debuff_status = 0
    }

    if (msg.f_5_zone_status !== undefined) {
      resolved.f_5_zone_status = msg.f_5_zone_status;
    }
    else {
      resolved.f_5_zone_status = 0
    }

    if (msg.f_5_zone_buff_debuff_status !== undefined) {
      resolved.f_5_zone_buff_debuff_status = msg.f_5_zone_buff_debuff_status;
    }
    else {
      resolved.f_5_zone_buff_debuff_status = 0
    }

    if (msg.f_6_zone_status !== undefined) {
      resolved.f_6_zone_status = msg.f_6_zone_status;
    }
    else {
      resolved.f_6_zone_status = 0
    }

    if (msg.f_6_zone_buff_debuff_status !== undefined) {
      resolved.f_6_zone_buff_debuff_status = msg.f_6_zone_buff_debuff_status;
    }
    else {
      resolved.f_6_zone_buff_debuff_status = 0
    }

    if (msg.red_1_bullet_left !== undefined) {
      resolved.red_1_bullet_left = msg.red_1_bullet_left;
    }
    else {
      resolved.red_1_bullet_left = 0
    }

    if (msg.red_2_bullet_left !== undefined) {
      resolved.red_2_bullet_left = msg.red_2_bullet_left;
    }
    else {
      resolved.red_2_bullet_left = 0
    }

    if (msg.blue_1_bullet_left !== undefined) {
      resolved.blue_1_bullet_left = msg.blue_1_bullet_left;
    }
    else {
      resolved.blue_1_bullet_left = 0
    }

    if (msg.blue_2_bullet_left !== undefined) {
      resolved.blue_2_bullet_left = msg.blue_2_bullet_left;
    }
    else {
      resolved.blue_2_bullet_left = 0
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

module.exports = IcraBuffDebuffZoneStatus;
