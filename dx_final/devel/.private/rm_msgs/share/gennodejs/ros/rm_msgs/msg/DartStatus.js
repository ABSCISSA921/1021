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

class DartStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dart_belong = null;
      this.stage_remaining_time = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dart_belong')) {
        this.dart_belong = initObj.dart_belong
      }
      else {
        this.dart_belong = 0;
      }
      if (initObj.hasOwnProperty('stage_remaining_time')) {
        this.stage_remaining_time = initObj.stage_remaining_time
      }
      else {
        this.stage_remaining_time = 0;
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
    // Serializes a message object of type DartStatus
    // Serialize message field [dart_belong]
    bufferOffset = _serializer.uint8(obj.dart_belong, buffer, bufferOffset);
    // Serialize message field [stage_remaining_time]
    bufferOffset = _serializer.uint16(obj.stage_remaining_time, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DartStatus
    let len;
    let data = new DartStatus(null);
    // Deserialize message field [dart_belong]
    data.dart_belong = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stage_remaining_time]
    data.stage_remaining_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DartStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b9f6d95c72e29f45d76805d30f6de59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 dart_belong
    uint16 stage_remaining_time
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DartStatus(null);
    if (msg.dart_belong !== undefined) {
      resolved.dart_belong = msg.dart_belong;
    }
    else {
      resolved.dart_belong = 0
    }

    if (msg.stage_remaining_time !== undefined) {
      resolved.stage_remaining_time = msg.stage_remaining_time;
    }
    else {
      resolved.stage_remaining_time = 0
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

module.exports = DartStatus;
