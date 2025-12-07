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

class VTReceiverControlData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joystick_r_x = null;
      this.joystick_r_y = null;
      this.joystick_l_y = null;
      this.joystick_l_x = null;
      this.mode_switch = null;
      this.pause_button = null;
      this.custom_button_l = null;
      this.custom_button_r = null;
      this.wheel = null;
      this.trigger = null;
      this.mouse_x = null;
      this.mouse_y = null;
      this.mouse_wheel = null;
      this.mouse_left_down = null;
      this.mouse_right_down = null;
      this.mouse_mid_down = null;
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
      if (initObj.hasOwnProperty('joystick_r_x')) {
        this.joystick_r_x = initObj.joystick_r_x
      }
      else {
        this.joystick_r_x = 0.0;
      }
      if (initObj.hasOwnProperty('joystick_r_y')) {
        this.joystick_r_y = initObj.joystick_r_y
      }
      else {
        this.joystick_r_y = 0.0;
      }
      if (initObj.hasOwnProperty('joystick_l_y')) {
        this.joystick_l_y = initObj.joystick_l_y
      }
      else {
        this.joystick_l_y = 0.0;
      }
      if (initObj.hasOwnProperty('joystick_l_x')) {
        this.joystick_l_x = initObj.joystick_l_x
      }
      else {
        this.joystick_l_x = 0.0;
      }
      if (initObj.hasOwnProperty('mode_switch')) {
        this.mode_switch = initObj.mode_switch
      }
      else {
        this.mode_switch = 0;
      }
      if (initObj.hasOwnProperty('pause_button')) {
        this.pause_button = initObj.pause_button
      }
      else {
        this.pause_button = false;
      }
      if (initObj.hasOwnProperty('custom_button_l')) {
        this.custom_button_l = initObj.custom_button_l
      }
      else {
        this.custom_button_l = false;
      }
      if (initObj.hasOwnProperty('custom_button_r')) {
        this.custom_button_r = initObj.custom_button_r
      }
      else {
        this.custom_button_r = false;
      }
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0.0;
      }
      if (initObj.hasOwnProperty('trigger')) {
        this.trigger = initObj.trigger
      }
      else {
        this.trigger = false;
      }
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
      if (initObj.hasOwnProperty('mouse_wheel')) {
        this.mouse_wheel = initObj.mouse_wheel
      }
      else {
        this.mouse_wheel = 0;
      }
      if (initObj.hasOwnProperty('mouse_left_down')) {
        this.mouse_left_down = initObj.mouse_left_down
      }
      else {
        this.mouse_left_down = false;
      }
      if (initObj.hasOwnProperty('mouse_right_down')) {
        this.mouse_right_down = initObj.mouse_right_down
      }
      else {
        this.mouse_right_down = false;
      }
      if (initObj.hasOwnProperty('mouse_mid_down')) {
        this.mouse_mid_down = initObj.mouse_mid_down
      }
      else {
        this.mouse_mid_down = false;
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
    // Serializes a message object of type VTReceiverControlData
    // Serialize message field [joystick_r_x]
    bufferOffset = _serializer.float64(obj.joystick_r_x, buffer, bufferOffset);
    // Serialize message field [joystick_r_y]
    bufferOffset = _serializer.float64(obj.joystick_r_y, buffer, bufferOffset);
    // Serialize message field [joystick_l_y]
    bufferOffset = _serializer.float64(obj.joystick_l_y, buffer, bufferOffset);
    // Serialize message field [joystick_l_x]
    bufferOffset = _serializer.float64(obj.joystick_l_x, buffer, bufferOffset);
    // Serialize message field [mode_switch]
    bufferOffset = _serializer.uint8(obj.mode_switch, buffer, bufferOffset);
    // Serialize message field [pause_button]
    bufferOffset = _serializer.bool(obj.pause_button, buffer, bufferOffset);
    // Serialize message field [custom_button_l]
    bufferOffset = _serializer.bool(obj.custom_button_l, buffer, bufferOffset);
    // Serialize message field [custom_button_r]
    bufferOffset = _serializer.bool(obj.custom_button_r, buffer, bufferOffset);
    // Serialize message field [wheel]
    bufferOffset = _serializer.float64(obj.wheel, buffer, bufferOffset);
    // Serialize message field [trigger]
    bufferOffset = _serializer.bool(obj.trigger, buffer, bufferOffset);
    // Serialize message field [mouse_x]
    bufferOffset = _serializer.int16(obj.mouse_x, buffer, bufferOffset);
    // Serialize message field [mouse_y]
    bufferOffset = _serializer.int16(obj.mouse_y, buffer, bufferOffset);
    // Serialize message field [mouse_wheel]
    bufferOffset = _serializer.int16(obj.mouse_wheel, buffer, bufferOffset);
    // Serialize message field [mouse_left_down]
    bufferOffset = _serializer.bool(obj.mouse_left_down, buffer, bufferOffset);
    // Serialize message field [mouse_right_down]
    bufferOffset = _serializer.bool(obj.mouse_right_down, buffer, bufferOffset);
    // Serialize message field [mouse_mid_down]
    bufferOffset = _serializer.bool(obj.mouse_mid_down, buffer, bufferOffset);
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
    //deserializes a message object of type VTReceiverControlData
    let len;
    let data = new VTReceiverControlData(null);
    // Deserialize message field [joystick_r_x]
    data.joystick_r_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joystick_r_y]
    data.joystick_r_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joystick_l_y]
    data.joystick_l_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [joystick_l_x]
    data.joystick_l_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [mode_switch]
    data.mode_switch = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pause_button]
    data.pause_button = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [custom_button_l]
    data.custom_button_l = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [custom_button_r]
    data.custom_button_r = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [wheel]
    data.wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [trigger]
    data.trigger = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mouse_x]
    data.mouse_x = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_y]
    data.mouse_y = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_wheel]
    data.mouse_wheel = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [mouse_left_down]
    data.mouse_left_down = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mouse_right_down]
    data.mouse_right_down = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [mouse_mid_down]
    data.mouse_mid_down = _deserializer.bool(buffer, bufferOffset);
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
    return 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/VTReceiverControlData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ccb3d14b76ed93d4c7a7597427ff5b6f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 joystick_r_x
    float64 joystick_r_y
    float64 joystick_l_y
    float64 joystick_l_x
    
    uint8 mode_switch
    uint8 MODE_C = 0
    uint8 MODE_N = 1
    uint8 MODE_S = 2
    
    bool pause_button
    bool custom_button_l
    bool custom_button_r
    float64 wheel
    bool trigger
    
    int16 mouse_x
    int16 mouse_y
    int16 mouse_wheel
    bool mouse_left_down
    bool mouse_right_down
    bool mouse_mid_down
    
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
    const resolved = new VTReceiverControlData(null);
    if (msg.joystick_r_x !== undefined) {
      resolved.joystick_r_x = msg.joystick_r_x;
    }
    else {
      resolved.joystick_r_x = 0.0
    }

    if (msg.joystick_r_y !== undefined) {
      resolved.joystick_r_y = msg.joystick_r_y;
    }
    else {
      resolved.joystick_r_y = 0.0
    }

    if (msg.joystick_l_y !== undefined) {
      resolved.joystick_l_y = msg.joystick_l_y;
    }
    else {
      resolved.joystick_l_y = 0.0
    }

    if (msg.joystick_l_x !== undefined) {
      resolved.joystick_l_x = msg.joystick_l_x;
    }
    else {
      resolved.joystick_l_x = 0.0
    }

    if (msg.mode_switch !== undefined) {
      resolved.mode_switch = msg.mode_switch;
    }
    else {
      resolved.mode_switch = 0
    }

    if (msg.pause_button !== undefined) {
      resolved.pause_button = msg.pause_button;
    }
    else {
      resolved.pause_button = false
    }

    if (msg.custom_button_l !== undefined) {
      resolved.custom_button_l = msg.custom_button_l;
    }
    else {
      resolved.custom_button_l = false
    }

    if (msg.custom_button_r !== undefined) {
      resolved.custom_button_r = msg.custom_button_r;
    }
    else {
      resolved.custom_button_r = false
    }

    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0.0
    }

    if (msg.trigger !== undefined) {
      resolved.trigger = msg.trigger;
    }
    else {
      resolved.trigger = false
    }

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

    if (msg.mouse_wheel !== undefined) {
      resolved.mouse_wheel = msg.mouse_wheel;
    }
    else {
      resolved.mouse_wheel = 0
    }

    if (msg.mouse_left_down !== undefined) {
      resolved.mouse_left_down = msg.mouse_left_down;
    }
    else {
      resolved.mouse_left_down = false
    }

    if (msg.mouse_right_down !== undefined) {
      resolved.mouse_right_down = msg.mouse_right_down;
    }
    else {
      resolved.mouse_right_down = false
    }

    if (msg.mouse_mid_down !== undefined) {
      resolved.mouse_mid_down = msg.mouse_mid_down;
    }
    else {
      resolved.mouse_mid_down = false
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

// Constants for message
VTReceiverControlData.Constants = {
  MODE_C: 0,
  MODE_N: 1,
  MODE_S: 2,
}

module.exports = VTReceiverControlData;
