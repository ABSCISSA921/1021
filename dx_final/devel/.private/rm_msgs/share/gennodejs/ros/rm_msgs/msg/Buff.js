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

class Buff {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.recovery_buff = null;
      this.cooling_buff = null;
      this.defence_buff = null;
      this.vulnerability_buff = null;
      this.attack_buff = null;
      this.remaining_energy = null;
    }
    else {
      if (initObj.hasOwnProperty('recovery_buff')) {
        this.recovery_buff = initObj.recovery_buff
      }
      else {
        this.recovery_buff = 0;
      }
      if (initObj.hasOwnProperty('cooling_buff')) {
        this.cooling_buff = initObj.cooling_buff
      }
      else {
        this.cooling_buff = 0;
      }
      if (initObj.hasOwnProperty('defence_buff')) {
        this.defence_buff = initObj.defence_buff
      }
      else {
        this.defence_buff = 0;
      }
      if (initObj.hasOwnProperty('vulnerability_buff')) {
        this.vulnerability_buff = initObj.vulnerability_buff
      }
      else {
        this.vulnerability_buff = 0;
      }
      if (initObj.hasOwnProperty('attack_buff')) {
        this.attack_buff = initObj.attack_buff
      }
      else {
        this.attack_buff = 0;
      }
      if (initObj.hasOwnProperty('remaining_energy')) {
        this.remaining_energy = initObj.remaining_energy
      }
      else {
        this.remaining_energy = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Buff
    // Serialize message field [recovery_buff]
    bufferOffset = _serializer.uint8(obj.recovery_buff, buffer, bufferOffset);
    // Serialize message field [cooling_buff]
    bufferOffset = _serializer.uint8(obj.cooling_buff, buffer, bufferOffset);
    // Serialize message field [defence_buff]
    bufferOffset = _serializer.uint8(obj.defence_buff, buffer, bufferOffset);
    // Serialize message field [vulnerability_buff]
    bufferOffset = _serializer.uint8(obj.vulnerability_buff, buffer, bufferOffset);
    // Serialize message field [attack_buff]
    bufferOffset = _serializer.uint16(obj.attack_buff, buffer, bufferOffset);
    // Serialize message field [remaining_energy]
    bufferOffset = _serializer.uint8(obj.remaining_energy, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Buff
    let len;
    let data = new Buff(null);
    // Deserialize message field [recovery_buff]
    data.recovery_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cooling_buff]
    data.cooling_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [defence_buff]
    data.defence_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vulnerability_buff]
    data.vulnerability_buff = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [attack_buff]
    data.attack_buff = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [remaining_energy]
    data.remaining_energy = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/Buff';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0350c419b72e90cb811a4148874b61cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 recovery_buff
    uint8 cooling_buff
    uint8 defence_buff
    uint8 vulnerability_buff
    uint16 attack_buff
    uint8 remaining_energy
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Buff(null);
    if (msg.recovery_buff !== undefined) {
      resolved.recovery_buff = msg.recovery_buff;
    }
    else {
      resolved.recovery_buff = 0
    }

    if (msg.cooling_buff !== undefined) {
      resolved.cooling_buff = msg.cooling_buff;
    }
    else {
      resolved.cooling_buff = 0
    }

    if (msg.defence_buff !== undefined) {
      resolved.defence_buff = msg.defence_buff;
    }
    else {
      resolved.defence_buff = 0
    }

    if (msg.vulnerability_buff !== undefined) {
      resolved.vulnerability_buff = msg.vulnerability_buff;
    }
    else {
      resolved.vulnerability_buff = 0
    }

    if (msg.attack_buff !== undefined) {
      resolved.attack_buff = msg.attack_buff;
    }
    else {
      resolved.attack_buff = 0
    }

    if (msg.remaining_energy !== undefined) {
      resolved.remaining_energy = msg.remaining_energy;
    }
    else {
      resolved.remaining_energy = 0
    }

    return resolved;
    }
};

module.exports = Buff;
