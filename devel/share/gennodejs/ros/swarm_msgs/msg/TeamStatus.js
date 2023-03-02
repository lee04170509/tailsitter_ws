// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TeammateInfo = require('./TeammateInfo.js');

//-----------------------------------------------------------

class TeamStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.my_drone_id = null;
      this.teammate_info = null;
    }
    else {
      if (initObj.hasOwnProperty('my_drone_id')) {
        this.my_drone_id = initObj.my_drone_id
      }
      else {
        this.my_drone_id = 0;
      }
      if (initObj.hasOwnProperty('teammate_info')) {
        this.teammate_info = initObj.teammate_info
      }
      else {
        this.teammate_info = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeamStatus
    // Serialize message field [my_drone_id]
    bufferOffset = _serializer.uint8(obj.my_drone_id, buffer, bufferOffset);
    // Serialize message field [teammate_info]
    // Serialize the length for message field [teammate_info]
    bufferOffset = _serializer.uint32(obj.teammate_info.length, buffer, bufferOffset);
    obj.teammate_info.forEach((val) => {
      bufferOffset = TeammateInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeamStatus
    let len;
    let data = new TeamStatus(null);
    // Deserialize message field [my_drone_id]
    data.my_drone_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [teammate_info]
    // Deserialize array length for message field [teammate_info]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.teammate_info = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.teammate_info[i] = TeammateInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.teammate_info.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/TeamStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '73da6a2eee2932c533bd709d771dd1f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Team
    uint8 my_drone_id
    TeammateInfo[] teammate_info
    
    ================================================================================
    MSG: swarm_msgs/TeammateInfo
    # teammate info
    bool is_connect
    uint8 id
    uint8[4] ip
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TeamStatus(null);
    if (msg.my_drone_id !== undefined) {
      resolved.my_drone_id = msg.my_drone_id;
    }
    else {
      resolved.my_drone_id = 0
    }

    if (msg.teammate_info !== undefined) {
      resolved.teammate_info = new Array(msg.teammate_info.length);
      for (let i = 0; i < resolved.teammate_info.length; ++i) {
        resolved.teammate_info[i] = TeammateInfo.Resolve(msg.teammate_info[i]);
      }
    }
    else {
      resolved.teammate_info = []
    }

    return resolved;
    }
};

module.exports = TeamStatus;
