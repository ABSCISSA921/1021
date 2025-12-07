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

class PowerManagementSampleAndStatusData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.chassis_power = null;
      this.cap_error_flag = null;
      this.cap_received_msg = null;
      this.capacity_remain_charge = null;
      this.capacity_discharge_power = null;
      this.state_machine_running_state = null;
      this.power_management_protection_info = null;
      this.power_management_topology = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('chassis_power')) {
        this.chassis_power = initObj.chassis_power
      }
      else {
        this.chassis_power = 0.0;
      }
      if (initObj.hasOwnProperty('cap_error_flag')) {
        this.cap_error_flag = initObj.cap_error_flag
      }
      else {
        this.cap_error_flag = 0.0;
      }
      if (initObj.hasOwnProperty('cap_received_msg')) {
        this.cap_received_msg = initObj.cap_received_msg
      }
      else {
        this.cap_received_msg = 0.0;
      }
      if (initObj.hasOwnProperty('capacity_remain_charge')) {
        this.capacity_remain_charge = initObj.capacity_remain_charge
      }
      else {
        this.capacity_remain_charge = 0.0;
      }
      if (initObj.hasOwnProperty('capacity_discharge_power')) {
        this.capacity_discharge_power = initObj.capacity_discharge_power
      }
      else {
        this.capacity_discharge_power = 0;
      }
      if (initObj.hasOwnProperty('state_machine_running_state')) {
        this.state_machine_running_state = initObj.state_machine_running_state
      }
      else {
        this.state_machine_running_state = 0;
      }
      if (initObj.hasOwnProperty('power_management_protection_info')) {
        this.power_management_protection_info = initObj.power_management_protection_info
      }
      else {
        this.power_management_protection_info = 0;
      }
      if (initObj.hasOwnProperty('power_management_topology')) {
        this.power_management_topology = initObj.power_management_topology
      }
      else {
        this.power_management_topology = 0;
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
    // Serializes a message object of type PowerManagementSampleAndStatusData
    // Serialize message field [chassis_power]
    bufferOffset = _serializer.float32(obj.chassis_power, buffer, bufferOffset);
    // Serialize message field [cap_error_flag]
    bufferOffset = _serializer.float32(obj.cap_error_flag, buffer, bufferOffset);
    // Serialize message field [cap_received_msg]
    bufferOffset = _serializer.float32(obj.cap_received_msg, buffer, bufferOffset);
    // Serialize message field [capacity_remain_charge]
    bufferOffset = _serializer.float32(obj.capacity_remain_charge, buffer, bufferOffset);
    // Serialize message field [capacity_discharge_power]
    bufferOffset = _serializer.uint8(obj.capacity_discharge_power, buffer, bufferOffset);
    // Serialize message field [state_machine_running_state]
    bufferOffset = _serializer.uint8(obj.state_machine_running_state, buffer, bufferOffset);
    // Serialize message field [power_management_protection_info]
    bufferOffset = _serializer.uint8(obj.power_management_protection_info, buffer, bufferOffset);
    // Serialize message field [power_management_topology]
    bufferOffset = _serializer.uint8(obj.power_management_topology, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PowerManagementSampleAndStatusData
    let len;
    let data = new PowerManagementSampleAndStatusData(null);
    // Deserialize message field [chassis_power]
    data.chassis_power = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cap_error_flag]
    data.cap_error_flag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [cap_received_msg]
    data.cap_received_msg = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacity_remain_charge]
    data.capacity_remain_charge = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [capacity_discharge_power]
    data.capacity_discharge_power = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [state_machine_running_state]
    data.state_machine_running_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_management_protection_info]
    data.power_management_protection_info = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_management_topology]
    data.power_management_topology = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/PowerManagementSampleAndStatusData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eaa23269a41939b9e11f8d60ee1fa5f6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 chassis_power
    float32 cap_error_flag
    float32 cap_received_msg
    float32 capacity_remain_charge
    uint8 capacity_discharge_power
    uint8 state_machine_running_state
    uint8 power_management_protection_info
    uint8 power_management_topology
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PowerManagementSampleAndStatusData(null);
    if (msg.chassis_power !== undefined) {
      resolved.chassis_power = msg.chassis_power;
    }
    else {
      resolved.chassis_power = 0.0
    }

    if (msg.cap_error_flag !== undefined) {
      resolved.cap_error_flag = msg.cap_error_flag;
    }
    else {
      resolved.cap_error_flag = 0.0
    }

    if (msg.cap_received_msg !== undefined) {
      resolved.cap_received_msg = msg.cap_received_msg;
    }
    else {
      resolved.cap_received_msg = 0.0
    }

    if (msg.capacity_remain_charge !== undefined) {
      resolved.capacity_remain_charge = msg.capacity_remain_charge;
    }
    else {
      resolved.capacity_remain_charge = 0.0
    }

    if (msg.capacity_discharge_power !== undefined) {
      resolved.capacity_discharge_power = msg.capacity_discharge_power;
    }
    else {
      resolved.capacity_discharge_power = 0
    }

    if (msg.state_machine_running_state !== undefined) {
      resolved.state_machine_running_state = msg.state_machine_running_state;
    }
    else {
      resolved.state_machine_running_state = 0
    }

    if (msg.power_management_protection_info !== undefined) {
      resolved.power_management_protection_info = msg.power_management_protection_info;
    }
    else {
      resolved.power_management_protection_info = 0
    }

    if (msg.power_management_topology !== undefined) {
      resolved.power_management_topology = msg.power_management_topology;
    }
    else {
      resolved.power_management_topology = 0
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

module.exports = PowerManagementSampleAndStatusData;
