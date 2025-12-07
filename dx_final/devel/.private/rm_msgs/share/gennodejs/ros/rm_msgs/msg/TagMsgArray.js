// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TagMsg = require('./TagMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class TagMsgArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.tag_msgs_array = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('tag_msgs_array')) {
        this.tag_msgs_array = initObj.tag_msgs_array
      }
      else {
        this.tag_msgs_array = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TagMsgArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [tag_msgs_array]
    // Serialize the length for message field [tag_msgs_array]
    bufferOffset = _serializer.uint32(obj.tag_msgs_array.length, buffer, bufferOffset);
    obj.tag_msgs_array.forEach((val) => {
      bufferOffset = TagMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TagMsgArray
    let len;
    let data = new TagMsgArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [tag_msgs_array]
    // Deserialize array length for message field [tag_msgs_array]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.tag_msgs_array = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.tag_msgs_array[i] = TagMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 58 * object.tag_msgs_array.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/TagMsgArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '902a772db603bf3e4cf94e3aa203838c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    TagMsg[] tag_msgs_array
    
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
    MSG: rm_msgs/TagMsg
    uint8 color
    uint8 letter
    geometry_msgs/Pose pose
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TagMsgArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.tag_msgs_array !== undefined) {
      resolved.tag_msgs_array = new Array(msg.tag_msgs_array.length);
      for (let i = 0; i < resolved.tag_msgs_array.length; ++i) {
        resolved.tag_msgs_array[i] = TagMsg.Resolve(msg.tag_msgs_array[i]);
      }
    }
    else {
      resolved.tag_msgs_array = []
    }

    return resolved;
    }
};

module.exports = TagMsgArray;
