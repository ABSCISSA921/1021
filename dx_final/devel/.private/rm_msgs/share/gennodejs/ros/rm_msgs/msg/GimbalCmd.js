// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class GimbalCmd {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.mode = null;
      this.rate_yaw = null;
      this.accel_yaw = null;
      this.rate_pitch = null;
      this.accel_pitch = null;
      this.bullet_speed = null;
      this.target_pos = null;
      this.traj_yaw = null;
      this.traj_pitch = null;
      this.traj_frame_id = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('rate_yaw')) {
        this.rate_yaw = initObj.rate_yaw
      }
      else {
        this.rate_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('accel_yaw')) {
        this.accel_yaw = initObj.accel_yaw
      }
      else {
        this.accel_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('rate_pitch')) {
        this.rate_pitch = initObj.rate_pitch
      }
      else {
        this.rate_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('accel_pitch')) {
        this.accel_pitch = initObj.accel_pitch
      }
      else {
        this.accel_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('bullet_speed')) {
        this.bullet_speed = initObj.bullet_speed
      }
      else {
        this.bullet_speed = 0.0;
      }
      if (initObj.hasOwnProperty('target_pos')) {
        this.target_pos = initObj.target_pos
      }
      else {
        this.target_pos = new geometry_msgs.msg.PointStamped();
      }
      if (initObj.hasOwnProperty('traj_yaw')) {
        this.traj_yaw = initObj.traj_yaw
      }
      else {
        this.traj_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('traj_pitch')) {
        this.traj_pitch = initObj.traj_pitch
      }
      else {
        this.traj_pitch = 0.0;
      }
      if (initObj.hasOwnProperty('traj_frame_id')) {
        this.traj_frame_id = initObj.traj_frame_id
      }
      else {
        this.traj_frame_id = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GimbalCmd
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [rate_yaw]
    bufferOffset = _serializer.float64(obj.rate_yaw, buffer, bufferOffset);
    // Serialize message field [accel_yaw]
    bufferOffset = _serializer.float64(obj.accel_yaw, buffer, bufferOffset);
    // Serialize message field [rate_pitch]
    bufferOffset = _serializer.float64(obj.rate_pitch, buffer, bufferOffset);
    // Serialize message field [accel_pitch]
    bufferOffset = _serializer.float64(obj.accel_pitch, buffer, bufferOffset);
    // Serialize message field [bullet_speed]
    bufferOffset = _serializer.float64(obj.bullet_speed, buffer, bufferOffset);
    // Serialize message field [target_pos]
    bufferOffset = geometry_msgs.msg.PointStamped.serialize(obj.target_pos, buffer, bufferOffset);
    // Serialize message field [traj_yaw]
    bufferOffset = _serializer.float64(obj.traj_yaw, buffer, bufferOffset);
    // Serialize message field [traj_pitch]
    bufferOffset = _serializer.float64(obj.traj_pitch, buffer, bufferOffset);
    // Serialize message field [traj_frame_id]
    bufferOffset = _serializer.string(obj.traj_frame_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GimbalCmd
    let len;
    let data = new GimbalCmd(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rate_yaw]
    data.rate_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_yaw]
    data.accel_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [rate_pitch]
    data.rate_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel_pitch]
    data.accel_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bullet_speed]
    data.bullet_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [target_pos]
    data.target_pos = geometry_msgs.msg.PointStamped.deserialize(buffer, bufferOffset);
    // Deserialize message field [traj_yaw]
    data.traj_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [traj_pitch]
    data.traj_pitch = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [traj_frame_id]
    data.traj_frame_id = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += geometry_msgs.msg.PointStamped.getMessageSize(object.target_pos);
    length += _getByteLength(object.traj_frame_id);
    return length + 69;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/GimbalCmd';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '034f0c639b2916c6c8e6194f4332af38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 RATE = 0
    uint8 TRACK = 1
    uint8 DIRECT = 2
    uint8 TRAJ = 3
    
    time stamp
    uint8 mode
    
    # RATE
    float64 rate_yaw
    float64 accel_yaw
    float64 rate_pitch
    float64 accel_pitch
    
    # TRACK/DIRECT
    float64 bullet_speed
    geometry_msgs/PointStamped target_pos
    
    #TRAJ
    float64 traj_yaw
    float64 traj_pitch
    string traj_frame_id
    
    ================================================================================
    MSG: geometry_msgs/PointStamped
    # This represents a Point with reference coordinate frame and timestamp
    Header header
    Point point
    
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
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GimbalCmd(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.rate_yaw !== undefined) {
      resolved.rate_yaw = msg.rate_yaw;
    }
    else {
      resolved.rate_yaw = 0.0
    }

    if (msg.accel_yaw !== undefined) {
      resolved.accel_yaw = msg.accel_yaw;
    }
    else {
      resolved.accel_yaw = 0.0
    }

    if (msg.rate_pitch !== undefined) {
      resolved.rate_pitch = msg.rate_pitch;
    }
    else {
      resolved.rate_pitch = 0.0
    }

    if (msg.accel_pitch !== undefined) {
      resolved.accel_pitch = msg.accel_pitch;
    }
    else {
      resolved.accel_pitch = 0.0
    }

    if (msg.bullet_speed !== undefined) {
      resolved.bullet_speed = msg.bullet_speed;
    }
    else {
      resolved.bullet_speed = 0.0
    }

    if (msg.target_pos !== undefined) {
      resolved.target_pos = geometry_msgs.msg.PointStamped.Resolve(msg.target_pos)
    }
    else {
      resolved.target_pos = new geometry_msgs.msg.PointStamped()
    }

    if (msg.traj_yaw !== undefined) {
      resolved.traj_yaw = msg.traj_yaw;
    }
    else {
      resolved.traj_yaw = 0.0
    }

    if (msg.traj_pitch !== undefined) {
      resolved.traj_pitch = msg.traj_pitch;
    }
    else {
      resolved.traj_pitch = 0.0
    }

    if (msg.traj_frame_id !== undefined) {
      resolved.traj_frame_id = msg.traj_frame_id;
    }
    else {
      resolved.traj_frame_id = ''
    }

    return resolved;
    }
};

// Constants for message
GimbalCmd.Constants = {
  RATE: 0,
  TRACK: 1,
  DIRECT: 2,
  TRAJ: 3,
}

module.exports = GimbalCmd;
