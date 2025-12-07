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

class PowerManagementUnknownExceptionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.abnormal_reset_reason = null;
      this.state_machine_before_reset_mode = null;
      this.power_management_before_reset_topology = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('abnormal_reset_reason')) {
        this.abnormal_reset_reason = initObj.abnormal_reset_reason
      }
      else {
        this.abnormal_reset_reason = 0;
      }
      if (initObj.hasOwnProperty('state_machine_before_reset_mode')) {
        this.state_machine_before_reset_mode = initObj.state_machine_before_reset_mode
      }
      else {
        this.state_machine_before_reset_mode = 0;
      }
      if (initObj.hasOwnProperty('power_management_before_reset_topology')) {
        this.power_management_before_reset_topology = initObj.power_management_before_reset_topology
      }
      else {
        this.power_management_before_reset_topology = 0;
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
    // Serializes a message object of type PowerManagementUnknownExceptionData
    // Serialize message field [abnormal_reset_reason]
    bufferOffset = _serializer.uint8(obj.abnormal_reset_reason, buffer, bufferOffset);
    // Serialize message field [state_machine_before_reset_mode]
    bufferOffset = _serializer.uint8(obj.state_machine_before_reset_mode, buffer, bufferOffset);
    // Serialize message field [power_management_before_reset_topology]
    bufferOffset = _serializer.uint8(obj.power_management_before_reset_topology, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerManagementUnknownExceptionData
    let len;
    let data = new PowerManagementUnknownExceptionData(null);
    // Deserialize message field [abnormal_reset_reason]
    data.abnormal_reset_reason = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state_machine_before_reset_mode]
    data.state_machine_before_reset_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_management_before_reset_topology]
    data.power_management_before_reset_topology = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerManagementUnknownExceptionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe5796a7df8d9f8ea5253e8284933a59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 abnormal_reset_reason
    uint8 state_machine_before_reset_mode
    uint8 power_management_before_reset_topology
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerManagementUnknownExceptionData(null);
    if (msg.abnormal_reset_reason !== undefined) {
      resolved.abnormal_reset_reason = msg.abnormal_reset_reason;
    }
    else {
      resolved.abnormal_reset_reason = 0
    }

    if (msg.state_machine_before_reset_mode !== undefined) {
      resolved.state_machine_before_reset_mode = msg.state_machine_before_reset_mode;
    }
    else {
      resolved.state_machine_before_reset_mode = 0
    }

    if (msg.power_management_before_reset_topology !== undefined) {
      resolved.power_management_before_reset_topology = msg.power_management_before_reset_topology;
    }
    else {
      resolved.power_management_before_reset_topology = 0
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

module.exports = PowerManagementUnknownExceptionData;
