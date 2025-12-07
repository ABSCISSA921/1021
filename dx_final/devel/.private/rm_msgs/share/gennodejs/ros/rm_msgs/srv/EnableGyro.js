// Auto-generated. Do not edit!

// (in-package rm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EnableGyroRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gyro_speed = null;
    }
    else {
      if (initObj.hasOwnProperty('gyro_speed')) {
        this.gyro_speed = initObj.gyro_speed
      }
      else {
        this.gyro_speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableGyroRequest
    // Serialize message field [gyro_speed]
    bufferOffset = _serializer.float32(obj.gyro_speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableGyroRequest
    let len;
    let data = new EnableGyroRequest(null);
    // Deserialize message field [gyro_speed]
    data.gyro_speed = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/EnableGyroRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'be814238de886fef6fcd2391436b7b12';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 gyro_speed
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableGyroRequest(null);
    if (msg.gyro_speed !== undefined) {
      resolved.gyro_speed = msg.gyro_speed;
    }
    else {
      resolved.gyro_speed = 0.0
    }

    return resolved;
    }
};

class EnableGyroResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_gyro = null;
    }
    else {
      if (initObj.hasOwnProperty('is_gyro')) {
        this.is_gyro = initObj.is_gyro
      }
      else {
        this.is_gyro = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableGyroResponse
    // Serialize message field [is_gyro]
    bufferOffset = _serializer.bool(obj.is_gyro, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableGyroResponse
    let len;
    let data = new EnableGyroResponse(null);
    // Deserialize message field [is_gyro]
    data.is_gyro = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/EnableGyroResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d2f657da9f0ac44cd61b7b688bb7134';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_gyro
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableGyroResponse(null);
    if (msg.is_gyro !== undefined) {
      resolved.is_gyro = msg.is_gyro;
    }
    else {
      resolved.is_gyro = false
    }

    return resolved;
    }
};

module.exports = {
  Request: EnableGyroRequest,
  Response: EnableGyroResponse,
  md5sum() { return 'b392a2bc1a18f8fd0a5d7f696d80a69d'; },
  datatype() { return 'rm_msgs/EnableGyro'; }
};
