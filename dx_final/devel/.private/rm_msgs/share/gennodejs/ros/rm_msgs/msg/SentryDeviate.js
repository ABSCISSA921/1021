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

class SentryDeviate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.deviate_x = null;
      this.deviate_y = null;
      this.isDeviate = null;
    }
    else {
      if (initObj.hasOwnProperty('deviate_x')) {
        this.deviate_x = initObj.deviate_x
      }
      else {
        this.deviate_x = 0.0;
      }
      if (initObj.hasOwnProperty('deviate_y')) {
        this.deviate_y = initObj.deviate_y
      }
      else {
        this.deviate_y = 0.0;
      }
      if (initObj.hasOwnProperty('isDeviate')) {
        this.isDeviate = initObj.isDeviate
      }
      else {
        this.isDeviate = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SentryDeviate
    // Serialize message field [deviate_x]
    bufferOffset = _serializer.float32(obj.deviate_x, buffer, bufferOffset);
    // Serialize message field [deviate_y]
    bufferOffset = _serializer.float32(obj.deviate_y, buffer, bufferOffset);
    // Serialize message field [isDeviate]
    bufferOffset = _serializer.bool(obj.isDeviate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SentryDeviate
    let len;
    let data = new SentryDeviate(null);
    // Deserialize message field [deviate_x]
    data.deviate_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [deviate_y]
    data.deviate_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [isDeviate]
    data.isDeviate = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SentryDeviate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c69b176feecb141daf67e3748f91a86';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 deviate_x
    float32 deviate_y
    bool isDeviate
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SentryDeviate(null);
    if (msg.deviate_x !== undefined) {
      resolved.deviate_x = msg.deviate_x;
    }
    else {
      resolved.deviate_x = 0.0
    }

    if (msg.deviate_y !== undefined) {
      resolved.deviate_y = msg.deviate_y;
    }
    else {
      resolved.deviate_y = 0.0
    }

    if (msg.isDeviate !== undefined) {
      resolved.isDeviate = msg.isDeviate;
    }
    else {
      resolved.isDeviate = false
    }

    return resolved;
    }
};

module.exports = SentryDeviate;
