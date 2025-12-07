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

class DartClientCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dart_launch_opening_status = null;
      this.target_change_time = null;
      this.latest_launch_cmd_time = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('dart_launch_opening_status')) {
        this.dart_launch_opening_status = initObj.dart_launch_opening_status
      }
      else {
        this.dart_launch_opening_status = 0;
      }
      if (initObj.hasOwnProperty('target_change_time')) {
        this.target_change_time = initObj.target_change_time
      }
      else {
        this.target_change_time = 0;
      }
      if (initObj.hasOwnProperty('latest_launch_cmd_time')) {
        this.latest_launch_cmd_time = initObj.latest_launch_cmd_time
      }
      else {
        this.latest_launch_cmd_time = 0;
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
    // Serializes a message object of type DartClientCmd
    // Serialize message field [dart_launch_opening_status]
    bufferOffset = _serializer.uint8(obj.dart_launch_opening_status, buffer, bufferOffset);
    // Serialize message field [target_change_time]
    bufferOffset = _serializer.uint16(obj.target_change_time, buffer, bufferOffset);
    // Serialize message field [latest_launch_cmd_time]
    bufferOffset = _serializer.uint16(obj.latest_launch_cmd_time, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DartClientCmd
    let len;
    let data = new DartClientCmd(null);
    // Deserialize message field [dart_launch_opening_status]
    data.dart_launch_opening_status = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_change_time]
    data.target_change_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [latest_launch_cmd_time]
    data.latest_launch_cmd_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DartClientCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '35bb2f324581a84628fc6e104a35144c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 dart_launch_opening_status
    uint16 target_change_time
    uint16 latest_launch_cmd_time
    
    uint8 CLOSED = 1
    uint8 OPENING_OR_CLOSING = 2
    uint8 OPENED = 0
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DartClientCmd(null);
    if (msg.dart_launch_opening_status !== undefined) {
      resolved.dart_launch_opening_status = msg.dart_launch_opening_status;
    }
    else {
      resolved.dart_launch_opening_status = 0
    }

    if (msg.target_change_time !== undefined) {
      resolved.target_change_time = msg.target_change_time;
    }
    else {
      resolved.target_change_time = 0
    }

    if (msg.latest_launch_cmd_time !== undefined) {
      resolved.latest_launch_cmd_time = msg.latest_launch_cmd_time;
    }
    else {
      resolved.latest_launch_cmd_time = 0
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

// Constants for message
DartClientCmd.Constants = {
  CLOSED: 1,
  OPENING_OR_CLOSING: 2,
  OPENED: 0,
}

module.exports = DartClientCmd;
