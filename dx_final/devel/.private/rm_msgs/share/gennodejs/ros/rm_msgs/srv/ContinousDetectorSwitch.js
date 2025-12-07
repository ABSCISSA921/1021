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

class ContinousDetectorSwitchRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.detector_switch = null;
    }
    else {
      if (initObj.hasOwnProperty('detector_switch')) {
        this.detector_switch = initObj.detector_switch
      }
      else {
        this.detector_switch = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContinousDetectorSwitchRequest
    // Serialize message field [detector_switch]
    bufferOffset = _serializer.bool(obj.detector_switch, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContinousDetectorSwitchRequest
    let len;
    let data = new ContinousDetectorSwitchRequest(null);
    // Deserialize message field [detector_switch]
    data.detector_switch = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/ContinousDetectorSwitchRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44769af043220a0ab56c4e47f2a8fda6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool detector_switch
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContinousDetectorSwitchRequest(null);
    if (msg.detector_switch !== undefined) {
      resolved.detector_switch = msg.detector_switch;
    }
    else {
      resolved.detector_switch = false
    }

    return resolved;
    }
};

class ContinousDetectorSwitchResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.continous_is_success = null;
    }
    else {
      if (initObj.hasOwnProperty('continous_is_success')) {
        this.continous_is_success = initObj.continous_is_success
      }
      else {
        this.continous_is_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ContinousDetectorSwitchResponse
    // Serialize message field [continous_is_success]
    bufferOffset = _serializer.bool(obj.continous_is_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ContinousDetectorSwitchResponse
    let len;
    let data = new ContinousDetectorSwitchResponse(null);
    // Deserialize message field [continous_is_success]
    data.continous_is_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/ContinousDetectorSwitchResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c6f82f10f321f14f93ae1c9cc5286d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool continous_is_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ContinousDetectorSwitchResponse(null);
    if (msg.continous_is_success !== undefined) {
      resolved.continous_is_success = msg.continous_is_success;
    }
    else {
      resolved.continous_is_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ContinousDetectorSwitchRequest,
  Response: ContinousDetectorSwitchResponse,
  md5sum() { return '124ca6e89084b28197084359298c939c'; },
  datatype() { return 'rm_msgs/ContinousDetectorSwitch'; }
};
