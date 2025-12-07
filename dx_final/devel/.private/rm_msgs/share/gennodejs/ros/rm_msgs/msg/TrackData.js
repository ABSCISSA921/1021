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
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class TrackData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.id = null;
      this.tracking = null;
      this.armors_num = null;
      this.position = null;
      this.rotation = null;
      this.yaw = null;
      this.velocity = null;
      this.v_yaw = null;
      this.radius_1 = null;
      this.radius_2 = null;
      this.dz = null;
      this.accel = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('tracking')) {
        this.tracking = initObj.tracking
      }
      else {
        this.tracking = false;
      }
      if (initObj.hasOwnProperty('armors_num')) {
        this.armors_num = initObj.armors_num
      }
      else {
        this.armors_num = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = new geometry_msgs.msg.Quaternion();
      }
      if (initObj.hasOwnProperty('yaw')) {
        this.yaw = initObj.yaw
      }
      else {
        this.yaw = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('v_yaw')) {
        this.v_yaw = initObj.v_yaw
      }
      else {
        this.v_yaw = 0.0;
      }
      if (initObj.hasOwnProperty('radius_1')) {
        this.radius_1 = initObj.radius_1
      }
      else {
        this.radius_1 = 0.0;
      }
      if (initObj.hasOwnProperty('radius_2')) {
        this.radius_2 = initObj.radius_2
      }
      else {
        this.radius_2 = 0.0;
      }
      if (initObj.hasOwnProperty('dz')) {
        this.dz = initObj.dz
      }
      else {
        this.dz = 0.0;
      }
      if (initObj.hasOwnProperty('accel')) {
        this.accel = initObj.accel
      }
      else {
        this.accel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TrackData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [tracking]
    bufferOffset = _serializer.bool(obj.tracking, buffer, bufferOffset);
    // Serialize message field [armors_num]
    bufferOffset = _serializer.uint8(obj.armors_num, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [rotation]
    bufferOffset = geometry_msgs.msg.Quaternion.serialize(obj.rotation, buffer, bufferOffset);
    // Serialize message field [yaw]
    bufferOffset = _serializer.float64(obj.yaw, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.velocity, buffer, bufferOffset);
    // Serialize message field [v_yaw]
    bufferOffset = _serializer.float64(obj.v_yaw, buffer, bufferOffset);
    // Serialize message field [radius_1]
    bufferOffset = _serializer.float64(obj.radius_1, buffer, bufferOffset);
    // Serialize message field [radius_2]
    bufferOffset = _serializer.float64(obj.radius_2, buffer, bufferOffset);
    // Serialize message field [dz]
    bufferOffset = _serializer.float64(obj.dz, buffer, bufferOffset);
    // Serialize message field [accel]
    bufferOffset = _serializer.float64(obj.accel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TrackData
    let len;
    let data = new TrackData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tracking]
    data.tracking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [armors_num]
    data.armors_num = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [rotation]
    data.rotation = geometry_msgs.msg.Quaternion.deserialize(buffer, bufferOffset);
    // Deserialize message field [yaw]
    data.yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [v_yaw]
    data.v_yaw = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radius_1]
    data.radius_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [radius_2]
    data.radius_2 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [dz]
    data.dz = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [accel]
    data.accel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 131;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/TrackData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1cbc2812aafe1f0e98f9baaa69b231f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    uint8 id
    bool tracking
    uint8 armors_num
    geometry_msgs/Point position
    geometry_msgs/Quaternion rotation
    float64 yaw
    geometry_msgs/Vector3 velocity
    float64 v_yaw
    float64 radius_1
    float64 radius_2
    float64 dz
    float64 accel
    
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
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
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
    const resolved = new TrackData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.tracking !== undefined) {
      resolved.tracking = msg.tracking;
    }
    else {
      resolved.tracking = false
    }

    if (msg.armors_num !== undefined) {
      resolved.armors_num = msg.armors_num;
    }
    else {
      resolved.armors_num = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = geometry_msgs.msg.Quaternion.Resolve(msg.rotation)
    }
    else {
      resolved.rotation = new geometry_msgs.msg.Quaternion()
    }

    if (msg.yaw !== undefined) {
      resolved.yaw = msg.yaw;
    }
    else {
      resolved.yaw = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = geometry_msgs.msg.Vector3.Resolve(msg.velocity)
    }
    else {
      resolved.velocity = new geometry_msgs.msg.Vector3()
    }

    if (msg.v_yaw !== undefined) {
      resolved.v_yaw = msg.v_yaw;
    }
    else {
      resolved.v_yaw = 0.0
    }

    if (msg.radius_1 !== undefined) {
      resolved.radius_1 = msg.radius_1;
    }
    else {
      resolved.radius_1 = 0.0
    }

    if (msg.radius_2 !== undefined) {
      resolved.radius_2 = msg.radius_2;
    }
    else {
      resolved.radius_2 = 0.0
    }

    if (msg.dz !== undefined) {
      resolved.dz = msg.dz;
    }
    else {
      resolved.dz = 0.0
    }

    if (msg.accel !== undefined) {
      resolved.accel = msg.accel;
    }
    else {
      resolved.accel = 0.0
    }

    return resolved;
    }
};

module.exports = TrackData;
