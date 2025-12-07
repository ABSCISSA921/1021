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

class EngineerUi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.control_mode = null;
      this.gripper_state = null;
      this.ex_arm_state = null;
      this.stone_num = null;
      this.step_queue_name = null;
      this.symbol = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = '';
      }
      if (initObj.hasOwnProperty('gripper_state')) {
        this.gripper_state = initObj.gripper_state
      }
      else {
        this.gripper_state = '';
      }
      if (initObj.hasOwnProperty('ex_arm_state')) {
        this.ex_arm_state = initObj.ex_arm_state
      }
      else {
        this.ex_arm_state = '';
      }
      if (initObj.hasOwnProperty('stone_num')) {
        this.stone_num = initObj.stone_num
      }
      else {
        this.stone_num = 0;
      }
      if (initObj.hasOwnProperty('step_queue_name')) {
        this.step_queue_name = initObj.step_queue_name
      }
      else {
        this.step_queue_name = '';
      }
      if (initObj.hasOwnProperty('symbol')) {
        this.symbol = initObj.symbol
      }
      else {
        this.symbol = 0;
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
    // Serializes a message object of type EngineerUi
    // Serialize message field [control_mode]
    bufferOffset = _serializer.string(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [gripper_state]
    bufferOffset = _serializer.string(obj.gripper_state, buffer, bufferOffset);
    // Serialize message field [ex_arm_state]
    bufferOffset = _serializer.string(obj.ex_arm_state, buffer, bufferOffset);
    // Serialize message field [stone_num]
    bufferOffset = _serializer.uint32(obj.stone_num, buffer, bufferOffset);
    // Serialize message field [step_queue_name]
    bufferOffset = _serializer.string(obj.step_queue_name, buffer, bufferOffset);
    // Serialize message field [symbol]
    bufferOffset = _serializer.uint32(obj.symbol, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EngineerUi
    let len;
    let data = new EngineerUi(null);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gripper_state]
    data.gripper_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ex_arm_state]
    data.ex_arm_state = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stone_num]
    data.stone_num = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [step_queue_name]
    data.step_queue_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [symbol]
    data.symbol = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.control_mode);
    length += _getByteLength(object.gripper_state);
    length += _getByteLength(object.ex_arm_state);
    length += _getByteLength(object.step_queue_name);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/EngineerUi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd63975e3d07f2008b665b034a02c094f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string control_mode
    string gripper_state
    string ex_arm_state
    uint32 stone_num
    
    string step_queue_name
    uint32 symbol
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EngineerUi(null);
    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = ''
    }

    if (msg.gripper_state !== undefined) {
      resolved.gripper_state = msg.gripper_state;
    }
    else {
      resolved.gripper_state = ''
    }

    if (msg.ex_arm_state !== undefined) {
      resolved.ex_arm_state = msg.ex_arm_state;
    }
    else {
      resolved.ex_arm_state = ''
    }

    if (msg.stone_num !== undefined) {
      resolved.stone_num = msg.stone_num;
    }
    else {
      resolved.stone_num = 0
    }

    if (msg.step_queue_name !== undefined) {
      resolved.step_queue_name = msg.step_queue_name;
    }
    else {
      resolved.step_queue_name = ''
    }

    if (msg.symbol !== undefined) {
      resolved.symbol = msg.symbol;
    }
    else {
      resolved.symbol = 0
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

module.exports = EngineerUi;
