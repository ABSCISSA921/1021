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

class LocalHeatState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.friction_speed = null;
      this.friction_change_speed = null;
      this.friction_change_speed_derivative = null;
      this.has_shoot = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('friction_speed')) {
        this.friction_speed = initObj.friction_speed
      }
      else {
        this.friction_speed = 0.0;
      }
      if (initObj.hasOwnProperty('friction_change_speed')) {
        this.friction_change_speed = initObj.friction_change_speed
      }
      else {
        this.friction_change_speed = 0.0;
      }
      if (initObj.hasOwnProperty('friction_change_speed_derivative')) {
        this.friction_change_speed_derivative = initObj.friction_change_speed_derivative
      }
      else {
        this.friction_change_speed_derivative = 0.0;
      }
      if (initObj.hasOwnProperty('has_shoot')) {
        this.has_shoot = initObj.has_shoot
      }
      else {
        this.has_shoot = false;
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
    // Serializes a message object of type LocalHeatState
    // Serialize message field [friction_speed]
    bufferOffset = _serializer.float64(obj.friction_speed, buffer, bufferOffset);
    // Serialize message field [friction_change_speed]
    bufferOffset = _serializer.float64(obj.friction_change_speed, buffer, bufferOffset);
    // Serialize message field [friction_change_speed_derivative]
    bufferOffset = _serializer.float64(obj.friction_change_speed_derivative, buffer, bufferOffset);
    // Serialize message field [has_shoot]
    bufferOffset = _serializer.bool(obj.has_shoot, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalHeatState
    let len;
    let data = new LocalHeatState(null);
    // Deserialize message field [friction_speed]
    data.friction_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [friction_change_speed]
    data.friction_change_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [friction_change_speed_derivative]
    data.friction_change_speed_derivative = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [has_shoot]
    data.has_shoot = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/LocalHeatState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '29a8a14a26935854a78d9ab8fc58289b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 friction_speed
    float64 friction_change_speed
    float64 friction_change_speed_derivative
    bool has_shoot
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalHeatState(null);
    if (msg.friction_speed !== undefined) {
      resolved.friction_speed = msg.friction_speed;
    }
    else {
      resolved.friction_speed = 0.0
    }

    if (msg.friction_change_speed !== undefined) {
      resolved.friction_change_speed = msg.friction_change_speed;
    }
    else {
      resolved.friction_change_speed = 0.0
    }

    if (msg.friction_change_speed_derivative !== undefined) {
      resolved.friction_change_speed_derivative = msg.friction_change_speed_derivative;
    }
    else {
      resolved.friction_change_speed_derivative = 0.0
    }

    if (msg.has_shoot !== undefined) {
      resolved.has_shoot = msg.has_shoot;
    }
    else {
      resolved.has_shoot = false
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

module.exports = LocalHeatState;
