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

class EventData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.overlapping_supply_station_state = null;
      this.nan_overlapping_supply_station_state = null;
      this.supplier_zone_state = null;
      this.small_power_rune_state = null;
      this.large_power_rune_state = null;
      this.central_elevated_ground_state = null;
      this.trapezoidal_elevated_ground_state = null;
      this.be_hit_time = null;
      this.be_hit_target = null;
      this.central_point_state = null;
      this.own_fortress_state = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('overlapping_supply_station_state')) {
        this.overlapping_supply_station_state = initObj.overlapping_supply_station_state
      }
      else {
        this.overlapping_supply_station_state = false;
      }
      if (initObj.hasOwnProperty('nan_overlapping_supply_station_state')) {
        this.nan_overlapping_supply_station_state = initObj.nan_overlapping_supply_station_state
      }
      else {
        this.nan_overlapping_supply_station_state = false;
      }
      if (initObj.hasOwnProperty('supplier_zone_state')) {
        this.supplier_zone_state = initObj.supplier_zone_state
      }
      else {
        this.supplier_zone_state = false;
      }
      if (initObj.hasOwnProperty('small_power_rune_state')) {
        this.small_power_rune_state = initObj.small_power_rune_state
      }
      else {
        this.small_power_rune_state = false;
      }
      if (initObj.hasOwnProperty('large_power_rune_state')) {
        this.large_power_rune_state = initObj.large_power_rune_state
      }
      else {
        this.large_power_rune_state = false;
      }
      if (initObj.hasOwnProperty('central_elevated_ground_state')) {
        this.central_elevated_ground_state = initObj.central_elevated_ground_state
      }
      else {
        this.central_elevated_ground_state = 0;
      }
      if (initObj.hasOwnProperty('trapezoidal_elevated_ground_state')) {
        this.trapezoidal_elevated_ground_state = initObj.trapezoidal_elevated_ground_state
      }
      else {
        this.trapezoidal_elevated_ground_state = 0;
      }
      if (initObj.hasOwnProperty('be_hit_time')) {
        this.be_hit_time = initObj.be_hit_time
      }
      else {
        this.be_hit_time = 0;
      }
      if (initObj.hasOwnProperty('be_hit_target')) {
        this.be_hit_target = initObj.be_hit_target
      }
      else {
        this.be_hit_target = 0;
      }
      if (initObj.hasOwnProperty('central_point_state')) {
        this.central_point_state = initObj.central_point_state
      }
      else {
        this.central_point_state = 0;
      }
      if (initObj.hasOwnProperty('own_fortress_state')) {
        this.own_fortress_state = initObj.own_fortress_state
      }
      else {
        this.own_fortress_state = 0;
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
    // Serializes a message object of type EventData
    // Serialize message field [overlapping_supply_station_state]
    bufferOffset = _serializer.bool(obj.overlapping_supply_station_state, buffer, bufferOffset);
    // Serialize message field [nan_overlapping_supply_station_state]
    bufferOffset = _serializer.bool(obj.nan_overlapping_supply_station_state, buffer, bufferOffset);
    // Serialize message field [supplier_zone_state]
    bufferOffset = _serializer.bool(obj.supplier_zone_state, buffer, bufferOffset);
    // Serialize message field [small_power_rune_state]
    bufferOffset = _serializer.bool(obj.small_power_rune_state, buffer, bufferOffset);
    // Serialize message field [large_power_rune_state]
    bufferOffset = _serializer.bool(obj.large_power_rune_state, buffer, bufferOffset);
    // Serialize message field [central_elevated_ground_state]
    bufferOffset = _serializer.uint8(obj.central_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [trapezoidal_elevated_ground_state]
    bufferOffset = _serializer.uint8(obj.trapezoidal_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [be_hit_time]
    bufferOffset = _serializer.uint16(obj.be_hit_time, buffer, bufferOffset);
    // Serialize message field [be_hit_target]
    bufferOffset = _serializer.uint8(obj.be_hit_target, buffer, bufferOffset);
    // Serialize message field [central_point_state]
    bufferOffset = _serializer.uint8(obj.central_point_state, buffer, bufferOffset);
    // Serialize message field [own_fortress_state]
    bufferOffset = _serializer.uint8(obj.own_fortress_state, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EventData
    let len;
    let data = new EventData(null);
    // Deserialize message field [overlapping_supply_station_state]
    data.overlapping_supply_station_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [nan_overlapping_supply_station_state]
    data.nan_overlapping_supply_station_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [supplier_zone_state]
    data.supplier_zone_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [small_power_rune_state]
    data.small_power_rune_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [large_power_rune_state]
    data.large_power_rune_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [central_elevated_ground_state]
    data.central_elevated_ground_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [trapezoidal_elevated_ground_state]
    data.trapezoidal_elevated_ground_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [be_hit_time]
    data.be_hit_time = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [be_hit_target]
    data.be_hit_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [central_point_state]
    data.central_point_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [own_fortress_state]
    data.own_fortress_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/EventData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0e0fe7f33f8d70cbb516e24d1e30721c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool overlapping_supply_station_state
    bool nan_overlapping_supply_station_state
    bool supplier_zone_state
    bool small_power_rune_state
    bool large_power_rune_state
    uint8 central_elevated_ground_state
    uint8 trapezoidal_elevated_ground_state
    uint16 be_hit_time
    uint8 be_hit_target
    uint8 central_point_state
    uint8 own_fortress_state
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EventData(null);
    if (msg.overlapping_supply_station_state !== undefined) {
      resolved.overlapping_supply_station_state = msg.overlapping_supply_station_state;
    }
    else {
      resolved.overlapping_supply_station_state = false
    }

    if (msg.nan_overlapping_supply_station_state !== undefined) {
      resolved.nan_overlapping_supply_station_state = msg.nan_overlapping_supply_station_state;
    }
    else {
      resolved.nan_overlapping_supply_station_state = false
    }

    if (msg.supplier_zone_state !== undefined) {
      resolved.supplier_zone_state = msg.supplier_zone_state;
    }
    else {
      resolved.supplier_zone_state = false
    }

    if (msg.small_power_rune_state !== undefined) {
      resolved.small_power_rune_state = msg.small_power_rune_state;
    }
    else {
      resolved.small_power_rune_state = false
    }

    if (msg.large_power_rune_state !== undefined) {
      resolved.large_power_rune_state = msg.large_power_rune_state;
    }
    else {
      resolved.large_power_rune_state = false
    }

    if (msg.central_elevated_ground_state !== undefined) {
      resolved.central_elevated_ground_state = msg.central_elevated_ground_state;
    }
    else {
      resolved.central_elevated_ground_state = 0
    }

    if (msg.trapezoidal_elevated_ground_state !== undefined) {
      resolved.trapezoidal_elevated_ground_state = msg.trapezoidal_elevated_ground_state;
    }
    else {
      resolved.trapezoidal_elevated_ground_state = 0
    }

    if (msg.be_hit_time !== undefined) {
      resolved.be_hit_time = msg.be_hit_time;
    }
    else {
      resolved.be_hit_time = 0
    }

    if (msg.be_hit_target !== undefined) {
      resolved.be_hit_target = msg.be_hit_target;
    }
    else {
      resolved.be_hit_target = 0
    }

    if (msg.central_point_state !== undefined) {
      resolved.central_point_state = msg.central_point_state;
    }
    else {
      resolved.central_point_state = 0
    }

    if (msg.own_fortress_state !== undefined) {
      resolved.own_fortress_state = msg.own_fortress_state;
    }
    else {
      resolved.own_fortress_state = 0
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

module.exports = EventData;
