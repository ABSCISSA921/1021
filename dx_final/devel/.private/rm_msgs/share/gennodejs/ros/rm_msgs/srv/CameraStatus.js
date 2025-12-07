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

class CameraStatusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_request = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_request')) {
        this.imu_request = initObj.imu_request
      }
      else {
        this.imu_request = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraStatusRequest
    // Serialize message field [imu_request]
    bufferOffset = _serializer.bool(obj.imu_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStatusRequest
    let len;
    let data = new CameraStatusRequest(null);
    // Deserialize message field [imu_request]
    data.imu_request = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/CameraStatusRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a72b7d7d4a1abf19c22f6b9c76c75520';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool imu_request
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraStatusRequest(null);
    if (msg.imu_request !== undefined) {
      resolved.imu_request = msg.imu_request;
    }
    else {
      resolved.imu_request = false
    }

    return resolved;
    }
};

class CameraStatusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_open = null;
    }
    else {
      if (initObj.hasOwnProperty('is_open')) {
        this.is_open = initObj.is_open
      }
      else {
        this.is_open = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CameraStatusResponse
    // Serialize message field [is_open]
    bufferOffset = _serializer.bool(obj.is_open, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CameraStatusResponse
    let len;
    let data = new CameraStatusResponse(null);
    // Deserialize message field [is_open]
    data.is_open = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/CameraStatusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46713fbdaf364c45f5b76eadfde2f685';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_open
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CameraStatusResponse(null);
    if (msg.is_open !== undefined) {
      resolved.is_open = msg.is_open;
    }
    else {
      resolved.is_open = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CameraStatusRequest,
  Response: CameraStatusResponse,
  md5sum() { return '86773025f35634422f96dc69ae7b5cfe'; },
  datatype() { return 'rm_msgs/CameraStatus'; }
};
