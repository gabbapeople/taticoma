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

//-----------------------------------------------------------

class LegsJointsState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints_state = null;
    }
    else {
      if (initObj.hasOwnProperty('joints_state')) {
        this.joints_state = initObj.joints_state
      }
      else {
        this.joints_state = new Array(6).fill(new LegJointsState());
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LegsJointsState
    // Check that the constant length array field [joints_state] has the right length
    if (obj.joints_state.length !== 6) {
      throw new Error('Unable to serialize array field joints_state - length must be 6')
    }
    // Serialize message field [joints_state]
    obj.joints_state.forEach((val) => {
      bufferOffset = LegJointsState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LegsJointsState
    let len;
    let data = new LegsJointsState(null);
    // Deserialize message field [joints_state]
    len = 6;
    data.joints_state = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joints_state[i] = LegJointsState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/LegsJointsState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6fe1b620769e6858203cf2a048e48ef3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    taticoma_msgs/LegJointsState[6] joints_state
    
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
    const resolved = new LegsJointsState(null);
    if (msg.joints_state !== undefined) {
      resolved.joints_state = new Array(6)
      for (let i = 0; i < resolved.joints_state.length; ++i) {
        if (msg.joints_state.length > i) {
          resolved.joints_state[i] = LegJointsState.Resolve(msg.joints_state[i]);
        }
        else {
          resolved.joints_state[i] = new LegJointsState();
        }
      }
    }
    else {
      resolved.joints_state = new Array(6).fill(new LegJointsState())
    }

    return resolved;
    }
};

module.exports = LegsJointsState;
