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

class GameRobotHp {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.red_1_robot_hp = null;
      this.red_2_robot_hp = null;
      this.red_3_robot_hp = null;
      this.red_4_robot_hp = null;
      this.red_7_robot_hp = null;
      this.red_outpost_hp = null;
      this.red_base_hp = null;
      this.blue_1_robot_hp = null;
      this.blue_2_robot_hp = null;
      this.blue_3_robot_hp = null;
      this.blue_4_robot_hp = null;
      this.blue_7_robot_hp = null;
      this.blue_outpost_hp = null;
      this.blue_base_hp = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('red_1_robot_hp')) {
        this.red_1_robot_hp = initObj.red_1_robot_hp
      }
      else {
        this.red_1_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('red_2_robot_hp')) {
        this.red_2_robot_hp = initObj.red_2_robot_hp
      }
      else {
        this.red_2_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('red_3_robot_hp')) {
        this.red_3_robot_hp = initObj.red_3_robot_hp
      }
      else {
        this.red_3_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('red_4_robot_hp')) {
        this.red_4_robot_hp = initObj.red_4_robot_hp
      }
      else {
        this.red_4_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('red_7_robot_hp')) {
        this.red_7_robot_hp = initObj.red_7_robot_hp
      }
      else {
        this.red_7_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('red_outpost_hp')) {
        this.red_outpost_hp = initObj.red_outpost_hp
      }
      else {
        this.red_outpost_hp = 0;
      }
      if (initObj.hasOwnProperty('red_base_hp')) {
        this.red_base_hp = initObj.red_base_hp
      }
      else {
        this.red_base_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_1_robot_hp')) {
        this.blue_1_robot_hp = initObj.blue_1_robot_hp
      }
      else {
        this.blue_1_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_2_robot_hp')) {
        this.blue_2_robot_hp = initObj.blue_2_robot_hp
      }
      else {
        this.blue_2_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_3_robot_hp')) {
        this.blue_3_robot_hp = initObj.blue_3_robot_hp
      }
      else {
        this.blue_3_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_4_robot_hp')) {
        this.blue_4_robot_hp = initObj.blue_4_robot_hp
      }
      else {
        this.blue_4_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_7_robot_hp')) {
        this.blue_7_robot_hp = initObj.blue_7_robot_hp
      }
      else {
        this.blue_7_robot_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_outpost_hp')) {
        this.blue_outpost_hp = initObj.blue_outpost_hp
      }
      else {
        this.blue_outpost_hp = 0;
      }
      if (initObj.hasOwnProperty('blue_base_hp')) {
        this.blue_base_hp = initObj.blue_base_hp
      }
      else {
        this.blue_base_hp = 0;
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
    // Serializes a message object of type GameRobotHp
    // Serialize message field [red_1_robot_hp]
    bufferOffset = _serializer.uint16(obj.red_1_robot_hp, buffer, bufferOffset);
    // Serialize message field [red_2_robot_hp]
    bufferOffset = _serializer.uint16(obj.red_2_robot_hp, buffer, bufferOffset);
    // Serialize message field [red_3_robot_hp]
    bufferOffset = _serializer.uint16(obj.red_3_robot_hp, buffer, bufferOffset);
    // Serialize message field [red_4_robot_hp]
    bufferOffset = _serializer.uint16(obj.red_4_robot_hp, buffer, bufferOffset);
    // Serialize message field [red_7_robot_hp]
    bufferOffset = _serializer.uint16(obj.red_7_robot_hp, buffer, bufferOffset);
    // Serialize message field [red_outpost_hp]
    bufferOffset = _serializer.uint16(obj.red_outpost_hp, buffer, bufferOffset);
    // Serialize message field [red_base_hp]
    bufferOffset = _serializer.uint16(obj.red_base_hp, buffer, bufferOffset);
    // Serialize message field [blue_1_robot_hp]
    bufferOffset = _serializer.uint16(obj.blue_1_robot_hp, buffer, bufferOffset);
    // Serialize message field [blue_2_robot_hp]
    bufferOffset = _serializer.uint16(obj.blue_2_robot_hp, buffer, bufferOffset);
    // Serialize message field [blue_3_robot_hp]
    bufferOffset = _serializer.uint16(obj.blue_3_robot_hp, buffer, bufferOffset);
    // Serialize message field [blue_4_robot_hp]
    bufferOffset = _serializer.uint16(obj.blue_4_robot_hp, buffer, bufferOffset);
    // Serialize message field [blue_7_robot_hp]
    bufferOffset = _serializer.uint16(obj.blue_7_robot_hp, buffer, bufferOffset);
    // Serialize message field [blue_outpost_hp]
    bufferOffset = _serializer.uint16(obj.blue_outpost_hp, buffer, bufferOffset);
    // Serialize message field [blue_base_hp]
    bufferOffset = _serializer.uint16(obj.blue_base_hp, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameRobotHp
    let len;
    let data = new GameRobotHp(null);
    // Deserialize message field [red_1_robot_hp]
    data.red_1_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_2_robot_hp]
    data.red_2_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_3_robot_hp]
    data.red_3_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_4_robot_hp]
    data.red_4_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_7_robot_hp]
    data.red_7_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_outpost_hp]
    data.red_outpost_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [red_base_hp]
    data.red_base_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_1_robot_hp]
    data.blue_1_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_2_robot_hp]
    data.blue_2_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_3_robot_hp]
    data.blue_3_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_4_robot_hp]
    data.blue_4_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_7_robot_hp]
    data.blue_7_robot_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_outpost_hp]
    data.blue_outpost_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [blue_base_hp]
    data.blue_base_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GameRobotHp';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5d546edb3e33187072fe91b31fba3ef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 red_1_robot_hp
    uint16 red_2_robot_hp
    uint16 red_3_robot_hp
    uint16 red_4_robot_hp
    uint16 red_7_robot_hp
    uint16 red_outpost_hp
    uint16 red_base_hp
    uint16 blue_1_robot_hp
    uint16 blue_2_robot_hp
    uint16 blue_3_robot_hp
    uint16 blue_4_robot_hp
    uint16 blue_7_robot_hp
    uint16 blue_outpost_hp
    uint16 blue_base_hp
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameRobotHp(null);
    if (msg.red_1_robot_hp !== undefined) {
      resolved.red_1_robot_hp = msg.red_1_robot_hp;
    }
    else {
      resolved.red_1_robot_hp = 0
    }

    if (msg.red_2_robot_hp !== undefined) {
      resolved.red_2_robot_hp = msg.red_2_robot_hp;
    }
    else {
      resolved.red_2_robot_hp = 0
    }

    if (msg.red_3_robot_hp !== undefined) {
      resolved.red_3_robot_hp = msg.red_3_robot_hp;
    }
    else {
      resolved.red_3_robot_hp = 0
    }

    if (msg.red_4_robot_hp !== undefined) {
      resolved.red_4_robot_hp = msg.red_4_robot_hp;
    }
    else {
      resolved.red_4_robot_hp = 0
    }

    if (msg.red_7_robot_hp !== undefined) {
      resolved.red_7_robot_hp = msg.red_7_robot_hp;
    }
    else {
      resolved.red_7_robot_hp = 0
    }

    if (msg.red_outpost_hp !== undefined) {
      resolved.red_outpost_hp = msg.red_outpost_hp;
    }
    else {
      resolved.red_outpost_hp = 0
    }

    if (msg.red_base_hp !== undefined) {
      resolved.red_base_hp = msg.red_base_hp;
    }
    else {
      resolved.red_base_hp = 0
    }

    if (msg.blue_1_robot_hp !== undefined) {
      resolved.blue_1_robot_hp = msg.blue_1_robot_hp;
    }
    else {
      resolved.blue_1_robot_hp = 0
    }

    if (msg.blue_2_robot_hp !== undefined) {
      resolved.blue_2_robot_hp = msg.blue_2_robot_hp;
    }
    else {
      resolved.blue_2_robot_hp = 0
    }

    if (msg.blue_3_robot_hp !== undefined) {
      resolved.blue_3_robot_hp = msg.blue_3_robot_hp;
    }
    else {
      resolved.blue_3_robot_hp = 0
    }

    if (msg.blue_4_robot_hp !== undefined) {
      resolved.blue_4_robot_hp = msg.blue_4_robot_hp;
    }
    else {
      resolved.blue_4_robot_hp = 0
    }

    if (msg.blue_7_robot_hp !== undefined) {
      resolved.blue_7_robot_hp = msg.blue_7_robot_hp;
    }
    else {
      resolved.blue_7_robot_hp = 0
    }

    if (msg.blue_outpost_hp !== undefined) {
      resolved.blue_outpost_hp = msg.blue_outpost_hp;
    }
    else {
      resolved.blue_outpost_hp = 0
    }

    if (msg.blue_base_hp !== undefined) {
      resolved.blue_base_hp = msg.blue_base_hp;
    }
    else {
      resolved.blue_base_hp = 0
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

module.exports = GameRobotHp;
