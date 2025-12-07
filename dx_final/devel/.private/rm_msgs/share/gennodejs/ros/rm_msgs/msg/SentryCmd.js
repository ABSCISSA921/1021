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

class SentryCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sentry_info = null;
    }
    else {
      if (initObj.hasOwnProperty('sentry_info')) {
        this.sentry_info = initObj.sentry_info
      }
      else {
        this.sentry_info = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SentryCmd
    // Serialize message field [sentry_info]
    bufferOffset = _serializer.uint32(obj.sentry_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SentryCmd
    let len;
    let data = new SentryCmd(null);
    // Deserialize message field [sentry_info]
    data.sentry_info = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SentryCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a21fe818ae8429588925e99460baf95';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 sentry_info
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SentryCmd(null);
    if (msg.sentry_info !== undefined) {
      resolved.sentry_info = msg.sentry_info;
    }
    else {
      resolved.sentry_info = 0
    }

    return resolved;
    }
};

module.exports = SentryCmd;
