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

class ManualToReferee {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.power_limit_state = null;
      this.start_burst_time = null;
      this.shoot_frequency = null;
      this.cover_state = null;
      this.gimbal_eject = null;
      this.hero_eject_flag = null;
      this.engineer_calibration_state = null;
      this.det_color = null;
      this.det_target = null;
      this.det_armor_target = null;
      this.det_exposure = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('power_limit_state')) {
        this.power_limit_state = initObj.power_limit_state
      }
      else {
        this.power_limit_state = 0;
      }
      if (initObj.hasOwnProperty('start_burst_time')) {
        this.start_burst_time = initObj.start_burst_time
      }
      else {
        this.start_burst_time = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('shoot_frequency')) {
        this.shoot_frequency = initObj.shoot_frequency
      }
      else {
        this.shoot_frequency = 0;
      }
      if (initObj.hasOwnProperty('cover_state')) {
        this.cover_state = initObj.cover_state
      }
      else {
        this.cover_state = false;
      }
      if (initObj.hasOwnProperty('gimbal_eject')) {
        this.gimbal_eject = initObj.gimbal_eject
      }
      else {
        this.gimbal_eject = false;
      }
      if (initObj.hasOwnProperty('hero_eject_flag')) {
        this.hero_eject_flag = initObj.hero_eject_flag
      }
      else {
        this.hero_eject_flag = false;
      }
      if (initObj.hasOwnProperty('engineer_calibration_state')) {
        this.engineer_calibration_state = initObj.engineer_calibration_state
      }
      else {
        this.engineer_calibration_state = false;
      }
      if (initObj.hasOwnProperty('det_color')) {
        this.det_color = initObj.det_color
      }
      else {
        this.det_color = 0;
      }
      if (initObj.hasOwnProperty('det_target')) {
        this.det_target = initObj.det_target
      }
      else {
        this.det_target = 0;
      }
      if (initObj.hasOwnProperty('det_armor_target')) {
        this.det_armor_target = initObj.det_armor_target
      }
      else {
        this.det_armor_target = 0;
      }
      if (initObj.hasOwnProperty('det_exposure')) {
        this.det_exposure = initObj.det_exposure
      }
      else {
        this.det_exposure = 0;
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
    // Serializes a message object of type ManualToReferee
    // Serialize message field [power_limit_state]
    bufferOffset = _serializer.uint8(obj.power_limit_state, buffer, bufferOffset);
    // Serialize message field [start_burst_time]
    bufferOffset = _serializer.time(obj.start_burst_time, buffer, bufferOffset);
    // Serialize message field [shoot_frequency]
    bufferOffset = _serializer.uint8(obj.shoot_frequency, buffer, bufferOffset);
    // Serialize message field [cover_state]
    bufferOffset = _serializer.bool(obj.cover_state, buffer, bufferOffset);
    // Serialize message field [gimbal_eject]
    bufferOffset = _serializer.bool(obj.gimbal_eject, buffer, bufferOffset);
    // Serialize message field [hero_eject_flag]
    bufferOffset = _serializer.bool(obj.hero_eject_flag, buffer, bufferOffset);
    // Serialize message field [engineer_calibration_state]
    bufferOffset = _serializer.bool(obj.engineer_calibration_state, buffer, bufferOffset);
    // Serialize message field [det_color]
    bufferOffset = _serializer.uint8(obj.det_color, buffer, bufferOffset);
    // Serialize message field [det_target]
    bufferOffset = _serializer.uint8(obj.det_target, buffer, bufferOffset);
    // Serialize message field [det_armor_target]
    bufferOffset = _serializer.uint8(obj.det_armor_target, buffer, bufferOffset);
    // Serialize message field [det_exposure]
    bufferOffset = _serializer.uint8(obj.det_exposure, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManualToReferee
    let len;
    let data = new ManualToReferee(null);
    // Deserialize message field [power_limit_state]
    data.power_limit_state = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [start_burst_time]
    data.start_burst_time = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [shoot_frequency]
    data.shoot_frequency = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cover_state]
    data.cover_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gimbal_eject]
    data.gimbal_eject = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [hero_eject_flag]
    data.hero_eject_flag = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [engineer_calibration_state]
    data.engineer_calibration_state = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [det_color]
    data.det_color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [det_target]
    data.det_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [det_armor_target]
    data.det_armor_target = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [det_exposure]
    data.det_exposure = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ManualToReferee';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '388b131678d19b89d2b4494c496ba80a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 power_limit_state
    time start_burst_time
    
    #standard
    uint8 shoot_frequency
    bool cover_state
    
    #hero
    bool gimbal_eject
    bool hero_eject_flag
    
    #engineer
    bool engineer_calibration_state
    
    #detection
    uint8 det_color
    uint8 det_target
    uint8 det_armor_target
    uint8 det_exposure
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManualToReferee(null);
    if (msg.power_limit_state !== undefined) {
      resolved.power_limit_state = msg.power_limit_state;
    }
    else {
      resolved.power_limit_state = 0
    }

    if (msg.start_burst_time !== undefined) {
      resolved.start_burst_time = msg.start_burst_time;
    }
    else {
      resolved.start_burst_time = {secs: 0, nsecs: 0}
    }

    if (msg.shoot_frequency !== undefined) {
      resolved.shoot_frequency = msg.shoot_frequency;
    }
    else {
      resolved.shoot_frequency = 0
    }

    if (msg.cover_state !== undefined) {
      resolved.cover_state = msg.cover_state;
    }
    else {
      resolved.cover_state = false
    }

    if (msg.gimbal_eject !== undefined) {
      resolved.gimbal_eject = msg.gimbal_eject;
    }
    else {
      resolved.gimbal_eject = false
    }

    if (msg.hero_eject_flag !== undefined) {
      resolved.hero_eject_flag = msg.hero_eject_flag;
    }
    else {
      resolved.hero_eject_flag = false
    }

    if (msg.engineer_calibration_state !== undefined) {
      resolved.engineer_calibration_state = msg.engineer_calibration_state;
    }
    else {
      resolved.engineer_calibration_state = false
    }

    if (msg.det_color !== undefined) {
      resolved.det_color = msg.det_color;
    }
    else {
      resolved.det_color = 0
    }

    if (msg.det_target !== undefined) {
      resolved.det_target = msg.det_target;
    }
    else {
      resolved.det_target = 0
    }

    if (msg.det_armor_target !== undefined) {
      resolved.det_armor_target = msg.det_armor_target;
    }
    else {
      resolved.det_armor_target = 0
    }

    if (msg.det_exposure !== undefined) {
      resolved.det_exposure = msg.det_exposure;
    }
    else {
      resolved.det_exposure = 0
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

module.exports = ManualToReferee;
