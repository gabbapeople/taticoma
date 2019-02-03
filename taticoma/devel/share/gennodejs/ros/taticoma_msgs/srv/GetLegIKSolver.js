// Auto-generated. Do not edit!

// (in-package taticoma_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LegJointsState = require('../msg/LegJointsState.js');
let LegPositionState = require('../msg/LegPositionState.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetLegIKSolverRequest {
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
        this.leg_number = [];
      }
      if (initObj.hasOwnProperty('current_joints')) {
        this.current_joints = initObj.current_joints
      }
      else {
        this.current_joints = [];
      }
      if (initObj.hasOwnProperty('target_position')) {
        this.target_position = initObj.target_position
      }
      else {
        this.target_position = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLegIKSolverRequest
    // Serialize message field [leg_number]
    bufferOffset = _arraySerializer.int32(obj.leg_number, buffer, bufferOffset, null);
    // Serialize message field [current_joints]
    // Serialize the length for message field [current_joints]
    bufferOffset = _serializer.uint32(obj.current_joints.length, buffer, bufferOffset);
    obj.current_joints.forEach((val) => {
      bufferOffset = LegJointsState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [target_position]
    // Serialize the length for message field [target_position]
    bufferOffset = _serializer.uint32(obj.target_position.length, buffer, bufferOffset);
    obj.target_position.forEach((val) => {
      bufferOffset = LegPositionState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLegIKSolverRequest
    let len;
    let data = new GetLegIKSolverRequest(null);
    // Deserialize message field [leg_number]
    data.leg_number = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [current_joints]
    // Deserialize array length for message field [current_joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.current_joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.current_joints[i] = LegJointsState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [target_position]
    // Deserialize array length for message field [target_position]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_position = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_position[i] = LegPositionState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.leg_number.length;
    length += 24 * object.current_joints.length;
    length += 24 * object.target_position.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'taticoma_msgs/GetLegIKSolverRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e6a55288c7d97cc56bf3e73bfc7d5d02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] leg_number
    taticoma_msgs/LegJointsState[] current_joints
    taticoma_msgs/LegPositionState[] target_position
    
    
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
    const resolved = new GetLegIKSolverRequest(null);
    if (msg.leg_number !== undefined) {
      resolved.leg_number = msg.leg_number;
    }
    else {
      resolved.leg_number = []
    }

    if (msg.current_joints !== undefined) {
      resolved.current_joints = new Array(msg.current_joints.length);
      for (let i = 0; i < resolved.current_joints.length; ++i) {
        resolved.current_joints[i] = LegJointsState.Resolve(msg.current_joints[i]);
      }
    }
    else {
      resolved.current_joints = []
    }

    if (msg.target_position !== undefined) {
      resolved.target_position = new Array(msg.target_position.length);
      for (let i = 0; i < resolved.target_position.length; ++i) {
        resolved.target_position[i] = LegPositionState.Resolve(msg.target_position[i]);
      }
    }
    else {
      resolved.target_position = []
    }

    return resolved;
    }
};

class GetLegIKSolverResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_joints = null;
      this.error_codes = null;
    }
    else {
      if (initObj.hasOwnProperty('target_joints')) {
        this.target_joints = initObj.target_joints
      }
      else {
        this.target_joints = [];
      }
      if (initObj.hasOwnProperty('error_codes')) {
        this.error_codes = initObj.error_codes
      }
      else {
        this.error_codes = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetLegIKSolverResponse
    // Serialize message field [target_joints]
    // Serialize the length for message field [target_joints]
    bufferOffset = _serializer.uint32(obj.target_joints.length, buffer, bufferOffset);
    obj.target_joints.forEach((val) => {
      bufferOffset = LegJointsState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [error_codes]
    bufferOffset = _serializer.int32(obj.error_codes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetLegIKSolverResponse
    let len;
    let data = new GetLegIKSolverResponse(null);
    // Deserialize message field [target_joints]
    // Deserialize array length for message field [target_joints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.target_joints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.target_joints[i] = LegJointsState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [error_codes]
    data.error_codes = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.target_joints.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'taticoma_msgs/GetLegIKSolverResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '785ad427ec459cc9764f9f826c9ded18';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    taticoma_msgs/LegJointsState[] target_joints
    int32 error_codes
    
    int32 IK_FOUND=1
    int32 IK_NOT_FOUND=-1
    int32 TIMED_OUT=-2
    
    
    ================================================================================
    MSG: taticoma_msgs/LegJointsState
    float64[3] joint
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetLegIKSolverResponse(null);
    if (msg.target_joints !== undefined) {
      resolved.target_joints = new Array(msg.target_joints.length);
      for (let i = 0; i < resolved.target_joints.length; ++i) {
        resolved.target_joints[i] = LegJointsState.Resolve(msg.target_joints[i]);
      }
    }
    else {
      resolved.target_joints = []
    }

    if (msg.error_codes !== undefined) {
      resolved.error_codes = msg.error_codes;
    }
    else {
      resolved.error_codes = 0
    }

    return resolved;
    }
};

// Constants for message
GetLegIKSolverResponse.Constants = {
  IK_FOUND: 1,
  IK_NOT_FOUND: -1,
  TIMED_OUT: -2,
}

module.exports = {
  Request: GetLegIKSolverRequest,
  Response: GetLegIKSolverResponse,
  md5sum() { return 'aab6d4778f2d7a09001d31408c116ed3'; },
  datatype() { return 'taticoma_msgs/GetLegIKSolver'; }
};
