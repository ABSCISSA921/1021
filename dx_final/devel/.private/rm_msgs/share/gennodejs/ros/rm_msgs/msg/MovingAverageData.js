// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class MovingAverageData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.real_pos_x = null;
      this.real_pos_y = null;
      this.real_pos_z = null;
      this.real_vel_x = null;
      this.real_vel_y = null;
      this.real_vel_z = null;
      this.filtered_pos_x = null;
      this.filtered_pos_y = null;
      this.filtered_pos_z = null;
      this.filtered_vel_x = null;
      this.filtered_vel_y = null;
      this.filtered_vel_z = null;
      this.filtered_center_x = null;
      this.filtered_center_y = null;
      this.filtered_center_z = null;
      this.real_gyro_vel = null;
      this.filtered_gyro_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('real_pos_x')) {
        this.real_pos_x = initObj.real_pos_x
      }
      else {
        this.real_pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('real_pos_y')) {
        this.real_pos_y = initObj.real_pos_y
      }
      else {
        this.real_pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('real_pos_z')) {
        this.real_pos_z = initObj.real_pos_z
      }
      else {
        this.real_pos_z = 0.0;
      }
      if (initObj.hasOwnProperty('real_vel_x')) {
        this.real_vel_x = initObj.real_vel_x
      }
      else {
        this.real_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('real_vel_y')) {
        this.real_vel_y = initObj.real_vel_y
      }
      else {
        this.real_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('real_vel_z')) {
        this.real_vel_z = initObj.real_vel_z
      }
      else {
        this.real_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_pos_x')) {
        this.filtered_pos_x = initObj.filtered_pos_x
      }
      else {
        this.filtered_pos_x = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_pos_y')) {
        this.filtered_pos_y = initObj.filtered_pos_y
      }
      else {
        this.filtered_pos_y = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_pos_z')) {
        this.filtered_pos_z = initObj.filtered_pos_z
      }
      else {
        this.filtered_pos_z = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_vel_x')) {
        this.filtered_vel_x = initObj.filtered_vel_x
      }
      else {
        this.filtered_vel_x = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_vel_y')) {
        this.filtered_vel_y = initObj.filtered_vel_y
      }
      else {
        this.filtered_vel_y = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_vel_z')) {
        this.filtered_vel_z = initObj.filtered_vel_z
      }
      else {
        this.filtered_vel_z = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_center_x')) {
        this.filtered_center_x = initObj.filtered_center_x
      }
      else {
        this.filtered_center_x = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_center_y')) {
        this.filtered_center_y = initObj.filtered_center_y
      }
      else {
        this.filtered_center_y = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_center_z')) {
        this.filtered_center_z = initObj.filtered_center_z
      }
      else {
        this.filtered_center_z = 0.0;
      }
      if (initObj.hasOwnProperty('real_gyro_vel')) {
        this.real_gyro_vel = initObj.real_gyro_vel
      }
      else {
        this.real_gyro_vel = 0.0;
      }
      if (initObj.hasOwnProperty('filtered_gyro_vel')) {
        this.filtered_gyro_vel = initObj.filtered_gyro_vel
      }
      else {
        this.filtered_gyro_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MovingAverageData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [real_pos_x]
    bufferOffset = _serializer.float64(obj.real_pos_x, buffer, bufferOffset);
    // Serialize message field [real_pos_y]
    bufferOffset = _serializer.float64(obj.real_pos_y, buffer, bufferOffset);
    // Serialize message field [real_pos_z]
    bufferOffset = _serializer.float64(obj.real_pos_z, buffer, bufferOffset);
    // Serialize message field [real_vel_x]
    bufferOffset = _serializer.float64(obj.real_vel_x, buffer, bufferOffset);
    // Serialize message field [real_vel_y]
    bufferOffset = _serializer.float64(obj.real_vel_y, buffer, bufferOffset);
    // Serialize message field [real_vel_z]
    bufferOffset = _serializer.float64(obj.real_vel_z, buffer, bufferOffset);
    // Serialize message field [filtered_pos_x]
    bufferOffset = _serializer.float64(obj.filtered_pos_x, buffer, bufferOffset);
    // Serialize message field [filtered_pos_y]
    bufferOffset = _serializer.float64(obj.filtered_pos_y, buffer, bufferOffset);
    // Serialize message field [filtered_pos_z]
    bufferOffset = _serializer.float64(obj.filtered_pos_z, buffer, bufferOffset);
    // Serialize message field [filtered_vel_x]
    bufferOffset = _serializer.float64(obj.filtered_vel_x, buffer, bufferOffset);
    // Serialize message field [filtered_vel_y]
    bufferOffset = _serializer.float64(obj.filtered_vel_y, buffer, bufferOffset);
    // Serialize message field [filtered_vel_z]
    bufferOffset = _serializer.float64(obj.filtered_vel_z, buffer, bufferOffset);
    // Serialize message field [filtered_center_x]
    bufferOffset = _serializer.float64(obj.filtered_center_x, buffer, bufferOffset);
    // Serialize message field [filtered_center_y]
    bufferOffset = _serializer.float64(obj.filtered_center_y, buffer, bufferOffset);
    // Serialize message field [filtered_center_z]
    bufferOffset = _serializer.float64(obj.filtered_center_z, buffer, bufferOffset);
    // Serialize message field [real_gyro_vel]
    bufferOffset = _serializer.float64(obj.real_gyro_vel, buffer, bufferOffset);
    // Serialize message field [filtered_gyro_vel]
    bufferOffset = _serializer.float64(obj.filtered_gyro_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MovingAverageData
    let len;
    let data = new MovingAverageData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [real_pos_x]
    data.real_pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_pos_y]
    data.real_pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_pos_z]
    data.real_pos_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_vel_x]
    data.real_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_vel_y]
    data.real_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_vel_z]
    data.real_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_pos_x]
    data.filtered_pos_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_pos_y]
    data.filtered_pos_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_pos_z]
    data.filtered_pos_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_vel_x]
    data.filtered_vel_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_vel_y]
    data.filtered_vel_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_vel_z]
    data.filtered_vel_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_center_x]
    data.filtered_center_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_center_y]
    data.filtered_center_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_center_z]
    data.filtered_center_z = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [real_gyro_vel]
    data.real_gyro_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [filtered_gyro_vel]
    data.filtered_gyro_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 136;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/MovingAverageData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12bd9292dde1a0c07797d8236d7c8fa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    
    float64 real_pos_x
    float64 real_pos_y
    float64 real_pos_z
    float64 real_vel_x
    float64 real_vel_y
    float64 real_vel_z
    
    float64 filtered_pos_x
    float64 filtered_pos_y
    float64 filtered_pos_z
    float64 filtered_vel_x
    float64 filtered_vel_y
    float64 filtered_vel_z
    float64 filtered_center_x
    float64 filtered_center_y
    float64 filtered_center_z
    
    float64 real_gyro_vel
    float64 filtered_gyro_vel
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MovingAverageData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.real_pos_x !== undefined) {
      resolved.real_pos_x = msg.real_pos_x;
    }
    else {
      resolved.real_pos_x = 0.0
    }

    if (msg.real_pos_y !== undefined) {
      resolved.real_pos_y = msg.real_pos_y;
    }
    else {
      resolved.real_pos_y = 0.0
    }

    if (msg.real_pos_z !== undefined) {
      resolved.real_pos_z = msg.real_pos_z;
    }
    else {
      resolved.real_pos_z = 0.0
    }

    if (msg.real_vel_x !== undefined) {
      resolved.real_vel_x = msg.real_vel_x;
    }
    else {
      resolved.real_vel_x = 0.0
    }

    if (msg.real_vel_y !== undefined) {
      resolved.real_vel_y = msg.real_vel_y;
    }
    else {
      resolved.real_vel_y = 0.0
    }

    if (msg.real_vel_z !== undefined) {
      resolved.real_vel_z = msg.real_vel_z;
    }
    else {
      resolved.real_vel_z = 0.0
    }

    if (msg.filtered_pos_x !== undefined) {
      resolved.filtered_pos_x = msg.filtered_pos_x;
    }
    else {
      resolved.filtered_pos_x = 0.0
    }

    if (msg.filtered_pos_y !== undefined) {
      resolved.filtered_pos_y = msg.filtered_pos_y;
    }
    else {
      resolved.filtered_pos_y = 0.0
    }

    if (msg.filtered_pos_z !== undefined) {
      resolved.filtered_pos_z = msg.filtered_pos_z;
    }
    else {
      resolved.filtered_pos_z = 0.0
    }

    if (msg.filtered_vel_x !== undefined) {
      resolved.filtered_vel_x = msg.filtered_vel_x;
    }
    else {
      resolved.filtered_vel_x = 0.0
    }

    if (msg.filtered_vel_y !== undefined) {
      resolved.filtered_vel_y = msg.filtered_vel_y;
    }
    else {
      resolved.filtered_vel_y = 0.0
    }

    if (msg.filtered_vel_z !== undefined) {
      resolved.filtered_vel_z = msg.filtered_vel_z;
    }
    else {
      resolved.filtered_vel_z = 0.0
    }

    if (msg.filtered_center_x !== undefined) {
      resolved.filtered_center_x = msg.filtered_center_x;
    }
    else {
      resolved.filtered_center_x = 0.0
    }

    if (msg.filtered_center_y !== undefined) {
      resolved.filtered_center_y = msg.filtered_center_y;
    }
    else {
      resolved.filtered_center_y = 0.0
    }

    if (msg.filtered_center_z !== undefined) {
      resolved.filtered_center_z = msg.filtered_center_z;
    }
    else {
      resolved.filtered_center_z = 0.0
    }

    if (msg.real_gyro_vel !== undefined) {
      resolved.real_gyro_vel = msg.real_gyro_vel;
    }
    else {
      resolved.real_gyro_vel = 0.0
    }

    if (msg.filtered_gyro_vel !== undefined) {
      resolved.filtered_gyro_vel = msg.filtered_gyro_vel;
    }
    else {
      resolved.filtered_gyro_vel = 0.0
    }

    return resolved;
    }
};

module.exports = MovingAverageData;
