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

class SupplyProjectileAction {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.reserved = null;
      this.supply_robot_id = null;
      this.supply_projectile_step = null;
      this.supply_projectile_num = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('reserved')) {
        this.reserved = initObj.reserved
      }
      else {
        this.reserved = 0;
      }
      if (initObj.hasOwnProperty('supply_robot_id')) {
        this.supply_robot_id = initObj.supply_robot_id
      }
      else {
        this.supply_robot_id = 0;
      }
      if (initObj.hasOwnProperty('supply_projectile_step')) {
        this.supply_projectile_step = initObj.supply_projectile_step
      }
      else {
        this.supply_projectile_step = 0;
      }
      if (initObj.hasOwnProperty('supply_projectile_num')) {
        this.supply_projectile_num = initObj.supply_projectile_num
      }
      else {
        this.supply_projectile_num = 0;
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
    // Serializes a message object of type SupplyProjectileAction
    // Serialize message field [reserved]
    bufferOffset = _serializer.uint8(obj.reserved, buffer, bufferOffset);
    // Serialize message field [supply_robot_id]
    bufferOffset = _serializer.uint8(obj.supply_robot_id, buffer, bufferOffset);
    // Serialize message field [supply_projectile_step]
    bufferOffset = _serializer.uint8(obj.supply_projectile_step, buffer, bufferOffset);
    // Serialize message field [supply_projectile_num]
    bufferOffset = _serializer.uint8(obj.supply_projectile_num, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SupplyProjectileAction
    let len;
    let data = new SupplyProjectileAction(null);
    // Deserialize message field [reserved]
    data.reserved = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [supply_robot_id]
    data.supply_robot_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [supply_projectile_step]
    data.supply_projectile_step = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [supply_projectile_num]
    data.supply_projectile_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/SupplyProjectileAction';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd81bba2bf8a15a489bbec0963e04690c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 reserved
    uint8 supply_robot_id
    uint8 supply_projectile_step
    uint8 supply_projectile_num
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SupplyProjectileAction(null);
    if (msg.reserved !== undefined) {
      resolved.reserved = msg.reserved;
    }
    else {
      resolved.reserved = 0
    }

    if (msg.supply_robot_id !== undefined) {
      resolved.supply_robot_id = msg.supply_robot_id;
    }
    else {
      resolved.supply_robot_id = 0
    }

    if (msg.supply_projectile_step !== undefined) {
      resolved.supply_projectile_step = msg.supply_projectile_step;
    }
    else {
      resolved.supply_projectile_step = 0
    }

    if (msg.supply_projectile_num !== undefined) {
      resolved.supply_projectile_num = msg.supply_projectile_num;
    }
    else {
      resolved.supply_projectile_num = 0
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

module.exports = SupplyProjectileAction;
