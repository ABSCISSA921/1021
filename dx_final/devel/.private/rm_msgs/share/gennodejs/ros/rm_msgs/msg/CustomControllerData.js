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

class CustomControllerData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.encoder_data = null;
      this.joystick_l_y_data = null;
      this.joystick_l_x_data = null;
      this.joystick_r_y_data = null;
      this.joystick_r_x_data = null;
      this.button_data = null;
    }
    else {
      if (initObj.hasOwnProperty('encoder_data')) {
        this.encoder_data = initObj.encoder_data
      }
      else {
        this.encoder_data = new Array(6).fill(0);
      }
      if (initObj.hasOwnProperty('joystick_l_y_data')) {
        this.joystick_l_y_data = initObj.joystick_l_y_data
      }
      else {
        this.joystick_l_y_data = 0;
      }
      if (initObj.hasOwnProperty('joystick_l_x_data')) {
        this.joystick_l_x_data = initObj.joystick_l_x_data
      }
      else {
        this.joystick_l_x_data = 0;
      }
      if (initObj.hasOwnProperty('joystick_r_y_data')) {
        this.joystick_r_y_data = initObj.joystick_r_y_data
      }
      else {
        this.joystick_r_y_data = 0;
      }
      if (initObj.hasOwnProperty('joystick_r_x_data')) {
        this.joystick_r_x_data = initObj.joystick_r_x_data
      }
      else {
        this.joystick_r_x_data = 0;
      }
      if (initObj.hasOwnProperty('button_data')) {
        this.button_data = initObj.button_data
      }
      else {
        this.button_data = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CustomControllerData
    // Check that the constant length array field [encoder_data] has the right length
    if (obj.encoder_data.length !== 6) {
      throw new Error('Unable to serialize array field encoder_data - length must be 6')
    }
    // Serialize message field [encoder_data]
    bufferOffset = _arraySerializer.float64(obj.encoder_data, buffer, bufferOffset, 6);
    // Serialize message field [joystick_l_y_data]
    bufferOffset = _serializer.uint16(obj.joystick_l_y_data, buffer, bufferOffset);
    // Serialize message field [joystick_l_x_data]
    bufferOffset = _serializer.uint16(obj.joystick_l_x_data, buffer, bufferOffset);
    // Serialize message field [joystick_r_y_data]
    bufferOffset = _serializer.uint16(obj.joystick_r_y_data, buffer, bufferOffset);
    // Serialize message field [joystick_r_x_data]
    bufferOffset = _serializer.uint16(obj.joystick_r_x_data, buffer, bufferOffset);
    // Check that the constant length array field [button_data] has the right length
    if (obj.button_data.length !== 4) {
      throw new Error('Unable to serialize array field button_data - length must be 4')
    }
    // Serialize message field [button_data]
    bufferOffset = _arraySerializer.bool(obj.button_data, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CustomControllerData
    let len;
    let data = new CustomControllerData(null);
    // Deserialize message field [encoder_data]
    data.encoder_data = _arrayDeserializer.float64(buffer, bufferOffset, 6)
    // Deserialize message field [joystick_l_y_data]
    data.joystick_l_y_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [joystick_l_x_data]
    data.joystick_l_x_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [joystick_r_y_data]
    data.joystick_r_y_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [joystick_r_x_data]
    data.joystick_r_x_data = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [button_data]
    data.button_data = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/CustomControllerData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5a85b28a60657f47c3215f53168ea534';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[6] encoder_data
    
    uint16 joystick_l_y_data
    uint16 joystick_l_x_data
    uint16 joystick_r_y_data
    uint16 joystick_r_x_data
    
    bool[4] button_data
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CustomControllerData(null);
    if (msg.encoder_data !== undefined) {
      resolved.encoder_data = msg.encoder_data;
    }
    else {
      resolved.encoder_data = new Array(6).fill(0)
    }

    if (msg.joystick_l_y_data !== undefined) {
      resolved.joystick_l_y_data = msg.joystick_l_y_data;
    }
    else {
      resolved.joystick_l_y_data = 0
    }

    if (msg.joystick_l_x_data !== undefined) {
      resolved.joystick_l_x_data = msg.joystick_l_x_data;
    }
    else {
      resolved.joystick_l_x_data = 0
    }

    if (msg.joystick_r_y_data !== undefined) {
      resolved.joystick_r_y_data = msg.joystick_r_y_data;
    }
    else {
      resolved.joystick_r_y_data = 0
    }

    if (msg.joystick_r_x_data !== undefined) {
      resolved.joystick_r_x_data = msg.joystick_r_x_data;
    }
    else {
      resolved.joystick_r_x_data = 0
    }

    if (msg.button_data !== undefined) {
      resolved.button_data = msg.button_data;
    }
    else {
      resolved.button_data = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = CustomControllerData;
