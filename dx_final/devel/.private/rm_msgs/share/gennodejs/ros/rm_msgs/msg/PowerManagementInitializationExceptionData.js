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

class PowerManagementInitializationExceptionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.error_code = null;
      this.string = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('string')) {
        this.string = initObj.string
      }
      else {
        this.string = '';
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
    // Serializes a message object of type PowerManagementInitializationExceptionData
    // Serialize message field [error_code]
    bufferOffset = _serializer.int8(obj.error_code, buffer, bufferOffset);
    // Serialize message field [string]
    bufferOffset = _serializer.string(obj.string, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerManagementInitializationExceptionData
    let len;
    let data = new PowerManagementInitializationExceptionData(null);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [string]
    data.string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.string);
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerManagementInitializationExceptionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '54a71420468ddead2ca3dd2998bc282b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 error_code
    string string
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerManagementInitializationExceptionData(null);
    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.string !== undefined) {
      resolved.string = msg.string;
    }
    else {
      resolved.string = ''
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

module.exports = PowerManagementInitializationExceptionData;
