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

class GameRobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_id = null;
      this.robot_level = null;
      this.remain_hp = null;
      this.max_hp = null;
      this.shooter_cooling_rate = null;
      this.shooter_cooling_limit = null;
      this.chassis_power_limit = null;
      this.mains_power_gimbal_output = null;
      this.mains_power_chassis_output = null;
      this.mains_power_shooter_output = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_id')) {
        this.robot_id = initObj.robot_id
      }
      else {
        this.robot_id = 0;
      }
      if (initObj.hasOwnProperty('robot_level')) {
        this.robot_level = initObj.robot_level
      }
      else {
        this.robot_level = 0;
      }
      if (initObj.hasOwnProperty('remain_hp')) {
        this.remain_hp = initObj.remain_hp
      }
      else {
        this.remain_hp = 0;
      }
      if (initObj.hasOwnProperty('max_hp')) {
        this.max_hp = initObj.max_hp
      }
      else {
        this.max_hp = 0;
      }
      if (initObj.hasOwnProperty('shooter_cooling_rate')) {
        this.shooter_cooling_rate = initObj.shooter_cooling_rate
      }
      else {
        this.shooter_cooling_rate = 0;
      }
      if (initObj.hasOwnProperty('shooter_cooling_limit')) {
        this.shooter_cooling_limit = initObj.shooter_cooling_limit
      }
      else {
        this.shooter_cooling_limit = 0;
      }
      if (initObj.hasOwnProperty('chassis_power_limit')) {
        this.chassis_power_limit = initObj.chassis_power_limit
      }
      else {
        this.chassis_power_limit = 0;
      }
      if (initObj.hasOwnProperty('mains_power_gimbal_output')) {
        this.mains_power_gimbal_output = initObj.mains_power_gimbal_output
      }
      else {
        this.mains_power_gimbal_output = 0;
      }
      if (initObj.hasOwnProperty('mains_power_chassis_output')) {
        this.mains_power_chassis_output = initObj.mains_power_chassis_output
      }
      else {
        this.mains_power_chassis_output = 0;
      }
      if (initObj.hasOwnProperty('mains_power_shooter_output')) {
        this.mains_power_shooter_output = initObj.mains_power_shooter_output
      }
      else {
        this.mains_power_shooter_output = 0;
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
    // Serializes a message object of type GameRobotStatus
    // Serialize message field [robot_id]
    bufferOffset = _serializer.uint8(obj.robot_id, buffer, bufferOffset);
    // Serialize message field [robot_level]
    bufferOffset = _serializer.uint8(obj.robot_level, buffer, bufferOffset);
    // Serialize message field [remain_hp]
    bufferOffset = _serializer.uint16(obj.remain_hp, buffer, bufferOffset);
    // Serialize message field [max_hp]
    bufferOffset = _serializer.uint16(obj.max_hp, buffer, bufferOffset);
    // Serialize message field [shooter_cooling_rate]
    bufferOffset = _serializer.uint16(obj.shooter_cooling_rate, buffer, bufferOffset);
    // Serialize message field [shooter_cooling_limit]
    bufferOffset = _serializer.uint16(obj.shooter_cooling_limit, buffer, bufferOffset);
    // Serialize message field [chassis_power_limit]
    bufferOffset = _serializer.uint16(obj.chassis_power_limit, buffer, bufferOffset);
    // Serialize message field [mains_power_gimbal_output]
    bufferOffset = _serializer.uint8(obj.mains_power_gimbal_output, buffer, bufferOffset);
    // Serialize message field [mains_power_chassis_output]
    bufferOffset = _serializer.uint8(obj.mains_power_chassis_output, buffer, bufferOffset);
    // Serialize message field [mains_power_shooter_output]
    bufferOffset = _serializer.uint8(obj.mains_power_shooter_output, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameRobotStatus
    let len;
    let data = new GameRobotStatus(null);
    // Deserialize message field [robot_id]
    data.robot_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [robot_level]
    data.robot_level = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [remain_hp]
    data.remain_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_hp]
    data.max_hp = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [shooter_cooling_rate]
    data.shooter_cooling_rate = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [shooter_cooling_limit]
    data.shooter_cooling_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [chassis_power_limit]
    data.chassis_power_limit = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [mains_power_gimbal_output]
    data.mains_power_gimbal_output = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mains_power_chassis_output]
    data.mains_power_chassis_output = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [mains_power_shooter_output]
    data.mains_power_shooter_output = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GameRobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ac6464194db850fc9663b0f365bf8871';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RED_HERO = 1
    uint8 RED_ENGINEER = 2
    uint8 RED_STANDARD_3 = 3
    uint8 RED_STANDARD_4 = 4
    uint8 RED_STANDARD_5 = 5
    uint8 RED_AERIAL = 6
    uint8 RED_SENTRY = 7
    uint8 RED_DART = 8
    uint8 RED_RADAR = 9
    uint8 RED_OUTPUT = 10
    uint8 RED_BASE = 11
    uint8 BLUE_HERO = 101
    uint8 BLUE_ENGINEER = 102
    uint8 BLUE_STANDARD_3 = 103
    uint8 BLUE_STANDARD_4 = 104
    uint8 BLUE_STANDARD_5 = 105
    uint8 BLUE_AERIAL = 106
    uint8 BLUE_SENTRY = 107
    uint8 BLUE_DART = 108
    uint8 BLUE_RADAR = 109
    uint8 BLUE_OUTPUT = 110
    uint8 BLUE_BASE = 111
    
    uint8 robot_id
    uint8 robot_level
    uint16 remain_hp
    uint16 max_hp
    uint16 shooter_cooling_rate
    uint16 shooter_cooling_limit
    uint16 chassis_power_limit
    uint8 mains_power_gimbal_output
    uint8 mains_power_chassis_output
    uint8 mains_power_shooter_output
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameRobotStatus(null);
    if (msg.robot_id !== undefined) {
      resolved.robot_id = msg.robot_id;
    }
    else {
      resolved.robot_id = 0
    }

    if (msg.robot_level !== undefined) {
      resolved.robot_level = msg.robot_level;
    }
    else {
      resolved.robot_level = 0
    }

    if (msg.remain_hp !== undefined) {
      resolved.remain_hp = msg.remain_hp;
    }
    else {
      resolved.remain_hp = 0
    }

    if (msg.max_hp !== undefined) {
      resolved.max_hp = msg.max_hp;
    }
    else {
      resolved.max_hp = 0
    }

    if (msg.shooter_cooling_rate !== undefined) {
      resolved.shooter_cooling_rate = msg.shooter_cooling_rate;
    }
    else {
      resolved.shooter_cooling_rate = 0
    }

    if (msg.shooter_cooling_limit !== undefined) {
      resolved.shooter_cooling_limit = msg.shooter_cooling_limit;
    }
    else {
      resolved.shooter_cooling_limit = 0
    }

    if (msg.chassis_power_limit !== undefined) {
      resolved.chassis_power_limit = msg.chassis_power_limit;
    }
    else {
      resolved.chassis_power_limit = 0
    }

    if (msg.mains_power_gimbal_output !== undefined) {
      resolved.mains_power_gimbal_output = msg.mains_power_gimbal_output;
    }
    else {
      resolved.mains_power_gimbal_output = 0
    }

    if (msg.mains_power_chassis_output !== undefined) {
      resolved.mains_power_chassis_output = msg.mains_power_chassis_output;
    }
    else {
      resolved.mains_power_chassis_output = 0
    }

    if (msg.mains_power_shooter_output !== undefined) {
      resolved.mains_power_shooter_output = msg.mains_power_shooter_output;
    }
    else {
      resolved.mains_power_shooter_output = 0
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
GameRobotStatus.Constants = {
  RED_HERO: 1,
  RED_ENGINEER: 2,
  RED_STANDARD_3: 3,
  RED_STANDARD_4: 4,
  RED_STANDARD_5: 5,
  RED_AERIAL: 6,
  RED_SENTRY: 7,
  RED_DART: 8,
  RED_RADAR: 9,
  RED_OUTPUT: 10,
  RED_BASE: 11,
  BLUE_HERO: 101,
  BLUE_ENGINEER: 102,
  BLUE_STANDARD_3: 103,
  BLUE_STANDARD_4: 104,
  BLUE_STANDARD_5: 105,
  BLUE_AERIAL: 106,
  BLUE_SENTRY: 107,
  BLUE_DART: 108,
  BLUE_RADAR: 109,
  BLUE_OUTPUT: 110,
  BLUE_BASE: 111,
}

module.exports = GameRobotStatus;
