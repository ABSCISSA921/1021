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

class StatusChangeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.color = null;
      this.target = null;
      this.armor_target = null;
      this.exposure = null;
      this.use_id_classification = null;
    }
    else {
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('target')) {
        this.target = initObj.target
      }
      else {
        this.target = 0;
      }
      if (initObj.hasOwnProperty('armor_target')) {
        this.armor_target = initObj.armor_target
      }
      else {
        this.armor_target = 0;
      }
      if (initObj.hasOwnProperty('exposure')) {
        this.exposure = initObj.exposure
      }
      else {
        this.exposure = 0;
      }
      if (initObj.hasOwnProperty('use_id_classification')) {
        this.use_id_classification = initObj.use_id_classification
      }
      else {
        this.use_id_classification = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusChangeRequest
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [target]
    bufferOffset = _serializer.uint8(obj.target, buffer, bufferOffset);
    // Serialize message field [armor_target]
    bufferOffset = _serializer.uint8(obj.armor_target, buffer, bufferOffset);
    // Serialize message field [exposure]
    bufferOffset = _serializer.uint8(obj.exposure, buffer, bufferOffset);
    // Serialize message field [use_id_classification]
    bufferOffset = _serializer.uint8(obj.use_id_classification, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusChangeRequest
    let len;
    let data = new StatusChangeRequest(null);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target]
    data.target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [armor_target]
    data.armor_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [exposure]
    data.exposure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [use_id_classification]
    data.use_id_classification = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/StatusChangeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '234814f1a8b7e6c100131cfc0419b6ba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 color
    uint8 target
    uint8 armor_target
    uint8 exposure
    uint8 use_id_classification
    uint8 RED = 0
    uint8 BLUE = 1
    uint8 PURPLE = 2
    uint8 ARMOR = 0
    uint8 SMALL_BUFF = 1
    uint8 BIG_BUFF = 2
    uint8 ARMOR_ALL = 0
    uint8 ARMOR_OUTPOST_BASE = 1
    uint8 ARMOR_WITHOUT_OUTPOST_BASE = 2
    uint8 EXPOSURE_LEVEL_0 = 0
    uint8 EXPOSURE_LEVEL_1 = 1
    uint8 EXPOSURE_LEVEL_2 = 2
    uint8 EXPOSURE_LEVEL_3 = 3
    uint8 EXPOSURE_LEVEL_4 = 4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusChangeRequest(null);
    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.target !== undefined) {
      resolved.target = msg.target;
    }
    else {
      resolved.target = 0
    }

    if (msg.armor_target !== undefined) {
      resolved.armor_target = msg.armor_target;
    }
    else {
      resolved.armor_target = 0
    }

    if (msg.exposure !== undefined) {
      resolved.exposure = msg.exposure;
    }
    else {
      resolved.exposure = 0
    }

    if (msg.use_id_classification !== undefined) {
      resolved.use_id_classification = msg.use_id_classification;
    }
    else {
      resolved.use_id_classification = 0
    }

    return resolved;
    }
};

// Constants for message
StatusChangeRequest.Constants = {
  RED: 0,
  BLUE: 1,
  PURPLE: 2,
  ARMOR: 0,
  SMALL_BUFF: 1,
  BIG_BUFF: 2,
  ARMOR_ALL: 0,
  ARMOR_OUTPOST_BASE: 1,
  ARMOR_WITHOUT_OUTPOST_BASE: 2,
  EXPOSURE_LEVEL_0: 0,
  EXPOSURE_LEVEL_1: 1,
  EXPOSURE_LEVEL_2: 2,
  EXPOSURE_LEVEL_3: 3,
  EXPOSURE_LEVEL_4: 4,
}

class StatusChangeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.switch_is_success = null;
    }
    else {
      if (initObj.hasOwnProperty('switch_is_success')) {
        this.switch_is_success = initObj.switch_is_success
      }
      else {
        this.switch_is_success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StatusChangeResponse
    // Serialize message field [switch_is_success]
    bufferOffset = _serializer.bool(obj.switch_is_success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StatusChangeResponse
    let len;
    let data = new StatusChangeResponse(null);
    // Deserialize message field [switch_is_success]
    data.switch_is_success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/StatusChangeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b239f2cd0aa0d5816b7c3243eb924c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool switch_is_success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StatusChangeResponse(null);
    if (msg.switch_is_success !== undefined) {
      resolved.switch_is_success = msg.switch_is_success;
    }
    else {
      resolved.switch_is_success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StatusChangeRequest,
  Response: StatusChangeResponse,
  md5sum() { return '6a08dcf232cfcfc7c322ef15785928fb'; },
  datatype() { return 'rm_msgs/StatusChange'; }
};
