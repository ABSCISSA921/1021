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

class VTKeyboardMouseData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mouse_x = null;
      this.mouse_y = null;
      this.mouse_z = null;
      this.left_button_down = null;
      this.right_button_down = null;
      this.key_w = null;
      this.key_s = null;
      this.key_a = null;
      this.key_d = null;
      this.key_shift = null;
      this.key_ctrl = null;
      this.key_q = null;
      this.key_e = null;
      this.key_r = null;
      this.key_f = null;
      this.key_g = null;
      this.key_z = null;
      this.key_x = null;
      this.key_c = null;
      this.key_v = null;
      this.key_b = null;
    }
    else {
      if (initObj.hasOwnProperty('mouse_x')) {
        this.mouse_x = initObj.mouse_x
      }
      else {
        this.mouse_x = 0;
      }
      if (initObj.hasOwnProperty('mouse_y')) {
        this.mouse_y = initObj.mouse_y
      }
      else {
        this.mouse_y = 0;
      }
      if (initObj.hasOwnProperty('mouse_z')) {
        this.mouse_z = initObj.mouse_z
      }
      else {
        this.mouse_z = 0;
      }
      if (initObj.hasOwnProperty('left_button_down')) {
        this.left_button_down = initObj.left_button_down
      }
      else {
        this.left_button_down = false;
      }
      if (initObj.hasOwnProperty('right_button_down')) {
        this.right_button_down = initObj.right_button_down
      }
      else {
        this.right_button_down = false;
      }
      if (initObj.hasOwnProperty('key_w')) {
        this.key_w = initObj.key_w
      }
      else {
        this.key_w = false;
      }
      if (initObj.hasOwnProperty('key_s')) {
        this.key_s = initObj.key_s
      }
      else {
        this.key_s = false;
      }
      if (initObj.hasOwnProperty('key_a')) {
        this.key_a = initObj.key_a
      }
      else {
        this.key_a = false;
      }
      if (initObj.hasOwnProperty('key_d')) {
        this.key_d = initObj.key_d
      }
      else {
        this.key_d = false;
      }
      if (initObj.hasOwnProperty('key_shift')) {
        this.key_shift = initObj.key_shift
      }
      else {
        this.key_shift = false;
      }
      if (initObj.hasOwnProperty('key_ctrl')) {
        this.key_ctrl = initObj.key_ctrl
      }
      else {
        this.key_ctrl = false;
      }
      if (initObj.hasOwnProperty('key_q')) {
        this.key_q = initObj.key_q
      }
      else {
        this.key_q = false;
      }
      if (initObj.hasOwnProperty('key_e')) {
        this.key_e = initObj.key_e
      }
      else {
        this.key_e = false;
      }
      if (initObj.hasOwnProperty('key_r')) {
        this.key_r = initObj.key_r
      }
      else {
        this.key_r = false;
      }
      if (initObj.hasOwnProperty('key_f')) {
        this.key_f = initObj.key_f
      }
      else {
        this.key_f = false;
      }
      if (initObj.hasOwnProperty('key_g')) {
        this.key_g = initObj.key_g
      }
      else {
        this.key_g = false;
      }
      if (initObj.hasOwnProperty('key_z')) {
        this.key_z = initObj.key_z
      }
      else {
        this.key_z = false;
      }
      if (initObj.hasOwnProperty('key_x')) {
        this.key_x = initObj.key_x
      }
      else {
        this.key_x = false;
      }
      if (initObj.hasOwnProperty('key_c')) {
        this.key_c = initObj.key_c
      }
      else {
        this.key_c = false;
      }
      if (initObj.hasOwnProperty('key_v')) {
        this.key_v = initObj.key_v
      }
      else {
        this.key_v = false;
      }
      if (initObj.hasOwnProperty('key_b')) {
        this.key_b = initObj.key_b
      }
      else {
        this.key_b = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VTKeyboardMouseData
    // Serialize message field [mouse_x]
    bufferOffset = _serializer.int16(obj.mouse_x, buffer, bufferOffset);
    // Serialize message field [mouse_y]
    bufferOffset = _serializer.int16(obj.mouse_y, buffer, bufferOffset);
    // Serialize message field [mouse_z]
    bufferOffset = _serializer.int16(obj.mouse_z, buffer, bufferOffset);
    // Serialize message field [left_button_down]
    bufferOffset = _serializer.bool(obj.left_button_down, buffer, bufferOffset);
    // Serialize message field [right_button_down]
    bufferOffset = _serializer.bool(obj.right_button_down, buffer, bufferOffset);
    // Serialize message field [key_w]
    bufferOffset = _serializer.bool(obj.key_w, buffer, bufferOffset);
    // Serialize message field [key_s]
    bufferOffset = _serializer.bool(obj.key_s, buffer, bufferOffset);
    // Serialize message field [key_a]
    bufferOffset = _serializer.bool(obj.key_a, buffer, bufferOffset);
    // Serialize message field [key_d]
    bufferOffset = _serializer.bool(obj.key_d, buffer, bufferOffset);
    // Serialize message field [key_shift]
    bufferOffset = _serializer.bool(obj.key_shift, buffer, bufferOffset);
    // Serialize message field [key_ctrl]
    bufferOffset = _serializer.bool(obj.key_ctrl, buffer, bufferOffset);
    // Serialize message field [key_q]
    bufferOffset = _serializer.bool(obj.key_q, buffer, bufferOffset);
    // Serialize message field [key_e]
    bufferOffset = _serializer.bool(obj.key_e, buffer, bufferOffset);
    // Serialize message field [key_r]
    bufferOffset = _serializer.bool(obj.key_r, buffer, bufferOffset);
    // Serialize message field [key_f]
    bufferOffset = _serializer.bool(obj.key_f, buffer, bufferOffset);
    // Serialize message field [key_g]
    bufferOffset = _serializer.bool(obj.key_g, buffer, bufferOffset);
    // Serialize message field [key_z]
    bufferOffset = _serializer.bool(obj.key_z, buffer, bufferOffset);
    // Serialize message field [key_x]
    bufferOffset = _serializer.bool(obj.key_x, buffer, bufferOffset);
    // Serialize message field [key_c]
    bufferOffset = _serializer.bool(obj.key_c, buffer, bufferOffset);
    // Serialize message field [key_v]
    bufferOffset = _serializer.bool(obj.key_v, buffer, bufferOffset);
    // Serialize message field [key_b]
    bufferOffset = _serializer.bool(obj.key_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VTKeyboardMouseData
    let len;
    let data = new VTKeyboardMouseData(null);
    // Deserialize message field [mouse_x]
    data.mouse_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_y]
    data.mouse_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_z]
    data.mouse_z = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [left_button_down]
    data.left_button_down = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [right_button_down]
    data.right_button_down = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_w]
    data.key_w = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_s]
    data.key_s = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_a]
    data.key_a = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_d]
    data.key_d = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_shift]
    data.key_shift = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_ctrl]
    data.key_ctrl = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_q]
    data.key_q = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_e]
    data.key_e = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_r]
    data.key_r = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_f]
    data.key_f = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_g]
    data.key_g = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_z]
    data.key_z = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_x]
    data.key_x = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_c]
    data.key_c = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_v]
    data.key_v = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [key_b]
    data.key_b = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/VTKeyboardMouseData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd9f68e8d3ee2022670ec30249830ac1d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 mouse_x
    int16 mouse_y
    int16 mouse_z
    bool left_button_down
    bool right_button_down
    
    bool key_w
    bool key_s
    bool key_a
    bool key_d
    bool key_shift
    bool key_ctrl
    bool key_q
    bool key_e
    bool key_r
    bool key_f
    bool key_g
    bool key_z
    bool key_x
    bool key_c
    bool key_v
    bool key_b
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VTKeyboardMouseData(null);
    if (msg.mouse_x !== undefined) {
      resolved.mouse_x = msg.mouse_x;
    }
    else {
      resolved.mouse_x = 0
    }

    if (msg.mouse_y !== undefined) {
      resolved.mouse_y = msg.mouse_y;
    }
    else {
      resolved.mouse_y = 0
    }

    if (msg.mouse_z !== undefined) {
      resolved.mouse_z = msg.mouse_z;
    }
    else {
      resolved.mouse_z = 0
    }

    if (msg.left_button_down !== undefined) {
      resolved.left_button_down = msg.left_button_down;
    }
    else {
      resolved.left_button_down = false
    }

    if (msg.right_button_down !== undefined) {
      resolved.right_button_down = msg.right_button_down;
    }
    else {
      resolved.right_button_down = false
    }

    if (msg.key_w !== undefined) {
      resolved.key_w = msg.key_w;
    }
    else {
      resolved.key_w = false
    }

    if (msg.key_s !== undefined) {
      resolved.key_s = msg.key_s;
    }
    else {
      resolved.key_s = false
    }

    if (msg.key_a !== undefined) {
      resolved.key_a = msg.key_a;
    }
    else {
      resolved.key_a = false
    }

    if (msg.key_d !== undefined) {
      resolved.key_d = msg.key_d;
    }
    else {
      resolved.key_d = false
    }

    if (msg.key_shift !== undefined) {
      resolved.key_shift = msg.key_shift;
    }
    else {
      resolved.key_shift = false
    }

    if (msg.key_ctrl !== undefined) {
      resolved.key_ctrl = msg.key_ctrl;
    }
    else {
      resolved.key_ctrl = false
    }

    if (msg.key_q !== undefined) {
      resolved.key_q = msg.key_q;
    }
    else {
      resolved.key_q = false
    }

    if (msg.key_e !== undefined) {
      resolved.key_e = msg.key_e;
    }
    else {
      resolved.key_e = false
    }

    if (msg.key_r !== undefined) {
      resolved.key_r = msg.key_r;
    }
    else {
      resolved.key_r = false
    }

    if (msg.key_f !== undefined) {
      resolved.key_f = msg.key_f;
    }
    else {
      resolved.key_f = false
    }

    if (msg.key_g !== undefined) {
      resolved.key_g = msg.key_g;
    }
    else {
      resolved.key_g = false
    }

    if (msg.key_z !== undefined) {
      resolved.key_z = msg.key_z;
    }
    else {
      resolved.key_z = false
    }

    if (msg.key_x !== undefined) {
      resolved.key_x = msg.key_x;
    }
    else {
      resolved.key_x = false
    }

    if (msg.key_c !== undefined) {
      resolved.key_c = msg.key_c;
    }
    else {
      resolved.key_c = false
    }

    if (msg.key_v !== undefined) {
      resolved.key_v = msg.key_v;
    }
    else {
      resolved.key_v = false
    }

    if (msg.key_b !== undefined) {
      resolved.key_b = msg.key_b;
    }
    else {
      resolved.key_b = false
    }

    return resolved;
    }
};

module.exports = VTKeyboardMouseData;
