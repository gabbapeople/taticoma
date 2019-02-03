// Auto-generated. Do not edit!

// (in-package taticoma_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LegJointsState = require('./LegJointsState.js');
let LegPositionState = require('./LegPositionState.js');

//-----------------------------------------------------------

class LegIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.leg_number = null;
      this.current_joints = null;
      this.target_position = null;
    }
    else {
      if (initObj.hasOwnProperty('leg_number')) {
        this.leg_number = initObj.leg_number
      }
      else {
        this.leg_number = 0;
      }
      if (initObj.hasOwnProperty('current_joints')) {
        this.current_joints = initObj.current_joints
      }
      else {
        this.current_joints = new LegJointsState();
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = new LegPositionState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegIKRequest
    // Serialize message field [leg_number]
    bufferOffset = _serializer.int32(obj.leg_number, buffer, bufferOffset);
    // Serialize message field [current_joints]
    bufferOffset = LegJointsState.serialize(obj.current_joints, buffer, bufferOffset);
    // Serialize message field [target_position]
    bufferOffset = LegPositionState.serialize(obj.target_position, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegIKRequest
    let len;
    let data = new LegIKRequest(null);
    // Deserialize message field [leg_number]
    data.leg_number = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current_joints]
    data.current_joints = LegJointsState.deserialize(buffer, bufferOffset);
    // Deserialize message field [target_position]
    data.target_position = LegPositionState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/LegIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bcb4917a6750a0f98ecbb5e98212cbec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 leg_number
    taticoma_msgs/LegJointsState current_joints
    taticoma_msgs/LegPositionState target_position
    
    ================================================================================
    MSG: taticoma_msgs/LegJointsState
    float64[3] joint
    
    ================================================================================
    MSG: taticoma_msgs/LegPositionState
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
    const resolved = new LegIKRequest(null);
    if (msg.leg_number !== undefined) {
      resolved.leg_number = msg.leg_number;
    }
    else {
      resolved.leg_number = 0
    }

    if (msg.current_joints !== undefined) {
      resolved.current_joints = LegJointsState.Resolve(msg.current_joints)
    }
    else {
      resolved.current_joints = new LegJointsState()
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = LegPositionState.Resolve(msg.target_position)
    }
    else {
      resolved.target_position = new LegPositionState()
    }

    return resolved;
    }
};

module.exports = LegIKRequest;
