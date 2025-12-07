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

class ActuatorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.name = null;
      this.type = null;
      this.bus = null;
      this.id = null;
      this.halted = null;
      this.need_calibration = null;
      this.calibrated = null;
      this.calibration_reading = null;
      this.position_raw = null;
      this.velocity_raw = null;
      this.temperature = null;
      this.circle = null;
      this.last_position_raw = null;
      this.frequency = null;
      this.position = null;
      this.velocity = null;
      this.effort = null;
      this.commanded_effort = null;
      this.executed_effort = null;
      this.offset = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = [];
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = [];
      }
      if (initObj.hasOwnProperty('bus')) {
        this.bus = initObj.bus
      }
      else {
        this.bus = [];
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('halted')) {
        this.halted = initObj.halted
      }
      else {
        this.halted = [];
      }
      if (initObj.hasOwnProperty('need_calibration')) {
        this.need_calibration = initObj.need_calibration
      }
      else {
        this.need_calibration = [];
      }
      if (initObj.hasOwnProperty('calibrated')) {
        this.calibrated = initObj.calibrated
      }
      else {
        this.calibrated = [];
      }
      if (initObj.hasOwnProperty('calibration_reading')) {
        this.calibration_reading = initObj.calibration_reading
      }
      else {
        this.calibration_reading = [];
      }
      if (initObj.hasOwnProperty('position_raw')) {
        this.position_raw = initObj.position_raw
      }
      else {
        this.position_raw = [];
      }
      if (initObj.hasOwnProperty('velocity_raw')) {
        this.velocity_raw = initObj.velocity_raw
      }
      else {
        this.velocity_raw = [];
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = [];
      }
      if (initObj.hasOwnProperty('circle')) {
        this.circle = initObj.circle
      }
      else {
        this.circle = [];
      }
      if (initObj.hasOwnProperty('last_position_raw')) {
        this.last_position_raw = initObj.last_position_raw
      }
      else {
        this.last_position_raw = [];
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('effort')) {
        this.effort = initObj.effort
      }
      else {
        this.effort = [];
      }
      if (initObj.hasOwnProperty('commanded_effort')) {
        this.commanded_effort = initObj.commanded_effort
      }
      else {
        this.commanded_effort = [];
      }
      if (initObj.hasOwnProperty('executed_effort')) {
        this.executed_effort = initObj.executed_effort
      }
      else {
        this.executed_effort = [];
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ActuatorState
    // Serialize message field [stamp]
    bufferOffset = _arraySerializer.time(obj.stamp, buffer, bufferOffset, null);
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [type]
    bufferOffset = _arraySerializer.string(obj.type, buffer, bufferOffset, null);
    // Serialize message field [bus]
    bufferOffset = _arraySerializer.string(obj.bus, buffer, bufferOffset, null);
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int32(obj.id, buffer, bufferOffset, null);
    // Serialize message field [halted]
    bufferOffset = _arraySerializer.bool(obj.halted, buffer, bufferOffset, null);
    // Serialize message field [need_calibration]
    bufferOffset = _arraySerializer.bool(obj.need_calibration, buffer, bufferOffset, null);
    // Serialize message field [calibrated]
    bufferOffset = _arraySerializer.bool(obj.calibrated, buffer, bufferOffset, null);
    // Serialize message field [calibration_reading]
    bufferOffset = _arraySerializer.bool(obj.calibration_reading, buffer, bufferOffset, null);
    // Serialize message field [position_raw]
    bufferOffset = _arraySerializer.uint16(obj.position_raw, buffer, bufferOffset, null);
    // Serialize message field [velocity_raw]
    bufferOffset = _arraySerializer.int16(obj.velocity_raw, buffer, bufferOffset, null);
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.uint8(obj.temperature, buffer, bufferOffset, null);
    // Serialize message field [circle]
    bufferOffset = _arraySerializer.int64(obj.circle, buffer, bufferOffset, null);
    // Serialize message field [last_position_raw]
    bufferOffset = _arraySerializer.uint16(obj.last_position_raw, buffer, bufferOffset, null);
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.float64(obj.frequency, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [effort]
    bufferOffset = _arraySerializer.float64(obj.effort, buffer, bufferOffset, null);
    // Serialize message field [commanded_effort]
    bufferOffset = _arraySerializer.float64(obj.commanded_effort, buffer, bufferOffset, null);
    // Serialize message field [executed_effort]
    bufferOffset = _arraySerializer.float64(obj.executed_effort, buffer, bufferOffset, null);
    // Serialize message field [offset]
    bufferOffset = _arraySerializer.float64(obj.offset, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ActuatorState
    let len;
    let data = new ActuatorState(null);
    // Deserialize message field [stamp]
    data.stamp = _arrayDeserializer.time(buffer, bufferOffset, null)
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [type]
    data.type = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [bus]
    data.bus = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [halted]
    data.halted = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [need_calibration]
    data.need_calibration = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [calibrated]
    data.calibrated = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [calibration_reading]
    data.calibration_reading = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [position_raw]
    data.position_raw = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [velocity_raw]
    data.velocity_raw = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [circle]
    data.circle = _arrayDeserializer.int64(buffer, bufferOffset, null)
    // Deserialize message field [last_position_raw]
    data.last_position_raw = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [effort]
    data.effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [commanded_effort]
    data.commanded_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [executed_effort]
    data.executed_effort = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [offset]
    data.offset = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.stamp.length;
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.type.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.bus.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.id.length;
    length += object.halted.length;
    length += object.need_calibration.length;
    length += object.calibrated.length;
    length += object.calibration_reading.length;
    length += 2 * object.position_raw.length;
    length += 2 * object.velocity_raw.length;
    length += object.temperature.length;
    length += 8 * object.circle.length;
    length += 2 * object.last_position_raw.length;
    length += 8 * object.frequency.length;
    length += 8 * object.position.length;
    length += 8 * object.velocity.length;
    length += 8 * object.effort.length;
    length += 8 * object.commanded_effort.length;
    length += 8 * object.executed_effort.length;
    length += 8 * object.offset.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ActuatorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f82106ab641e97268a9e8e29a4b47321';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # This message contains the state of an actuator
    # An actuator contains a motor and an encoder, and is connected
    # to a joint by a transmission
    
    # The time at which this actuator state was measured
    time[] stamp
    
    # The name of the actuator
    string[] name
    
    # The type of the actuator
    string[] type
    
    # The CAN bus
    string[] bus
    
    # The CAN id
    int32[] id
    
    # Indicates if the motor is halted. A motor can be halted because of a voltage or temperature problem
    bool[] halted
    
    # Need calibration
    bool[] need_calibration
    
    # Indicates if the motor is calibrated. A motor will be not calibrated when recover from halted
    bool[] calibrated
    
    # The value of the calibration reading: low (false) or high (true)
    bool[] calibration_reading
    
    # The encoder raw position, represented by the number of encoder ticks
    uint16[] position_raw
    
    # The encoder velocity, represented by rpm
    int16[] velocity_raw
    
    # The temperature of the motor, represented by c1elsius
    uint8[] temperature
    
    # The circle of absolute encoder
    int64[]  circle
    
    # The last encoder raw position, represented by the number of encoder ticks
    uint16[] last_position_raw
    
    float64[]  frequency
    
    # The encoder position in radians
    float64[] position
    
    # The encoder velocity in radians per second
    float64[] velocity
    
    # The last effort that was measured by the actuator
    float64[] effort
    
    # The last effort command that was requested without limit
    float64[] commanded_effort
    
    # The last effort command that was requested with limit
    float64[] executed_effort
    
    # The angular offset (in radians) that is added to the encoder reading,
    # to get to the position of the actuator. This number is computed when the referece
    # sensor is triggered during the calibration phase
    float64[] offset
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ActuatorState(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = []
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = []
    }

    if (msg.bus !== undefined) {
      resolved.bus = msg.bus;
    }
    else {
      resolved.bus = []
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.halted !== undefined) {
      resolved.halted = msg.halted;
    }
    else {
      resolved.halted = []
    }

    if (msg.need_calibration !== undefined) {
      resolved.need_calibration = msg.need_calibration;
    }
    else {
      resolved.need_calibration = []
    }

    if (msg.calibrated !== undefined) {
      resolved.calibrated = msg.calibrated;
    }
    else {
      resolved.calibrated = []
    }

    if (msg.calibration_reading !== undefined) {
      resolved.calibration_reading = msg.calibration_reading;
    }
    else {
      resolved.calibration_reading = []
    }

    if (msg.position_raw !== undefined) {
      resolved.position_raw = msg.position_raw;
    }
    else {
      resolved.position_raw = []
    }

    if (msg.velocity_raw !== undefined) {
      resolved.velocity_raw = msg.velocity_raw;
    }
    else {
      resolved.velocity_raw = []
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = []
    }

    if (msg.circle !== undefined) {
      resolved.circle = msg.circle;
    }
    else {
      resolved.circle = []
    }

    if (msg.last_position_raw !== undefined) {
      resolved.last_position_raw = msg.last_position_raw;
    }
    else {
      resolved.last_position_raw = []
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.effort !== undefined) {
      resolved.effort = msg.effort;
    }
    else {
      resolved.effort = []
    }

    if (msg.commanded_effort !== undefined) {
      resolved.commanded_effort = msg.commanded_effort;
    }
    else {
      resolved.commanded_effort = []
    }

    if (msg.executed_effort !== undefined) {
      resolved.executed_effort = msg.executed_effort;
    }
    else {
      resolved.executed_effort = []
    }

    if (msg.offset !== undefined) {
      resolved.offset = msg.offset;
    }
    else {
      resolved.offset = []
    }

    return resolved;
    }
};

module.exports = ActuatorState;
