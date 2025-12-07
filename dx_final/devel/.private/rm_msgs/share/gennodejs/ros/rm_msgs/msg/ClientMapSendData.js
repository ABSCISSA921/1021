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

class ClientMapSendData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_position_x = null;
      this.target_position_y = null;
      this.command_keyboard = null;
      this.target_robot_ID = null;
      this.cmd_source = null;
    }
    else {
      if (initObj.hasOwnProperty('target_position_x')) {
        this.target_position_x = initObj.target_position_x
      }
      else {
        this.target_position_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_position_y')) {
        this.target_position_y = initObj.target_position_y
      }
      else {
        this.target_position_y = 0.0;
      }
      if (initObj.hasOwnProperty('command_keyboard')) {
        this.command_keyboard = initObj.command_keyboard
      }
      else {
        this.command_keyboard = 0;
      }
      if (initObj.hasOwnProperty('target_robot_ID')) {
        this.target_robot_ID = initObj.target_robot_ID
      }
      else {
        this.target_robot_ID = 0;
      }
      if (initObj.hasOwnProperty('cmd_source')) {
        this.cmd_source = initObj.cmd_source
      }
      else {
        this.cmd_source = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientMapSendData
    // Serialize message field [target_position_x]
    bufferOffset = _serializer.float32(obj.target_position_x, buffer, bufferOffset);
    // Serialize message field [target_position_y]
    bufferOffset = _serializer.float32(obj.target_position_y, buffer, bufferOffset);
    // Serialize message field [command_keyboard]
    bufferOffset = _serializer.uint8(obj.command_keyboard, buffer, bufferOffset);
    // Serialize message field [target_robot_ID]
    bufferOffset = _serializer.uint8(obj.target_robot_ID, buffer, bufferOffset);
    // Serialize message field [cmd_source]
    bufferOffset = _serializer.uint8(obj.cmd_source, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientMapSendData
    let len;
    let data = new ClientMapSendData(null);
    // Deserialize message field [target_position_x]
    data.target_position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_position_y]
    data.target_position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [command_keyboard]
    data.command_keyboard = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_robot_ID]
    data.target_robot_ID = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cmd_source]
    data.cmd_source = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ClientMapSendData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aee27039134a834173f127a33eff61f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 KEY_Q = 81
    uint8 KEY_W = 87
    uint8 KEY_E = 69
    uint8 KEY_R = 82
    uint8 KEY_T = 84
    uint8 KEY_Y = 89
    uint8 KEY_U = 85
    uint8 KEY_O = 79
    
    uint8 KEY_A = 65
    uint8 KEY_S = 83
    uint8 KEY_D = 68
    uint8 KEY_F = 70
    uint8 KEY_G = 71
    uint8 KEY_H = 72
    uint8 KEY_J = 74
    uint8 KEY_K = 75
    uint8 KEY_L = 76
    
    uint8 KEY_Z = 90
    uint8 KEY_X = 88
    uint8 KEY_C = 67
    uint8 KEY_V = 86
    uint8 KEY_N = 78
    
    float32 target_position_x
    float32 target_position_y
    uint8 command_keyboard
    uint8 target_robot_ID
    uint8 cmd_source
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientMapSendData(null);
    if (msg.target_position_x !== undefined) {
      resolved.target_position_x = msg.target_position_x;
    }
    else {
      resolved.target_position_x = 0.0
    }

    if (msg.target_position_y !== undefined) {
      resolved.target_position_y = msg.target_position_y;
    }
    else {
      resolved.target_position_y = 0.0
    }

    if (msg.command_keyboard !== undefined) {
      resolved.command_keyboard = msg.command_keyboard;
    }
    else {
      resolved.command_keyboard = 0
    }

    if (msg.target_robot_ID !== undefined) {
      resolved.target_robot_ID = msg.target_robot_ID;
    }
    else {
      resolved.target_robot_ID = 0
    }

    if (msg.cmd_source !== undefined) {
      resolved.cmd_source = msg.cmd_source;
    }
    else {
      resolved.cmd_source = 0
    }

    return resolved;
    }
};

// Constants for message
ClientMapSendData.Constants = {
  KEY_Q: 81,
  KEY_W: 87,
  KEY_E: 69,
  KEY_R: 82,
  KEY_T: 84,
  KEY_Y: 89,
  KEY_U: 85,
  KEY_O: 79,
  KEY_A: 65,
  KEY_S: 83,
  KEY_D: 68,
  KEY_F: 70,
  KEY_G: 71,
  KEY_H: 72,
  KEY_J: 74,
  KEY_K: 75,
  KEY_L: 76,
  KEY_Z: 90,
  KEY_X: 88,
  KEY_C: 67,
  KEY_V: 86,
  KEY_N: 78,
}

module.exports = ClientMapSendData;
