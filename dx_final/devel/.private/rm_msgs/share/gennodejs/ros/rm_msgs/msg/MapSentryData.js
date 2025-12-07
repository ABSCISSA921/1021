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

class MapSentryData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.intention = null;
      this.start_position_x = null;
      this.start_position_y = null;
      this.delta_x = null;
      this.delta_y = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('intention')) {
        this.intention = initObj.intention
      }
      else {
        this.intention = 0;
      }
      if (initObj.hasOwnProperty('start_position_x')) {
        this.start_position_x = initObj.start_position_x
      }
      else {
        this.start_position_x = 0;
      }
      if (initObj.hasOwnProperty('start_position_y')) {
        this.start_position_y = initObj.start_position_y
      }
      else {
        this.start_position_y = 0;
      }
      if (initObj.hasOwnProperty('delta_x')) {
        this.delta_x = initObj.delta_x
      }
      else {
        this.delta_x = new Array(49).fill(0);
      }
      if (initObj.hasOwnProperty('delta_y')) {
        this.delta_y = initObj.delta_y
      }
      else {
        this.delta_y = new Array(49).fill(0);
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
    // Serializes a message object of type MapSentryData
    // Serialize message field [intention]
    bufferOffset = _serializer.uint8(obj.intention, buffer, bufferOffset);
    // Serialize message field [start_position_x]
    bufferOffset = _serializer.uint16(obj.start_position_x, buffer, bufferOffset);
    // Serialize message field [start_position_y]
    bufferOffset = _serializer.uint16(obj.start_position_y, buffer, bufferOffset);
    // Check that the constant length array field [delta_x] has the right length
    if (obj.delta_x.length !== 49) {
      throw new Error('Unable to serialize array field delta_x - length must be 49')
    }
    // Serialize message field [delta_x]
    bufferOffset = _arraySerializer.int8(obj.delta_x, buffer, bufferOffset, 49);
    // Check that the constant length array field [delta_y] has the right length
    if (obj.delta_y.length !== 49) {
      throw new Error('Unable to serialize array field delta_y - length must be 49')
    }
    // Serialize message field [delta_y]
    bufferOffset = _arraySerializer.int8(obj.delta_y, buffer, bufferOffset, 49);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapSentryData
    let len;
    let data = new MapSentryData(null);
    // Deserialize message field [intention]
    data.intention = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_position_x]
    data.start_position_x = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [start_position_y]
    data.start_position_y = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [delta_x]
    data.delta_x = _arrayDeserializer.int8(buffer, bufferOffset, 49)
    // Deserialize message field [delta_y]
    data.delta_y = _arrayDeserializer.int8(buffer, bufferOffset, 49)
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 111;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/MapSentryData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6e15a95bf254643938dfaa446ff12c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 intention
    uint16 start_position_x
    uint16 start_position_y
    int8[49] delta_x
    int8[49] delta_y
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapSentryData(null);
    if (msg.intention !== undefined) {
      resolved.intention = msg.intention;
    }
    else {
      resolved.intention = 0
    }

    if (msg.start_position_x !== undefined) {
      resolved.start_position_x = msg.start_position_x;
    }
    else {
      resolved.start_position_x = 0
    }

    if (msg.start_position_y !== undefined) {
      resolved.start_position_y = msg.start_position_y;
    }
    else {
      resolved.start_position_y = 0
    }

    if (msg.delta_x !== undefined) {
      resolved.delta_x = msg.delta_x;
    }
    else {
      resolved.delta_x = new Array(49).fill(0)
    }

    if (msg.delta_y !== undefined) {
      resolved.delta_y = msg.delta_y;
    }
    else {
      resolved.delta_y = new Array(49).fill(0)
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

module.exports = MapSentryData;
