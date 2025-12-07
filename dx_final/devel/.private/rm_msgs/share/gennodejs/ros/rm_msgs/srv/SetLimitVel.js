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

class SetLimitVelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limit_vel = null;
      this.slide_window = null;
    }
    else {
      if (initObj.hasOwnProperty('limit_vel')) {
        this.limit_vel = initObj.limit_vel
      }
      else {
        this.limit_vel = 0.0;
      }
      if (initObj.hasOwnProperty('slide_window')) {
        this.slide_window = initObj.slide_window
      }
      else {
        this.slide_window = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLimitVelRequest
    // Serialize message field [limit_vel]
    bufferOffset = _serializer.float32(obj.limit_vel, buffer, bufferOffset);
    // Serialize message field [slide_window]
    bufferOffset = _serializer.float32(obj.slide_window, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLimitVelRequest
    let len;
    let data = new SetLimitVelRequest(null);
    // Deserialize message field [limit_vel]
    data.limit_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [slide_window]
    data.slide_window = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/SetLimitVelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ec28a26da8772dd1b27050c880f597b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 limit_vel
    float32 slide_window
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLimitVelRequest(null);
    if (msg.limit_vel !== undefined) {
      resolved.limit_vel = msg.limit_vel;
    }
    else {
      resolved.limit_vel = 0.0
    }

    if (msg.slide_window !== undefined) {
      resolved.slide_window = msg.slide_window;
    }
    else {
      resolved.slide_window = 0.0
    }

    return resolved;
    }
};

class SetLimitVelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_limit_vel = null;
      this.current_slide_window = null;
    }
    else {
      if (initObj.hasOwnProperty('current_limit_vel')) {
        this.current_limit_vel = initObj.current_limit_vel
      }
      else {
        this.current_limit_vel = 0.0;
      }
      if (initObj.hasOwnProperty('current_slide_window')) {
        this.current_slide_window = initObj.current_slide_window
      }
      else {
        this.current_slide_window = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLimitVelResponse
    // Serialize message field [current_limit_vel]
    bufferOffset = _serializer.float32(obj.current_limit_vel, buffer, bufferOffset);
    // Serialize message field [current_slide_window]
    bufferOffset = _serializer.float32(obj.current_slide_window, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLimitVelResponse
    let len;
    let data = new SetLimitVelResponse(null);
    // Deserialize message field [current_limit_vel]
    data.current_limit_vel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [current_slide_window]
    data.current_slide_window = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/SetLimitVelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2d0d51ca2d28a31b8d1d5497aaafc13b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_limit_vel
    float32 current_slide_window
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLimitVelResponse(null);
    if (msg.current_limit_vel !== undefined) {
      resolved.current_limit_vel = msg.current_limit_vel;
    }
    else {
      resolved.current_limit_vel = 0.0
    }

    if (msg.current_slide_window !== undefined) {
      resolved.current_slide_window = msg.current_slide_window;
    }
    else {
      resolved.current_slide_window = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetLimitVelRequest,
  Response: SetLimitVelResponse,
  md5sum() { return '2245c522444d13b16c8466a61157b141'; },
  datatype() { return 'rm_msgs/SetLimitVel'; }
};
