// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class BalanceState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.mode = null;
      this.x = null;
      this.phi = null;
      this.theta = null;
      this.x_b_l = null;
      this.x_b_r = null;
      this.x_dot = null;
      this.phi_dot = null;
      this.theta_dot = null;
      this.x_b_l_dot = null;
      this.x_b_r_dot = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
      this.T_l = null;
      this.T_r = null;
      this.f_b_l = null;
      this.f_b_r = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('phi')) {
        this.phi = initObj.phi
      }
      else {
        this.phi = 0.0;
      }
      if (initObj.hasOwnProperty('theta')) {
        this.theta = initObj.theta
      }
      else {
        this.theta = 0.0;
      }
      if (initObj.hasOwnProperty('x_b_l')) {
        this.x_b_l = initObj.x_b_l
      }
      else {
        this.x_b_l = 0.0;
      }
      if (initObj.hasOwnProperty('x_b_r')) {
        this.x_b_r = initObj.x_b_r
      }
      else {
        this.x_b_r = 0.0;
      }
      if (initObj.hasOwnProperty('x_dot')) {
        this.x_dot = initObj.x_dot
      }
      else {
        this.x_dot = 0.0;
      }
      if (initObj.hasOwnProperty('phi_dot')) {
        this.phi_dot = initObj.phi_dot
      }
      else {
        this.phi_dot = 0.0;
      }
      if (initObj.hasOwnProperty('theta_dot')) {
        this.theta_dot = initObj.theta_dot
      }
      else {
        this.theta_dot = 0.0;
      }
      if (initObj.hasOwnProperty('x_b_l_dot')) {
        this.x_b_l_dot = initObj.x_b_l_dot
      }
      else {
        this.x_b_l_dot = 0.0;
      }
      if (initObj.hasOwnProperty('x_b_r_dot')) {
        this.x_b_r_dot = initObj.x_b_r_dot
      }
      else {
        this.x_b_r_dot = 0.0;
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = 0.0;
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = 0.0;
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = 0.0;
      }
      if (initObj.hasOwnProperty('T_l')) {
        this.T_l = initObj.T_l
      }
      else {
        this.T_l = 0.0;
      }
      if (initObj.hasOwnProperty('T_r')) {
        this.T_r = initObj.T_r
      }
      else {
        this.T_r = 0.0;
      }
      if (initObj.hasOwnProperty('f_b_l')) {
        this.f_b_l = initObj.f_b_l
      }
      else {
        this.f_b_l = 0.0;
      }
      if (initObj.hasOwnProperty('f_b_r')) {
        this.f_b_r = initObj.f_b_r
      }
      else {
        this.f_b_r = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BalanceState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [phi]
    bufferOffset = _serializer.float64(obj.phi, buffer, bufferOffset);
    // Serialize message field [theta]
    bufferOffset = _serializer.float64(obj.theta, buffer, bufferOffset);
    // Serialize message field [x_b_l]
    bufferOffset = _serializer.float64(obj.x_b_l, buffer, bufferOffset);
    // Serialize message field [x_b_r]
    bufferOffset = _serializer.float64(obj.x_b_r, buffer, bufferOffset);
    // Serialize message field [x_dot]
    bufferOffset = _serializer.float64(obj.x_dot, buffer, bufferOffset);
    // Serialize message field [phi_dot]
    bufferOffset = _serializer.float64(obj.phi_dot, buffer, bufferOffset);
    // Serialize message field [theta_dot]
    bufferOffset = _serializer.float64(obj.theta_dot, buffer, bufferOffset);
    // Serialize message field [x_b_l_dot]
    bufferOffset = _serializer.float64(obj.x_b_l_dot, buffer, bufferOffset);
    // Serialize message field [x_b_r_dot]
    bufferOffset = _serializer.float64(obj.x_b_r_dot, buffer, bufferOffset);
    // Serialize message field [acc_x]
    bufferOffset = _serializer.float64(obj.acc_x, buffer, bufferOffset);
    // Serialize message field [acc_y]
    bufferOffset = _serializer.float64(obj.acc_y, buffer, bufferOffset);
    // Serialize message field [acc_z]
    bufferOffset = _serializer.float64(obj.acc_z, buffer, bufferOffset);
    // Serialize message field [T_l]
    bufferOffset = _serializer.float64(obj.T_l, buffer, bufferOffset);
    // Serialize message field [T_r]
    bufferOffset = _serializer.float64(obj.T_r, buffer, bufferOffset);
    // Serialize message field [f_b_l]
    bufferOffset = _serializer.float64(obj.f_b_l, buffer, bufferOffset);
    // Serialize message field [f_b_r]
    bufferOffset = _serializer.float64(obj.f_b_r, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BalanceState
    let len;
    let data = new BalanceState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phi]
    data.phi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta]
    data.theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_b_l]
    data.x_b_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_b_r]
    data.x_b_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_dot]
    data.x_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [phi_dot]
    data.phi_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [theta_dot]
    data.theta_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_b_l_dot]
    data.x_b_l_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [x_b_r_dot]
    data.x_b_r_dot = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_x]
    data.acc_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_y]
    data.acc_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [acc_z]
    data.acc_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [T_l]
    data.T_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [T_r]
    data.T_r = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_b_l]
    data.f_b_l = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [f_b_r]
    data.f_b_r = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 137;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/BalanceState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '563c6259b4e510bcb83a9719793e4546';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8  NORMAL = 0
    uint8  FALLEN = 1
    
    std_msgs/Header header
    
    uint8 mode
    float64 x
    float64 phi
    float64 theta
    float64 x_b_l
    float64 x_b_r
    float64 x_dot
    float64 phi_dot
    float64 theta_dot
    float64 x_b_l_dot
    float64 x_b_r_dot
    float64 acc_x
    float64 acc_y
    float64 acc_z
    
    float64 T_l
    float64 T_r
    float64 f_b_l
    float64 f_b_r
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BalanceState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.phi !== undefined) {
      resolved.phi = msg.phi;
    }
    else {
      resolved.phi = 0.0
    }

    if (msg.theta !== undefined) {
      resolved.theta = msg.theta;
    }
    else {
      resolved.theta = 0.0
    }

    if (msg.x_b_l !== undefined) {
      resolved.x_b_l = msg.x_b_l;
    }
    else {
      resolved.x_b_l = 0.0
    }

    if (msg.x_b_r !== undefined) {
      resolved.x_b_r = msg.x_b_r;
    }
    else {
      resolved.x_b_r = 0.0
    }

    if (msg.x_dot !== undefined) {
      resolved.x_dot = msg.x_dot;
    }
    else {
      resolved.x_dot = 0.0
    }

    if (msg.phi_dot !== undefined) {
      resolved.phi_dot = msg.phi_dot;
    }
    else {
      resolved.phi_dot = 0.0
    }

    if (msg.theta_dot !== undefined) {
      resolved.theta_dot = msg.theta_dot;
    }
    else {
      resolved.theta_dot = 0.0
    }

    if (msg.x_b_l_dot !== undefined) {
      resolved.x_b_l_dot = msg.x_b_l_dot;
    }
    else {
      resolved.x_b_l_dot = 0.0
    }

    if (msg.x_b_r_dot !== undefined) {
      resolved.x_b_r_dot = msg.x_b_r_dot;
    }
    else {
      resolved.x_b_r_dot = 0.0
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = 0.0
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = 0.0
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = 0.0
    }

    if (msg.T_l !== undefined) {
      resolved.T_l = msg.T_l;
    }
    else {
      resolved.T_l = 0.0
    }

    if (msg.T_r !== undefined) {
      resolved.T_r = msg.T_r;
    }
    else {
      resolved.T_r = 0.0
    }

    if (msg.f_b_l !== undefined) {
      resolved.f_b_l = msg.f_b_l;
    }
    else {
      resolved.f_b_l = 0.0
    }

    if (msg.f_b_r !== undefined) {
      resolved.f_b_r = msg.f_b_r;
    }
    else {
      resolved.f_b_r = 0.0
    }

    return resolved;
    }
};

// Constants for message
BalanceState.Constants = {
  NORMAL: 0,
  FALLEN: 1,
}

module.exports = BalanceState;
