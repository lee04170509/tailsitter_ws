// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ObserveTeammate {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_observe = null;
      this.teammate_id = null;
      this.observed_pos = null;
    }
    else {
      if (initObj.hasOwnProperty('is_observe')) {
        this.is_observe = initObj.is_observe
      }
      else {
        this.is_observe = false;
      }
      if (initObj.hasOwnProperty('teammate_id')) {
        this.teammate_id = initObj.teammate_id
      }
      else {
        this.teammate_id = 0;
      }
      if (initObj.hasOwnProperty('observed_pos')) {
        this.observed_pos = initObj.observed_pos
      }
      else {
        this.observed_pos = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObserveTeammate
    // Serialize message field [is_observe]
    bufferOffset = _serializer.bool(obj.is_observe, buffer, bufferOffset);
    // Serialize message field [teammate_id]
    bufferOffset = _serializer.uint8(obj.teammate_id, buffer, bufferOffset);
    // Check that the constant length array field [observed_pos] has the right length
    if (obj.observed_pos.length !== 3) {
      throw new Error('Unable to serialize array field observed_pos - length must be 3')
    }
    // Serialize message field [observed_pos]
    bufferOffset = _arraySerializer.float64(obj.observed_pos, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObserveTeammate
    let len;
    let data = new ObserveTeammate(null);
    // Deserialize message field [is_observe]
    data.is_observe = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [teammate_id]
    data.teammate_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [observed_pos]
    data.observed_pos = _arrayDeserializer.float64(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 26;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/ObserveTeammate';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee10052e28e277b9de819f4024962672';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ObserveTeammate.msg
    bool is_observe # Observe teammate?
    uint8 teammate_id # The drone_id of observed teammate
    float64[3] observed_pos  # The position of the observed teammate in my body frame
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObserveTeammate(null);
    if (msg.is_observe !== undefined) {
      resolved.is_observe = msg.is_observe;
    }
    else {
      resolved.is_observe = false
    }

    if (msg.teammate_id !== undefined) {
      resolved.teammate_id = msg.teammate_id;
    }
    else {
      resolved.teammate_id = 0
    }

    if (msg.observed_pos !== undefined) {
      resolved.observed_pos = msg.observed_pos;
    }
    else {
      resolved.observed_pos = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = ObserveTeammate;
