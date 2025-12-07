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

class DbusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ch_l_x = null;
      this.ch_l_y = null;
      this.ch_r_x = null;
      this.ch_r_y = null;
      this.s_l = null;
      this.s_r = null;
      this.wheel = null;
      this.m_x = null;
      this.m_y = null;
      this.m_z = null;
      this.p_l = null;
      this.p_r = null;
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
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('ch_l_x')) {
        this.ch_l_x = initObj.ch_l_x
      }
      else {
        this.ch_l_x = 0.0;
      }
      if (initObj.hasOwnProperty('ch_l_y')) {
        this.ch_l_y = initObj.ch_l_y
      }
      else {
        this.ch_l_y = 0.0;
      }
      if (initObj.hasOwnProperty('ch_r_x')) {
        this.ch_r_x = initObj.ch_r_x
      }
      else {
        this.ch_r_x = 0.0;
      }
      if (initObj.hasOwnProperty('ch_r_y')) {
        this.ch_r_y = initObj.ch_r_y
      }
      else {
        this.ch_r_y = 0.0;
      }
      if (initObj.hasOwnProperty('s_l')) {
        this.s_l = initObj.s_l
      }
      else {
        this.s_l = 0;
      }
      if (initObj.hasOwnProperty('s_r')) {
        this.s_r = initObj.s_r
      }
      else {
        this.s_r = 0;
      }
      if (initObj.hasOwnProperty('wheel')) {
        this.wheel = initObj.wheel
      }
      else {
        this.wheel = 0.0;
      }
      if (initObj.hasOwnProperty('m_x')) {
        this.m_x = initObj.m_x
      }
      else {
        this.m_x = 0.0;
      }
      if (initObj.hasOwnProperty('m_y')) {
        this.m_y = initObj.m_y
      }
      else {
        this.m_y = 0.0;
      }
      if (initObj.hasOwnProperty('m_z')) {
        this.m_z = initObj.m_z
      }
      else {
        this.m_z = 0.0;
      }
      if (initObj.hasOwnProperty('p_l')) {
        this.p_l = initObj.p_l
      }
      else {
        this.p_l = false;
      }
      if (initObj.hasOwnProperty('p_r')) {
        this.p_r = initObj.p_r
      }
      else {
        this.p_r = false;
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
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DbusData
    // Serialize message field [ch_l_x]
    bufferOffset = _serializer.float64(obj.ch_l_x, buffer, bufferOffset);
    // Serialize message field [ch_l_y]
    bufferOffset = _serializer.float64(obj.ch_l_y, buffer, bufferOffset);
    // Serialize message field [ch_r_x]
    bufferOffset = _serializer.float64(obj.ch_r_x, buffer, bufferOffset);
    // Serialize message field [ch_r_y]
    bufferOffset = _serializer.float64(obj.ch_r_y, buffer, bufferOffset);
    // Serialize message field [s_l]
    bufferOffset = _serializer.uint8(obj.s_l, buffer, bufferOffset);
    // Serialize message field [s_r]
    bufferOffset = _serializer.uint8(obj.s_r, buffer, bufferOffset);
    // Serialize message field [wheel]
    bufferOffset = _serializer.float64(obj.wheel, buffer, bufferOffset);
    // Serialize message field [m_x]
    bufferOffset = _serializer.float64(obj.m_x, buffer, bufferOffset);
    // Serialize message field [m_y]
    bufferOffset = _serializer.float64(obj.m_y, buffer, bufferOffset);
    // Serialize message field [m_z]
    bufferOffset = _serializer.float64(obj.m_z, buffer, bufferOffset);
    // Serialize message field [p_l]
    bufferOffset = _serializer.bool(obj.p_l, buffer, bufferOffset);
    // Serialize message field [p_r]
    bufferOffset = _serializer.bool(obj.p_r, buffer, bufferOffset);
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
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DbusData
    let len;
    let data = new DbusData(null);
    // Deserialize message field [ch_l_x]
    data.ch_l_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_l_y]
    data.ch_l_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_r_x]
    data.ch_r_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ch_r_y]
    data.ch_r_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [s_l]
    data.s_l = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [s_r]
    data.s_r = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [wheel]
    data.wheel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m_x]
    data.m_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m_y]
    data.m_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [m_z]
    data.m_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [p_l]
    data.p_l = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [p_r]
    data.p_r = _deserializer.bool(buffer, bufferOffset);
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
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 92;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/DbusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0220a682827f4bc1471e95e351489508';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 UP = 1
    uint8 DOWN = 2
    uint8 MID = 3
    
    float64 ch_l_x
    float64 ch_l_y
    float64 ch_r_x
    float64 ch_r_y
    
    uint8 s_l
    uint8 s_r
    float64 wheel
    #mouse
    float64 m_x
    float64 m_y
    float64 m_z
    bool p_l
    bool p_r
    #key board
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
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DbusData(null);
    if (msg.ch_l_x !== undefined) {
      resolved.ch_l_x = msg.ch_l_x;
    }
    else {
      resolved.ch_l_x = 0.0
    }

    if (msg.ch_l_y !== undefined) {
      resolved.ch_l_y = msg.ch_l_y;
    }
    else {
      resolved.ch_l_y = 0.0
    }

    if (msg.ch_r_x !== undefined) {
      resolved.ch_r_x = msg.ch_r_x;
    }
    else {
      resolved.ch_r_x = 0.0
    }

    if (msg.ch_r_y !== undefined) {
      resolved.ch_r_y = msg.ch_r_y;
    }
    else {
      resolved.ch_r_y = 0.0
    }

    if (msg.s_l !== undefined) {
      resolved.s_l = msg.s_l;
    }
    else {
      resolved.s_l = 0
    }

    if (msg.s_r !== undefined) {
      resolved.s_r = msg.s_r;
    }
    else {
      resolved.s_r = 0
    }

    if (msg.wheel !== undefined) {
      resolved.wheel = msg.wheel;
    }
    else {
      resolved.wheel = 0.0
    }

    if (msg.m_x !== undefined) {
      resolved.m_x = msg.m_x;
    }
    else {
      resolved.m_x = 0.0
    }

    if (msg.m_y !== undefined) {
      resolved.m_y = msg.m_y;
    }
    else {
      resolved.m_y = 0.0
    }

    if (msg.m_z !== undefined) {
      resolved.m_z = msg.m_z;
    }
    else {
      resolved.m_z = 0.0
    }

    if (msg.p_l !== undefined) {
      resolved.p_l = msg.p_l;
    }
    else {
      resolved.p_l = false
    }

    if (msg.p_r !== undefined) {
      resolved.p_r = msg.p_r;
    }
    else {
      resolved.p_r = false
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

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
DbusData.Constants = {
  UP: 1,
  DOWN: 2,
  MID: 3,
}

module.exports = DbusData;
