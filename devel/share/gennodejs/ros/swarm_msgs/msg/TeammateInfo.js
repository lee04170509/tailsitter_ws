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

class TeammateInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_connect = null;
      this.id = null;
      this.ip = null;
    }
    else {
      if (initObj.hasOwnProperty('is_connect')) {
        this.is_connect = initObj.is_connect
      }
      else {
        this.is_connect = false;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TeammateInfo
    // Serialize message field [is_connect]
    bufferOffset = _serializer.bool(obj.is_connect, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Check that the constant length array field [ip] has the right length
    if (obj.ip.length !== 4) {
      throw new Error('Unable to serialize array field ip - length must be 4')
    }
    // Serialize message field [ip]
    bufferOffset = _arraySerializer.uint8(obj.ip, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TeammateInfo
    let len;
    let data = new TeammateInfo(null);
    // Deserialize message field [is_connect]
    data.is_connect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _arrayDeserializer.uint8(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/TeammateInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '56988bb506b9d5644a48ab398ffc0930';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new TeammateInfo(null);
    if (msg.is_connect !== undefined) {
      resolved.is_connect = msg.is_connect;
    }
    else {
      resolved.is_connect = false
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = TeammateInfo;
