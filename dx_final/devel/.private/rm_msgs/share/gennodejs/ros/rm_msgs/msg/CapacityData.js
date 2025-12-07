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

class CapacityData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_power = null;
      this.expect_power = null;
      this.capacity_expect_charge_power = null;
      this.capacity_recent_charge_power = null;
      this.cap_power = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_power')) {
        this.chassis_power = initObj.chassis_power
      }
      else {
        this.chassis_power = 0;
      }
      if (initObj.hasOwnProperty('expect_power')) {
        this.expect_power = initObj.expect_power
      }
      else {
        this.expect_power = 0;
      }
      if (initObj.hasOwnProperty('capacity_expect_charge_power')) {
        this.capacity_expect_charge_power = initObj.capacity_expect_charge_power
      }
      else {
        this.capacity_expect_charge_power = 0;
      }
      if (initObj.hasOwnProperty('capacity_recent_charge_power')) {
        this.capacity_recent_charge_power = initObj.capacity_recent_charge_power
      }
      else {
        this.capacity_recent_charge_power = 0.0;
      }
      if (initObj.hasOwnProperty('cap_power')) {
        this.cap_power = initObj.cap_power
      }
      else {
        this.cap_power = 0.0;
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
    // Serializes a message object of type CapacityData
    // Serialize message field [chassis_power]
    bufferOffset = _serializer.uint8(obj.chassis_power, buffer, bufferOffset);
    // Serialize message field [expect_power]
    bufferOffset = _serializer.uint8(obj.expect_power, buffer, bufferOffset);
    // Serialize message field [capacity_expect_charge_power]
    bufferOffset = _serializer.uint8(obj.capacity_expect_charge_power, buffer, bufferOffset);
    // Serialize message field [capacity_recent_charge_power]
    bufferOffset = _serializer.float32(obj.capacity_recent_charge_power, buffer, bufferOffset);
    // Serialize message field [cap_power]
    bufferOffset = _serializer.float32(obj.cap_power, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CapacityData
    let len;
    let data = new CapacityData(null);
    // Deserialize message field [chassis_power]
    data.chassis_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [expect_power]
    data.expect_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [capacity_expect_charge_power]
    data.capacity_expect_charge_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [capacity_recent_charge_power]
    data.capacity_recent_charge_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cap_power]
    data.cap_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 19;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/CapacityData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ad6f6d030cbf10ddb62b620036fbab5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 chassis_power
    uint8 expect_power
    uint8 capacity_expect_charge_power
    float32 capacity_recent_charge_power
    float32 cap_power
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CapacityData(null);
    if (msg.chassis_power !== undefined) {
      resolved.chassis_power = msg.chassis_power;
    }
    else {
      resolved.chassis_power = 0
    }

    if (msg.expect_power !== undefined) {
      resolved.expect_power = msg.expect_power;
    }
    else {
      resolved.expect_power = 0
    }

    if (msg.capacity_expect_charge_power !== undefined) {
      resolved.capacity_expect_charge_power = msg.capacity_expect_charge_power;
    }
    else {
      resolved.capacity_expect_charge_power = 0
    }

    if (msg.capacity_recent_charge_power !== undefined) {
      resolved.capacity_recent_charge_power = msg.capacity_recent_charge_power;
    }
    else {
      resolved.capacity_recent_charge_power = 0.0
    }

    if (msg.cap_power !== undefined) {
      resolved.cap_power = msg.cap_power;
    }
    else {
      resolved.cap_power = 0.0
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

module.exports = CapacityData;
