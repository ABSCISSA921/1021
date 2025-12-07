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

class KalmanData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.real_detection_pose = null;
      this.filtered_detection_pose = null;
      this.real_detection_twist = null;
      this.filtered_detection_twist = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('real_detection_pose')) {
        this.real_detection_pose = initObj.real_detection_pose
      }
      else {
        this.real_detection_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('filtered_detection_pose')) {
        this.filtered_detection_pose = initObj.filtered_detection_pose
      }
      else {
        this.filtered_detection_pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('real_detection_twist')) {
        this.real_detection_twist = initObj.real_detection_twist
      }
      else {
        this.real_detection_twist = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('filtered_detection_twist')) {
        this.filtered_detection_twist = initObj.filtered_detection_twist
      }
      else {
        this.filtered_detection_twist = new geometry_msgs.msg.Twist();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type KalmanData
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [real_detection_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.real_detection_pose, buffer, bufferOffset);
    // Serialize message field [filtered_detection_pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.filtered_detection_pose, buffer, bufferOffset);
    // Serialize message field [real_detection_twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.real_detection_twist, buffer, bufferOffset);
    // Serialize message field [filtered_detection_twist]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.filtered_detection_twist, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type KalmanData
    let len;
    let data = new KalmanData(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [real_detection_pose]
    data.real_detection_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtered_detection_pose]
    data.filtered_detection_pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [real_detection_twist]
    data.real_detection_twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [filtered_detection_twist]
    data.filtered_detection_twist = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 208;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/KalmanData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '076b9f9dc5aab232f694a2e05a2a0a8c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    geometry_msgs/Pose real_detection_pose
    geometry_msgs/Pose filtered_detection_pose
    geometry_msgs/Twist real_detection_twist
    geometry_msgs/Twist filtered_detection_twist
    
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
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
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
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3 linear
    Vector3 angular
    
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
    const resolved = new KalmanData(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.real_detection_pose !== undefined) {
      resolved.real_detection_pose = geometry_msgs.msg.Pose.Resolve(msg.real_detection_pose)
    }
    else {
      resolved.real_detection_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.filtered_detection_pose !== undefined) {
      resolved.filtered_detection_pose = geometry_msgs.msg.Pose.Resolve(msg.filtered_detection_pose)
    }
    else {
      resolved.filtered_detection_pose = new geometry_msgs.msg.Pose()
    }

    if (msg.real_detection_twist !== undefined) {
      resolved.real_detection_twist = geometry_msgs.msg.Twist.Resolve(msg.real_detection_twist)
    }
    else {
      resolved.real_detection_twist = new geometry_msgs.msg.Twist()
    }

    if (msg.filtered_detection_twist !== undefined) {
      resolved.filtered_detection_twist = geometry_msgs.msg.Twist.Resolve(msg.filtered_detection_twist)
    }
    else {
      resolved.filtered_detection_twist = new geometry_msgs.msg.Twist()
    }

    return resolved;
    }
};

module.exports = KalmanData;
