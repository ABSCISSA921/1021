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

class RadarMarkData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mark_hero_progress = null;
      this.mark_engineer_progress = null;
      this.mark_standard_3_progress = null;
      this.mark_standard_4_progress = null;
      this.mark_sentry_progress = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('mark_hero_progress')) {
        this.mark_hero_progress = initObj.mark_hero_progress
      }
      else {
        this.mark_hero_progress = false;
      }
      if (initObj.hasOwnProperty('mark_engineer_progress')) {
        this.mark_engineer_progress = initObj.mark_engineer_progress
      }
      else {
        this.mark_engineer_progress = false;
      }
      if (initObj.hasOwnProperty('mark_standard_3_progress')) {
        this.mark_standard_3_progress = initObj.mark_standard_3_progress
      }
      else {
        this.mark_standard_3_progress = false;
      }
      if (initObj.hasOwnProperty('mark_standard_4_progress')) {
        this.mark_standard_4_progress = initObj.mark_standard_4_progress
      }
      else {
        this.mark_standard_4_progress = false;
      }
      if (initObj.hasOwnProperty('mark_sentry_progress')) {
        this.mark_sentry_progress = initObj.mark_sentry_progress
      }
      else {
        this.mark_sentry_progress = false;
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
    // Serializes a message object of type RadarMarkData
    // Serialize message field [mark_hero_progress]
    bufferOffset = _serializer.bool(obj.mark_hero_progress, buffer, bufferOffset);
    // Serialize message field [mark_engineer_progress]
    bufferOffset = _serializer.bool(obj.mark_engineer_progress, buffer, bufferOffset);
    // Serialize message field [mark_standard_3_progress]
    bufferOffset = _serializer.bool(obj.mark_standard_3_progress, buffer, bufferOffset);
    // Serialize message field [mark_standard_4_progress]
    bufferOffset = _serializer.bool(obj.mark_standard_4_progress, buffer, bufferOffset);
    // Serialize message field [mark_sentry_progress]
    bufferOffset = _serializer.bool(obj.mark_sentry_progress, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RadarMarkData
    let len;
    let data = new RadarMarkData(null);
    // Deserialize message field [mark_hero_progress]
    data.mark_hero_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mark_engineer_progress]
    data.mark_engineer_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mark_standard_3_progress]
    data.mark_standard_3_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mark_standard_4_progress]
    data.mark_standard_4_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mark_sentry_progress]
    data.mark_sentry_progress = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RadarMarkData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9220326c1ed840bfbfd0ed6791aea229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool mark_hero_progress
    bool mark_engineer_progress
    bool mark_standard_3_progress
    bool mark_standard_4_progress
    bool mark_sentry_progress
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RadarMarkData(null);
    if (msg.mark_hero_progress !== undefined) {
      resolved.mark_hero_progress = msg.mark_hero_progress;
    }
    else {
      resolved.mark_hero_progress = false
    }

    if (msg.mark_engineer_progress !== undefined) {
      resolved.mark_engineer_progress = msg.mark_engineer_progress;
    }
    else {
      resolved.mark_engineer_progress = false
    }

    if (msg.mark_standard_3_progress !== undefined) {
      resolved.mark_standard_3_progress = msg.mark_standard_3_progress;
    }
    else {
      resolved.mark_standard_3_progress = false
    }

    if (msg.mark_standard_4_progress !== undefined) {
      resolved.mark_standard_4_progress = msg.mark_standard_4_progress;
    }
    else {
      resolved.mark_standard_4_progress = false
    }

    if (msg.mark_sentry_progress !== undefined) {
      resolved.mark_sentry_progress = msg.mark_sentry_progress;
    }
    else {
      resolved.mark_sentry_progress = false
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

module.exports = RadarMarkData;
