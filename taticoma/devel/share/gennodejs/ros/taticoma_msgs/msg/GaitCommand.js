// Auto-generated. Do not edit!

// (in-package taticoma_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GaitCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.fi = null;
      this.velocity = null;
      this.alpha = null;
      this.scale = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('fi')) {
        this.fi = initObj.fi
      }
      else {
        this.fi = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
      if (initObj.hasOwnProperty('alpha')) {
        this.alpha = initObj.alpha
      }
      else {
        this.alpha = 0.0;
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GaitCommand
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [fi]
    bufferOffset = _serializer.float64(obj.fi, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    // Serialize message field [alpha]
    bufferOffset = _serializer.float64(obj.alpha, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float64(obj.scale, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GaitCommand
    let len;
    let data = new GaitCommand(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fi]
    data.fi = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [alpha]
    data.alpha = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/GaitCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '999052af9472adb07699063f39a5a04e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd
    float64 fi
    float64 velocity
    float64 alpha
    float64 scale
    
    int32 RUNRIPPLE=1
    int32 RUNTRIPOD=2
    int32 STOP=3
    int32 PAUSE=4
    int32 SLEEP=5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GaitCommand(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.fi !== undefined) {
      resolved.fi = msg.fi;
    }
    else {
      resolved.fi = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    if (msg.alpha !== undefined) {
      resolved.alpha = msg.alpha;
    }
    else {
      resolved.alpha = 0.0
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    return resolved;
    }
};

// Constants for message
GaitCommand.Constants = {
  RUNRIPPLE: 1,
  RUNTRIPOD: 2,
  STOP: 3,
  PAUSE: 4,
  SLEEP: 5,
}

module.exports = GaitCommand;
