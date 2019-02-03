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

class MoveCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MoveCommand
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MoveCommand
    let len;
    let data = new MoveCommand(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/MoveCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3f78f07168f5d781f8449481447d6912';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd
    
    int32 STOP_CMD=1
    int32 PAUSE_CMD=2
    int32 SLEEP_CMD=3
    int32 WAKE_CMD=4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MoveCommand(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    return resolved;
    }
};

// Constants for message
MoveCommand.Constants = {
  STOP_CMD: 1,
  PAUSE_CMD: 2,
  SLEEP_CMD: 3,
  WAKE_CMD: 4,
}

module.exports = MoveCommand;
