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

class GameStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.game_type = null;
      this.game_progress = null;
      this.stage_remain_time = null;
      this.sync_time_stamp = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('game_type')) {
        this.game_type = initObj.game_type
      }
      else {
        this.game_type = 0;
      }
      if (initObj.hasOwnProperty('game_progress')) {
        this.game_progress = initObj.game_progress
      }
      else {
        this.game_progress = 0;
      }
      if (initObj.hasOwnProperty('stage_remain_time')) {
        this.stage_remain_time = initObj.stage_remain_time
      }
      else {
        this.stage_remain_time = 0;
      }
      if (initObj.hasOwnProperty('sync_time_stamp')) {
        this.sync_time_stamp = initObj.sync_time_stamp
      }
      else {
        this.sync_time_stamp = 0;
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
    // Serializes a message object of type GameStatus
    // Serialize message field [game_type]
    bufferOffset = _serializer.uint8(obj.game_type, buffer, bufferOffset);
    // Serialize message field [game_progress]
    bufferOffset = _serializer.uint8(obj.game_progress, buffer, bufferOffset);
    // Serialize message field [stage_remain_time]
    bufferOffset = _serializer.uint16(obj.stage_remain_time, buffer, bufferOffset);
    // Serialize message field [sync_time_stamp]
    bufferOffset = _serializer.uint64(obj.sync_time_stamp, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GameStatus
    let len;
    let data = new GameStatus(null);
    // Deserialize message field [game_type]
    data.game_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [game_progress]
    data.game_progress = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stage_remain_time]
    data.stage_remain_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [sync_time_stamp]
    data.sync_time_stamp = _deserializer.uint64(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GameStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9ea091244f69177ae6ba30273622db3a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 game_type
    uint8 game_progress
    uint16 stage_remain_time
    uint64 sync_time_stamp
    
    uint8 IN_BATTLE = 4
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GameStatus(null);
    if (msg.game_type !== undefined) {
      resolved.game_type = msg.game_type;
    }
    else {
      resolved.game_type = 0
    }

    if (msg.game_progress !== undefined) {
      resolved.game_progress = msg.game_progress;
    }
    else {
      resolved.game_progress = 0
    }

    if (msg.stage_remain_time !== undefined) {
      resolved.stage_remain_time = msg.stage_remain_time;
    }
    else {
      resolved.stage_remain_time = 0
    }

    if (msg.sync_time_stamp !== undefined) {
      resolved.sync_time_stamp = msg.sync_time_stamp;
    }
    else {
      resolved.sync_time_stamp = 0
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
GameStatus.Constants = {
  IN_BATTLE: 4,
}

module.exports = GameStatus;
