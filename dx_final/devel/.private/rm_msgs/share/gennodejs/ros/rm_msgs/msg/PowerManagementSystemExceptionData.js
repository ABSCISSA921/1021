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

class PowerManagementSystemExceptionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.r0 = null;
      this.r1 = null;
      this.r2 = null;
      this.r3 = null;
      this.r12 = null;
      this.LR = null;
      this.PC = null;
      this.PSR = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('r0')) {
        this.r0 = initObj.r0
      }
      else {
        this.r0 = 0;
      }
      if (initObj.hasOwnProperty('r1')) {
        this.r1 = initObj.r1
      }
      else {
        this.r1 = 0;
      }
      if (initObj.hasOwnProperty('r2')) {
        this.r2 = initObj.r2
      }
      else {
        this.r2 = 0;
      }
      if (initObj.hasOwnProperty('r3')) {
        this.r3 = initObj.r3
      }
      else {
        this.r3 = 0;
      }
      if (initObj.hasOwnProperty('r12')) {
        this.r12 = initObj.r12
      }
      else {
        this.r12 = 0;
      }
      if (initObj.hasOwnProperty('LR')) {
        this.LR = initObj.LR
      }
      else {
        this.LR = 0;
      }
      if (initObj.hasOwnProperty('PC')) {
        this.PC = initObj.PC
      }
      else {
        this.PC = 0;
      }
      if (initObj.hasOwnProperty('PSR')) {
        this.PSR = initObj.PSR
      }
      else {
        this.PSR = 0;
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
    // Serializes a message object of type PowerManagementSystemExceptionData
    // Serialize message field [r0]
    bufferOffset = _serializer.uint32(obj.r0, buffer, bufferOffset);
    // Serialize message field [r1]
    bufferOffset = _serializer.uint32(obj.r1, buffer, bufferOffset);
    // Serialize message field [r2]
    bufferOffset = _serializer.uint32(obj.r2, buffer, bufferOffset);
    // Serialize message field [r3]
    bufferOffset = _serializer.uint32(obj.r3, buffer, bufferOffset);
    // Serialize message field [r12]
    bufferOffset = _serializer.uint32(obj.r12, buffer, bufferOffset);
    // Serialize message field [LR]
    bufferOffset = _serializer.uint32(obj.LR, buffer, bufferOffset);
    // Serialize message field [PC]
    bufferOffset = _serializer.uint32(obj.PC, buffer, bufferOffset);
    // Serialize message field [PSR]
    bufferOffset = _serializer.uint32(obj.PSR, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerManagementSystemExceptionData
    let len;
    let data = new PowerManagementSystemExceptionData(null);
    // Deserialize message field [r0]
    data.r0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r1]
    data.r1 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r2]
    data.r2 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r3]
    data.r3 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [r12]
    data.r12 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [LR]
    data.LR = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [PC]
    data.PC = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [PSR]
    data.PSR = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerManagementSystemExceptionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '48dc20c9346b76eeb74bcfd0aefcc86d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 r0
    uint32 r1
    uint32 r2
    uint32 r3
    uint32 r12
    uint32 LR
    uint32 PC
    uint32 PSR
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerManagementSystemExceptionData(null);
    if (msg.r0 !== undefined) {
      resolved.r0 = msg.r0;
    }
    else {
      resolved.r0 = 0
    }

    if (msg.r1 !== undefined) {
      resolved.r1 = msg.r1;
    }
    else {
      resolved.r1 = 0
    }

    if (msg.r2 !== undefined) {
      resolved.r2 = msg.r2;
    }
    else {
      resolved.r2 = 0
    }

    if (msg.r3 !== undefined) {
      resolved.r3 = msg.r3;
    }
    else {
      resolved.r3 = 0
    }

    if (msg.r12 !== undefined) {
      resolved.r12 = msg.r12;
    }
    else {
      resolved.r12 = 0
    }

    if (msg.LR !== undefined) {
      resolved.LR = msg.LR;
    }
    else {
      resolved.LR = 0
    }

    if (msg.PC !== undefined) {
      resolved.PC = msg.PC;
    }
    else {
      resolved.PC = 0
    }

    if (msg.PSR !== undefined) {
      resolved.PSR = msg.PSR;
    }
    else {
      resolved.PSR = 0
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

module.exports = PowerManagementSystemExceptionData;
