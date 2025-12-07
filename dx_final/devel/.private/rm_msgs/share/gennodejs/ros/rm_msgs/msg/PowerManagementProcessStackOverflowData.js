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

class PowerManagementProcessStackOverflowData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.process_name = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('process_name')) {
        this.process_name = initObj.process_name
      }
      else {
        this.process_name = '';
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
    // Serializes a message object of type PowerManagementProcessStackOverflowData
    // Serialize message field [process_name]
    bufferOffset = _serializer.string(obj.process_name, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerManagementProcessStackOverflowData
    let len;
    let data = new PowerManagementProcessStackOverflowData(null);
    // Deserialize message field [process_name]
    data.process_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.process_name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerManagementProcessStackOverflowData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3888ad0e8184067e8398c12c0b5e2afe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string process_name
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerManagementProcessStackOverflowData(null);
    if (msg.process_name !== undefined) {
      resolved.process_name = msg.process_name;
    }
    else {
      resolved.process_name = ''
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

module.exports = PowerManagementProcessStackOverflowData;
