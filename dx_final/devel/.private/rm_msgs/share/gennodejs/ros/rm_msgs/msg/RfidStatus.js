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

class RfidStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.base_buff_point_state = null;
      this.own_central_elevated_ground_state = null;
      this.enemy_central_elevated_ground_state = null;
      this.own_trapezoidal_elevated_ground_state = null;
      this.enemy_trapezoidal_elevated_ground_state = null;
      this.forward_own_terrain_span_buff_point_state = null;
      this.behind_own_terrain_span_buff_point_state = null;
      this.forward_enemy_terrain_span_buff_point_state = null;
      this.behind_enemy_terrain_span_buff_point_state = null;
      this.below_central_own_terrain_span_buff_point_state = null;
      this.upper_central_own_terrain_span_buff_point_state = null;
      this.below_central_enemy_terrain_span_buff_point_state = null;
      this.upper_central_enemy_terrain_span_buff_point_state = null;
      this.below_road_own_terrain_span_buff_point_state = null;
      this.upper_road_own_terrain_span_buff_point_state = null;
      this.below_road_enemy_terrain_span_buff_point_state = null;
      this.upper_road_enemy_terrain_span_buff_point_state = null;
      this.own_fort_buff_point = null;
      this.own_outpost_buff_point = null;
      this.nan_overlapping_supplier_zone = null;
      this.overlapping_supplier_zone = null;
      this.own_large_resource_island_point = null;
      this.enemy_large_resource_island_point = null;
      this.central_buff_point = null;
      this.enemy_fortress_buff_point = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('base_buff_point_state')) {
        this.base_buff_point_state = initObj.base_buff_point_state
      }
      else {
        this.base_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('own_central_elevated_ground_state')) {
        this.own_central_elevated_ground_state = initObj.own_central_elevated_ground_state
      }
      else {
        this.own_central_elevated_ground_state = false;
      }
      if (initObj.hasOwnProperty('enemy_central_elevated_ground_state')) {
        this.enemy_central_elevated_ground_state = initObj.enemy_central_elevated_ground_state
      }
      else {
        this.enemy_central_elevated_ground_state = false;
      }
      if (initObj.hasOwnProperty('own_trapezoidal_elevated_ground_state')) {
        this.own_trapezoidal_elevated_ground_state = initObj.own_trapezoidal_elevated_ground_state
      }
      else {
        this.own_trapezoidal_elevated_ground_state = false;
      }
      if (initObj.hasOwnProperty('enemy_trapezoidal_elevated_ground_state')) {
        this.enemy_trapezoidal_elevated_ground_state = initObj.enemy_trapezoidal_elevated_ground_state
      }
      else {
        this.enemy_trapezoidal_elevated_ground_state = false;
      }
      if (initObj.hasOwnProperty('forward_own_terrain_span_buff_point_state')) {
        this.forward_own_terrain_span_buff_point_state = initObj.forward_own_terrain_span_buff_point_state
      }
      else {
        this.forward_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('behind_own_terrain_span_buff_point_state')) {
        this.behind_own_terrain_span_buff_point_state = initObj.behind_own_terrain_span_buff_point_state
      }
      else {
        this.behind_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('forward_enemy_terrain_span_buff_point_state')) {
        this.forward_enemy_terrain_span_buff_point_state = initObj.forward_enemy_terrain_span_buff_point_state
      }
      else {
        this.forward_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('behind_enemy_terrain_span_buff_point_state')) {
        this.behind_enemy_terrain_span_buff_point_state = initObj.behind_enemy_terrain_span_buff_point_state
      }
      else {
        this.behind_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('below_central_own_terrain_span_buff_point_state')) {
        this.below_central_own_terrain_span_buff_point_state = initObj.below_central_own_terrain_span_buff_point_state
      }
      else {
        this.below_central_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('upper_central_own_terrain_span_buff_point_state')) {
        this.upper_central_own_terrain_span_buff_point_state = initObj.upper_central_own_terrain_span_buff_point_state
      }
      else {
        this.upper_central_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('below_central_enemy_terrain_span_buff_point_state')) {
        this.below_central_enemy_terrain_span_buff_point_state = initObj.below_central_enemy_terrain_span_buff_point_state
      }
      else {
        this.below_central_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('upper_central_enemy_terrain_span_buff_point_state')) {
        this.upper_central_enemy_terrain_span_buff_point_state = initObj.upper_central_enemy_terrain_span_buff_point_state
      }
      else {
        this.upper_central_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('below_road_own_terrain_span_buff_point_state')) {
        this.below_road_own_terrain_span_buff_point_state = initObj.below_road_own_terrain_span_buff_point_state
      }
      else {
        this.below_road_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('upper_road_own_terrain_span_buff_point_state')) {
        this.upper_road_own_terrain_span_buff_point_state = initObj.upper_road_own_terrain_span_buff_point_state
      }
      else {
        this.upper_road_own_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('below_road_enemy_terrain_span_buff_point_state')) {
        this.below_road_enemy_terrain_span_buff_point_state = initObj.below_road_enemy_terrain_span_buff_point_state
      }
      else {
        this.below_road_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('upper_road_enemy_terrain_span_buff_point_state')) {
        this.upper_road_enemy_terrain_span_buff_point_state = initObj.upper_road_enemy_terrain_span_buff_point_state
      }
      else {
        this.upper_road_enemy_terrain_span_buff_point_state = false;
      }
      if (initObj.hasOwnProperty('own_fort_buff_point')) {
        this.own_fort_buff_point = initObj.own_fort_buff_point
      }
      else {
        this.own_fort_buff_point = false;
      }
      if (initObj.hasOwnProperty('own_outpost_buff_point')) {
        this.own_outpost_buff_point = initObj.own_outpost_buff_point
      }
      else {
        this.own_outpost_buff_point = false;
      }
      if (initObj.hasOwnProperty('nan_overlapping_supplier_zone')) {
        this.nan_overlapping_supplier_zone = initObj.nan_overlapping_supplier_zone
      }
      else {
        this.nan_overlapping_supplier_zone = false;
      }
      if (initObj.hasOwnProperty('overlapping_supplier_zone')) {
        this.overlapping_supplier_zone = initObj.overlapping_supplier_zone
      }
      else {
        this.overlapping_supplier_zone = false;
      }
      if (initObj.hasOwnProperty('own_large_resource_island_point')) {
        this.own_large_resource_island_point = initObj.own_large_resource_island_point
      }
      else {
        this.own_large_resource_island_point = false;
      }
      if (initObj.hasOwnProperty('enemy_large_resource_island_point')) {
        this.enemy_large_resource_island_point = initObj.enemy_large_resource_island_point
      }
      else {
        this.enemy_large_resource_island_point = false;
      }
      if (initObj.hasOwnProperty('central_buff_point')) {
        this.central_buff_point = initObj.central_buff_point
      }
      else {
        this.central_buff_point = false;
      }
      if (initObj.hasOwnProperty('enemy_fortress_buff_point')) {
        this.enemy_fortress_buff_point = initObj.enemy_fortress_buff_point
      }
      else {
        this.enemy_fortress_buff_point = false;
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
    // Serializes a message object of type RfidStatus
    // Serialize message field [base_buff_point_state]
    bufferOffset = _serializer.bool(obj.base_buff_point_state, buffer, bufferOffset);
    // Serialize message field [own_central_elevated_ground_state]
    bufferOffset = _serializer.bool(obj.own_central_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [enemy_central_elevated_ground_state]
    bufferOffset = _serializer.bool(obj.enemy_central_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [own_trapezoidal_elevated_ground_state]
    bufferOffset = _serializer.bool(obj.own_trapezoidal_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [enemy_trapezoidal_elevated_ground_state]
    bufferOffset = _serializer.bool(obj.enemy_trapezoidal_elevated_ground_state, buffer, bufferOffset);
    // Serialize message field [forward_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.forward_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [behind_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.behind_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [forward_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.forward_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [behind_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.behind_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [below_central_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.below_central_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [upper_central_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.upper_central_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [below_central_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.below_central_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [upper_central_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.upper_central_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [below_road_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.below_road_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [upper_road_own_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.upper_road_own_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [below_road_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.below_road_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [upper_road_enemy_terrain_span_buff_point_state]
    bufferOffset = _serializer.bool(obj.upper_road_enemy_terrain_span_buff_point_state, buffer, bufferOffset);
    // Serialize message field [own_fort_buff_point]
    bufferOffset = _serializer.bool(obj.own_fort_buff_point, buffer, bufferOffset);
    // Serialize message field [own_outpost_buff_point]
    bufferOffset = _serializer.bool(obj.own_outpost_buff_point, buffer, bufferOffset);
    // Serialize message field [nan_overlapping_supplier_zone]
    bufferOffset = _serializer.bool(obj.nan_overlapping_supplier_zone, buffer, bufferOffset);
    // Serialize message field [overlapping_supplier_zone]
    bufferOffset = _serializer.bool(obj.overlapping_supplier_zone, buffer, bufferOffset);
    // Serialize message field [own_large_resource_island_point]
    bufferOffset = _serializer.bool(obj.own_large_resource_island_point, buffer, bufferOffset);
    // Serialize message field [enemy_large_resource_island_point]
    bufferOffset = _serializer.bool(obj.enemy_large_resource_island_point, buffer, bufferOffset);
    // Serialize message field [central_buff_point]
    bufferOffset = _serializer.bool(obj.central_buff_point, buffer, bufferOffset);
    // Serialize message field [enemy_fortress_buff_point]
    bufferOffset = _serializer.bool(obj.enemy_fortress_buff_point, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RfidStatus
    let len;
    let data = new RfidStatus(null);
    // Deserialize message field [base_buff_point_state]
    data.base_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [own_central_elevated_ground_state]
    data.own_central_elevated_ground_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_central_elevated_ground_state]
    data.enemy_central_elevated_ground_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [own_trapezoidal_elevated_ground_state]
    data.own_trapezoidal_elevated_ground_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_trapezoidal_elevated_ground_state]
    data.enemy_trapezoidal_elevated_ground_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward_own_terrain_span_buff_point_state]
    data.forward_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [behind_own_terrain_span_buff_point_state]
    data.behind_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [forward_enemy_terrain_span_buff_point_state]
    data.forward_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [behind_enemy_terrain_span_buff_point_state]
    data.behind_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [below_central_own_terrain_span_buff_point_state]
    data.below_central_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upper_central_own_terrain_span_buff_point_state]
    data.upper_central_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [below_central_enemy_terrain_span_buff_point_state]
    data.below_central_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upper_central_enemy_terrain_span_buff_point_state]
    data.upper_central_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [below_road_own_terrain_span_buff_point_state]
    data.below_road_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upper_road_own_terrain_span_buff_point_state]
    data.upper_road_own_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [below_road_enemy_terrain_span_buff_point_state]
    data.below_road_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [upper_road_enemy_terrain_span_buff_point_state]
    data.upper_road_enemy_terrain_span_buff_point_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [own_fort_buff_point]
    data.own_fort_buff_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [own_outpost_buff_point]
    data.own_outpost_buff_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [nan_overlapping_supplier_zone]
    data.nan_overlapping_supplier_zone = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [overlapping_supplier_zone]
    data.overlapping_supplier_zone = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [own_large_resource_island_point]
    data.own_large_resource_island_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_large_resource_island_point]
    data.enemy_large_resource_island_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [central_buff_point]
    data.central_buff_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [enemy_fortress_buff_point]
    data.enemy_fortress_buff_point = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 33;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/RfidStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a24d6646cadd38d0b3cc4cdc34de56b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool base_buff_point_state
    bool own_central_elevated_ground_state
    bool enemy_central_elevated_ground_state
    bool own_trapezoidal_elevated_ground_state
    bool enemy_trapezoidal_elevated_ground_state
    bool forward_own_terrain_span_buff_point_state
    bool behind_own_terrain_span_buff_point_state
    bool forward_enemy_terrain_span_buff_point_state
    bool behind_enemy_terrain_span_buff_point_state
    bool below_central_own_terrain_span_buff_point_state
    bool upper_central_own_terrain_span_buff_point_state
    bool below_central_enemy_terrain_span_buff_point_state
    bool upper_central_enemy_terrain_span_buff_point_state
    bool below_road_own_terrain_span_buff_point_state
    bool upper_road_own_terrain_span_buff_point_state
    bool below_road_enemy_terrain_span_buff_point_state
    bool upper_road_enemy_terrain_span_buff_point_state
    bool own_fort_buff_point
    bool own_outpost_buff_point
    bool nan_overlapping_supplier_zone
    bool overlapping_supplier_zone
    bool own_large_resource_island_point
    bool enemy_large_resource_island_point
    bool central_buff_point
    bool enemy_fortress_buff_point
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RfidStatus(null);
    if (msg.base_buff_point_state !== undefined) {
      resolved.base_buff_point_state = msg.base_buff_point_state;
    }
    else {
      resolved.base_buff_point_state = false
    }

    if (msg.own_central_elevated_ground_state !== undefined) {
      resolved.own_central_elevated_ground_state = msg.own_central_elevated_ground_state;
    }
    else {
      resolved.own_central_elevated_ground_state = false
    }

    if (msg.enemy_central_elevated_ground_state !== undefined) {
      resolved.enemy_central_elevated_ground_state = msg.enemy_central_elevated_ground_state;
    }
    else {
      resolved.enemy_central_elevated_ground_state = false
    }

    if (msg.own_trapezoidal_elevated_ground_state !== undefined) {
      resolved.own_trapezoidal_elevated_ground_state = msg.own_trapezoidal_elevated_ground_state;
    }
    else {
      resolved.own_trapezoidal_elevated_ground_state = false
    }

    if (msg.enemy_trapezoidal_elevated_ground_state !== undefined) {
      resolved.enemy_trapezoidal_elevated_ground_state = msg.enemy_trapezoidal_elevated_ground_state;
    }
    else {
      resolved.enemy_trapezoidal_elevated_ground_state = false
    }

    if (msg.forward_own_terrain_span_buff_point_state !== undefined) {
      resolved.forward_own_terrain_span_buff_point_state = msg.forward_own_terrain_span_buff_point_state;
    }
    else {
      resolved.forward_own_terrain_span_buff_point_state = false
    }

    if (msg.behind_own_terrain_span_buff_point_state !== undefined) {
      resolved.behind_own_terrain_span_buff_point_state = msg.behind_own_terrain_span_buff_point_state;
    }
    else {
      resolved.behind_own_terrain_span_buff_point_state = false
    }

    if (msg.forward_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.forward_enemy_terrain_span_buff_point_state = msg.forward_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.forward_enemy_terrain_span_buff_point_state = false
    }

    if (msg.behind_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.behind_enemy_terrain_span_buff_point_state = msg.behind_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.behind_enemy_terrain_span_buff_point_state = false
    }

    if (msg.below_central_own_terrain_span_buff_point_state !== undefined) {
      resolved.below_central_own_terrain_span_buff_point_state = msg.below_central_own_terrain_span_buff_point_state;
    }
    else {
      resolved.below_central_own_terrain_span_buff_point_state = false
    }

    if (msg.upper_central_own_terrain_span_buff_point_state !== undefined) {
      resolved.upper_central_own_terrain_span_buff_point_state = msg.upper_central_own_terrain_span_buff_point_state;
    }
    else {
      resolved.upper_central_own_terrain_span_buff_point_state = false
    }

    if (msg.below_central_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.below_central_enemy_terrain_span_buff_point_state = msg.below_central_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.below_central_enemy_terrain_span_buff_point_state = false
    }

    if (msg.upper_central_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.upper_central_enemy_terrain_span_buff_point_state = msg.upper_central_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.upper_central_enemy_terrain_span_buff_point_state = false
    }

    if (msg.below_road_own_terrain_span_buff_point_state !== undefined) {
      resolved.below_road_own_terrain_span_buff_point_state = msg.below_road_own_terrain_span_buff_point_state;
    }
    else {
      resolved.below_road_own_terrain_span_buff_point_state = false
    }

    if (msg.upper_road_own_terrain_span_buff_point_state !== undefined) {
      resolved.upper_road_own_terrain_span_buff_point_state = msg.upper_road_own_terrain_span_buff_point_state;
    }
    else {
      resolved.upper_road_own_terrain_span_buff_point_state = false
    }

    if (msg.below_road_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.below_road_enemy_terrain_span_buff_point_state = msg.below_road_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.below_road_enemy_terrain_span_buff_point_state = false
    }

    if (msg.upper_road_enemy_terrain_span_buff_point_state !== undefined) {
      resolved.upper_road_enemy_terrain_span_buff_point_state = msg.upper_road_enemy_terrain_span_buff_point_state;
    }
    else {
      resolved.upper_road_enemy_terrain_span_buff_point_state = false
    }

    if (msg.own_fort_buff_point !== undefined) {
      resolved.own_fort_buff_point = msg.own_fort_buff_point;
    }
    else {
      resolved.own_fort_buff_point = false
    }

    if (msg.own_outpost_buff_point !== undefined) {
      resolved.own_outpost_buff_point = msg.own_outpost_buff_point;
    }
    else {
      resolved.own_outpost_buff_point = false
    }

    if (msg.nan_overlapping_supplier_zone !== undefined) {
      resolved.nan_overlapping_supplier_zone = msg.nan_overlapping_supplier_zone;
    }
    else {
      resolved.nan_overlapping_supplier_zone = false
    }

    if (msg.overlapping_supplier_zone !== undefined) {
      resolved.overlapping_supplier_zone = msg.overlapping_supplier_zone;
    }
    else {
      resolved.overlapping_supplier_zone = false
    }

    if (msg.own_large_resource_island_point !== undefined) {
      resolved.own_large_resource_island_point = msg.own_large_resource_island_point;
    }
    else {
      resolved.own_large_resource_island_point = false
    }

    if (msg.enemy_large_resource_island_point !== undefined) {
      resolved.enemy_large_resource_island_point = msg.enemy_large_resource_island_point;
    }
    else {
      resolved.enemy_large_resource_island_point = false
    }

    if (msg.central_buff_point !== undefined) {
      resolved.central_buff_point = msg.central_buff_point;
    }
    else {
      resolved.central_buff_point = false
    }

    if (msg.enemy_fortress_buff_point !== undefined) {
      resolved.enemy_fortress_buff_point = msg.enemy_fortress_buff_point;
    }
    else {
      resolved.enemy_fortress_buff_point = false
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

module.exports = RfidStatus;
