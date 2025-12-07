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

class EnableImuTriggerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.imu_name = null;
      this.enable_trigger = null;
    }
    else {
      if (initObj.hasOwnProperty('imu_name')) {
        this.imu_name = initObj.imu_name
      }
      else {
        this.imu_name = '';
      }
      if (initObj.hasOwnProperty('enable_trigger')) {
        this.enable_trigger = initObj.enable_trigger
      }
      else {
        this.enable_trigger = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableImuTriggerRequest
    // Serialize message field [imu_name]
    bufferOffset = _serializer.string(obj.imu_name, buffer, bufferOffset);
    // Serialize message field [enable_trigger]
    bufferOffset = _serializer.bool(obj.enable_trigger, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableImuTriggerRequest
    let len;
    let data = new EnableImuTriggerRequest(null);
    // Deserialize message field [imu_name]
    data.imu_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [enable_trigger]
    data.enable_trigger = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.imu_name);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/EnableImuTriggerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a69c0d0d9957c038763bb859200c8069';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string imu_name
    bool enable_trigger
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableImuTriggerRequest(null);
    if (msg.imu_name !== undefined) {
      resolved.imu_name = msg.imu_name;
    }
    else {
      resolved.imu_name = ''
    }

    if (msg.enable_trigger !== undefined) {
      resolved.enable_trigger = msg.enable_trigger;
    }
    else {
      resolved.enable_trigger = false
    }

    return resolved;
    }
};

class EnableImuTriggerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_success = null;
    }
    else {
      if (initObj.hasOwnProperty('is_success')) {
        this.is_success = initObj.is_success
      }
      else {
        this.is_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnableImuTriggerResponse
    // Serialize message field [is_success]
    bufferOffset = _serializer.bool(obj.is_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnableImuTriggerResponse
    let len;
    let data = new EnableImuTriggerResponse(null);
    // Deserialize message field [is_success]
    data.is_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/EnableImuTriggerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3e942e5cfe76a6a46f20a0780b2cf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnableImuTriggerResponse(null);
    if (msg.is_success !== undefined) {
      resolved.is_success = msg.is_success;
    }
    else {
      resolved.is_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: EnableImuTriggerRequest,
  Response: EnableImuTriggerResponse,
  md5sum() { return '1e2c36312701f0610562a77ad6902d8f'; },
  datatype() { return 'rm_msgs/EnableImuTrigger'; }
};
