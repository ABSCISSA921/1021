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

class SentryInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentry_info = null;
      this.is_out_of_war = null;
      this.remaining_bullets_can_supply = null;
    }
    else {
      if (initObj.hasOwnProperty('sentry_info')) {
        this.sentry_info = initObj.sentry_info
      }
      else {
        this.sentry_info = 0;
      }
      if (initObj.hasOwnProperty('is_out_of_war')) {
        this.is_out_of_war = initObj.is_out_of_war
      }
      else {
        this.is_out_of_war = false;
      }
      if (initObj.hasOwnProperty('remaining_bullets_can_supply')) {
        this.remaining_bullets_can_supply = initObj.remaining_bullets_can_supply
      }
      else {
        this.remaining_bullets_can_supply = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SentryInfo
    // Serialize message field [sentry_info]
    bufferOffset = _serializer.uint32(obj.sentry_info, buffer, bufferOffset);
    // Serialize message field [is_out_of_war]
    bufferOffset = _serializer.bool(obj.is_out_of_war, buffer, bufferOffset);
    // Serialize message field [remaining_bullets_can_supply]
    bufferOffset = _serializer.uint16(obj.remaining_bullets_can_supply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SentryInfo
    let len;
    let data = new SentryInfo(null);
    // Deserialize message field [sentry_info]
    data.sentry_info = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [is_out_of_war]
    data.is_out_of_war = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [remaining_bullets_can_supply]
    data.remaining_bullets_can_supply = _deserializer.uint16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SentryInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12d17492af26f6bdf5a621bccb488999';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sentry_info
    bool is_out_of_war
    uint16 remaining_bullets_can_supply
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SentryInfo(null);
    if (msg.sentry_info !== undefined) {
      resolved.sentry_info = msg.sentry_info;
    }
    else {
      resolved.sentry_info = 0
    }

    if (msg.is_out_of_war !== undefined) {
      resolved.is_out_of_war = msg.is_out_of_war;
    }
    else {
      resolved.is_out_of_war = false
    }

    if (msg.remaining_bullets_can_supply !== undefined) {
      resolved.remaining_bullets_can_supply = msg.remaining_bullets_can_supply;
    }
    else {
      resolved.remaining_bullets_can_supply = 0
    }

    return resolved;
    }
};

module.exports = SentryInfo;
