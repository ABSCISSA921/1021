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

class DartInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dart_remaining_time = null;
      this.dart_last_aim_state = null;
      this.enemy_total_hit_received = null;
      this.dart_current_target = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dart_remaining_time')) {
        this.dart_remaining_time = initObj.dart_remaining_time
      }
      else {
        this.dart_remaining_time = 0;
      }
      if (initObj.hasOwnProperty('dart_last_aim_state')) {
        this.dart_last_aim_state = initObj.dart_last_aim_state
      }
      else {
        this.dart_last_aim_state = 0;
      }
      if (initObj.hasOwnProperty('enemy_total_hit_received')) {
        this.enemy_total_hit_received = initObj.enemy_total_hit_received
      }
      else {
        this.enemy_total_hit_received = 0;
      }
      if (initObj.hasOwnProperty('dart_current_target')) {
        this.dart_current_target = initObj.dart_current_target
      }
      else {
        this.dart_current_target = 0;
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
    // Serializes a message object of type DartInfo
    // Serialize message field [dart_remaining_time]
    bufferOffset = _serializer.uint8(obj.dart_remaining_time, buffer, bufferOffset);
    // Serialize message field [dart_last_aim_state]
    bufferOffset = _serializer.uint8(obj.dart_last_aim_state, buffer, bufferOffset);
    // Serialize message field [enemy_total_hit_received]
    bufferOffset = _serializer.uint8(obj.enemy_total_hit_received, buffer, bufferOffset);
    // Serialize message field [dart_current_target]
    bufferOffset = _serializer.uint8(obj.dart_current_target, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DartInfo
    let len;
    let data = new DartInfo(null);
    // Deserialize message field [dart_remaining_time]
    data.dart_remaining_time = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dart_last_aim_state]
    data.dart_last_aim_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [enemy_total_hit_received]
    data.enemy_total_hit_received = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [dart_current_target]
    data.dart_current_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DartInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73e2079390bc6e9a5cb0850ee23279ca';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 dart_remaining_time
    uint8 dart_last_aim_state
    uint8 enemy_total_hit_received
    uint8 dart_current_target
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DartInfo(null);
    if (msg.dart_remaining_time !== undefined) {
      resolved.dart_remaining_time = msg.dart_remaining_time;
    }
    else {
      resolved.dart_remaining_time = 0
    }

    if (msg.dart_last_aim_state !== undefined) {
      resolved.dart_last_aim_state = msg.dart_last_aim_state;
    }
    else {
      resolved.dart_last_aim_state = 0
    }

    if (msg.enemy_total_hit_received !== undefined) {
      resolved.enemy_total_hit_received = msg.enemy_total_hit_received;
    }
    else {
      resolved.enemy_total_hit_received = 0
    }

    if (msg.dart_current_target !== undefined) {
      resolved.dart_current_target = msg.dart_current_target;
    }
    else {
      resolved.dart_current_target = 0
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

module.exports = DartInfo;
