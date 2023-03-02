// Auto-generated. Do not edit!

// (in-package swarm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let GlobalExtrinsic = require('./GlobalExtrinsic.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GlobalExtrinsicStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.drone_id = null;
      this.extrinsic = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('drone_id')) {
        this.drone_id = initObj.drone_id
      }
      else {
        this.drone_id = 0;
      }
      if (initObj.hasOwnProperty('extrinsic')) {
        this.extrinsic = initObj.extrinsic
      }
      else {
        this.extrinsic = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GlobalExtrinsicStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [drone_id]
    bufferOffset = _serializer.uint8(obj.drone_id, buffer, bufferOffset);
    // Serialize message field [extrinsic]
    // Serialize the length for message field [extrinsic]
    bufferOffset = _serializer.uint32(obj.extrinsic.length, buffer, bufferOffset);
    obj.extrinsic.forEach((val) => {
      bufferOffset = GlobalExtrinsic.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GlobalExtrinsicStatus
    let len;
    let data = new GlobalExtrinsicStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [drone_id]
    data.drone_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [extrinsic]
    // Deserialize array length for message field [extrinsic]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.extrinsic = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.extrinsic[i] = GlobalExtrinsic.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 25 * object.extrinsic.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'swarm_msgs/GlobalExtrinsicStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd0b0c9dc59b0fab5523a56f1f276faa9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    uint8 drone_id
    GlobalExtrinsic[] extrinsic    # global extrinsic with other drones
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
    MSG: swarm_msgs/GlobalExtrinsic
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
    const resolved = new GlobalExtrinsicStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.drone_id !== undefined) {
      resolved.drone_id = msg.drone_id;
    }
    else {
      resolved.drone_id = 0
    }

    if (msg.extrinsic !== undefined) {
      resolved.extrinsic = new Array(msg.extrinsic.length);
      for (let i = 0; i < resolved.extrinsic.length; ++i) {
        resolved.extrinsic[i] = GlobalExtrinsic.Resolve(msg.extrinsic[i]);
      }
    }
    else {
      resolved.extrinsic = []
    }

    return resolved;
    }
};

module.exports = GlobalExtrinsicStatus;
