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

class GlobalExtrinsic {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.teammate_id = null;
      this.rot_deg = null;
      this.trans = null;
    }
    else {
      if (initObj.hasOwnProperty('teammate_id')) {
        this.teammate_id = initObj.teammate_id
      }
      else {
        this.teammate_id = 0;
      }
      if (initObj.hasOwnProperty('rot_deg')) {
        this.rot_deg = initObj.rot_deg
      }
      else {
        this.rot_deg = new Array(3).fill(0);
      }
      if (initObj.hasOwnProperty('trans')) {
        this.trans = initObj.trans
      }
      else {
        this.trans = new Array(3).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalExtrinsic
    // Serialize message field [teammate_id]
    bufferOffset = _serializer.uint8(obj.teammate_id, buffer, bufferOffset);
    // Check that the constant length array field [rot_deg] has the right length
    if (obj.rot_deg.length !== 3) {
      throw new Error('Unable to serialize array field rot_deg - length must be 3')
    }
    // Serialize message field [rot_deg]
    bufferOffset = _arraySerializer.float32(obj.rot_deg, buffer, bufferOffset, 3);
    // Check that the constant length array field [trans] has the right length
    if (obj.trans.length !== 3) {
      throw new Error('Unable to serialize array field trans - length must be 3')
    }
    // Serialize message field [trans]
    bufferOffset = _arraySerializer.float32(obj.trans, buffer, bufferOffset, 3);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalExtrinsic
    let len;
    let data = new GlobalExtrinsic(null);
    // Deserialize message field [teammate_id]
    data.teammate_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [rot_deg]
    data.rot_deg = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    // Deserialize message field [trans]
    data.trans = _arrayDeserializer.float32(buffer, bufferOffset, 3)
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/GlobalExtrinsic';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a76ac5934d5f766451f12a662f47943';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # GlobalExtrinsic.msg
    uint8 teammate_id # The drone_id of teammates
    float32[3] rot_deg
    float32[3] trans
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GlobalExtrinsic(null);
    if (msg.teammate_id !== undefined) {
      resolved.teammate_id = msg.teammate_id;
    }
    else {
      resolved.teammate_id = 0
    }

    if (msg.rot_deg !== undefined) {
      resolved.rot_deg = msg.rot_deg;
    }
    else {
      resolved.rot_deg = new Array(3).fill(0)
    }

    if (msg.trans !== undefined) {
      resolved.trans = msg.trans;
    }
    else {
      resolved.trans = new Array(3).fill(0)
    }

    return resolved;
    }
};

module.exports = GlobalExtrinsic;
