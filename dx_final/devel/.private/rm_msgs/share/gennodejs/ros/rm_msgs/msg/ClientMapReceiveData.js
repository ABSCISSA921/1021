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

class ClientMapReceiveData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.hero_position_x = null;
      this.hero_position_y = null;
      this.engineer_position_x = null;
      this.engineer_position_y = null;
      this.infantry_3_position_x = null;
      this.infantry_3_position_y = null;
      this.infantry_4_position_x = null;
      this.infantry_4_position_y = null;
      this.infantry_5_position_x = null;
      this.infantry_5_position_y = null;
      this.sentry_position_x = null;
      this.sentry_position_y = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('hero_position_x')) {
        this.hero_position_x = initObj.hero_position_x
      }
      else {
        this.hero_position_x = 0;
      }
      if (initObj.hasOwnProperty('hero_position_y')) {
        this.hero_position_y = initObj.hero_position_y
      }
      else {
        this.hero_position_y = 0;
      }
      if (initObj.hasOwnProperty('engineer_position_x')) {
        this.engineer_position_x = initObj.engineer_position_x
      }
      else {
        this.engineer_position_x = 0;
      }
      if (initObj.hasOwnProperty('engineer_position_y')) {
        this.engineer_position_y = initObj.engineer_position_y
      }
      else {
        this.engineer_position_y = 0;
      }
      if (initObj.hasOwnProperty('infantry_3_position_x')) {
        this.infantry_3_position_x = initObj.infantry_3_position_x
      }
      else {
        this.infantry_3_position_x = 0;
      }
      if (initObj.hasOwnProperty('infantry_3_position_y')) {
        this.infantry_3_position_y = initObj.infantry_3_position_y
      }
      else {
        this.infantry_3_position_y = 0;
      }
      if (initObj.hasOwnProperty('infantry_4_position_x')) {
        this.infantry_4_position_x = initObj.infantry_4_position_x
      }
      else {
        this.infantry_4_position_x = 0;
      }
      if (initObj.hasOwnProperty('infantry_4_position_y')) {
        this.infantry_4_position_y = initObj.infantry_4_position_y
      }
      else {
        this.infantry_4_position_y = 0;
      }
      if (initObj.hasOwnProperty('infantry_5_position_x')) {
        this.infantry_5_position_x = initObj.infantry_5_position_x
      }
      else {
        this.infantry_5_position_x = 0;
      }
      if (initObj.hasOwnProperty('infantry_5_position_y')) {
        this.infantry_5_position_y = initObj.infantry_5_position_y
      }
      else {
        this.infantry_5_position_y = 0;
      }
      if (initObj.hasOwnProperty('sentry_position_x')) {
        this.sentry_position_x = initObj.sentry_position_x
      }
      else {
        this.sentry_position_x = 0;
      }
      if (initObj.hasOwnProperty('sentry_position_y')) {
        this.sentry_position_y = initObj.sentry_position_y
      }
      else {
        this.sentry_position_y = 0;
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
    // Serializes a message object of type ClientMapReceiveData
    // Serialize message field [hero_position_x]
    bufferOffset = _serializer.uint16(obj.hero_position_x, buffer, bufferOffset);
    // Serialize message field [hero_position_y]
    bufferOffset = _serializer.uint16(obj.hero_position_y, buffer, bufferOffset);
    // Serialize message field [engineer_position_x]
    bufferOffset = _serializer.uint16(obj.engineer_position_x, buffer, bufferOffset);
    // Serialize message field [engineer_position_y]
    bufferOffset = _serializer.uint16(obj.engineer_position_y, buffer, bufferOffset);
    // Serialize message field [infantry_3_position_x]
    bufferOffset = _serializer.uint16(obj.infantry_3_position_x, buffer, bufferOffset);
    // Serialize message field [infantry_3_position_y]
    bufferOffset = _serializer.uint16(obj.infantry_3_position_y, buffer, bufferOffset);
    // Serialize message field [infantry_4_position_x]
    bufferOffset = _serializer.uint16(obj.infantry_4_position_x, buffer, bufferOffset);
    // Serialize message field [infantry_4_position_y]
    bufferOffset = _serializer.uint16(obj.infantry_4_position_y, buffer, bufferOffset);
    // Serialize message field [infantry_5_position_x]
    bufferOffset = _serializer.uint16(obj.infantry_5_position_x, buffer, bufferOffset);
    // Serialize message field [infantry_5_position_y]
    bufferOffset = _serializer.uint16(obj.infantry_5_position_y, buffer, bufferOffset);
    // Serialize message field [sentry_position_x]
    bufferOffset = _serializer.uint16(obj.sentry_position_x, buffer, bufferOffset);
    // Serialize message field [sentry_position_y]
    bufferOffset = _serializer.uint16(obj.sentry_position_y, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientMapReceiveData
    let len;
    let data = new ClientMapReceiveData(null);
    // Deserialize message field [hero_position_x]
    data.hero_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [hero_position_y]
    data.hero_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [engineer_position_x]
    data.engineer_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [engineer_position_y]
    data.engineer_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_3_position_x]
    data.infantry_3_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_3_position_y]
    data.infantry_3_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_4_position_x]
    data.infantry_4_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_4_position_y]
    data.infantry_4_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_5_position_x]
    data.infantry_5_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [infantry_5_position_y]
    data.infantry_5_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sentry_position_x]
    data.sentry_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sentry_position_y]
    data.sentry_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ClientMapReceiveData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '765860ed57371d5f547d7681e64c9b02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 hero_position_x
    uint16 hero_position_y
    uint16 engineer_position_x
    uint16 engineer_position_y
    uint16 infantry_3_position_x
    uint16 infantry_3_position_y
    uint16 infantry_4_position_x
    uint16 infantry_4_position_y
    uint16 infantry_5_position_x
    uint16 infantry_5_position_y
    uint16 sentry_position_x
    uint16 sentry_position_y
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientMapReceiveData(null);
    if (msg.hero_position_x !== undefined) {
      resolved.hero_position_x = msg.hero_position_x;
    }
    else {
      resolved.hero_position_x = 0
    }

    if (msg.hero_position_y !== undefined) {
      resolved.hero_position_y = msg.hero_position_y;
    }
    else {
      resolved.hero_position_y = 0
    }

    if (msg.engineer_position_x !== undefined) {
      resolved.engineer_position_x = msg.engineer_position_x;
    }
    else {
      resolved.engineer_position_x = 0
    }

    if (msg.engineer_position_y !== undefined) {
      resolved.engineer_position_y = msg.engineer_position_y;
    }
    else {
      resolved.engineer_position_y = 0
    }

    if (msg.infantry_3_position_x !== undefined) {
      resolved.infantry_3_position_x = msg.infantry_3_position_x;
    }
    else {
      resolved.infantry_3_position_x = 0
    }

    if (msg.infantry_3_position_y !== undefined) {
      resolved.infantry_3_position_y = msg.infantry_3_position_y;
    }
    else {
      resolved.infantry_3_position_y = 0
    }

    if (msg.infantry_4_position_x !== undefined) {
      resolved.infantry_4_position_x = msg.infantry_4_position_x;
    }
    else {
      resolved.infantry_4_position_x = 0
    }

    if (msg.infantry_4_position_y !== undefined) {
      resolved.infantry_4_position_y = msg.infantry_4_position_y;
    }
    else {
      resolved.infantry_4_position_y = 0
    }

    if (msg.infantry_5_position_x !== undefined) {
      resolved.infantry_5_position_x = msg.infantry_5_position_x;
    }
    else {
      resolved.infantry_5_position_x = 0
    }

    if (msg.infantry_5_position_y !== undefined) {
      resolved.infantry_5_position_y = msg.infantry_5_position_y;
    }
    else {
      resolved.infantry_5_position_y = 0
    }

    if (msg.sentry_position_x !== undefined) {
      resolved.sentry_position_x = msg.sentry_position_x;
    }
    else {
      resolved.sentry_position_x = 0
    }

    if (msg.sentry_position_y !== undefined) {
      resolved.sentry_position_y = msg.sentry_position_y;
    }
    else {
      resolved.sentry_position_y = 0
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

module.exports = ClientMapReceiveData;
