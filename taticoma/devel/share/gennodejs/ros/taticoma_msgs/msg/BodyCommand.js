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

class BodyCommand {
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
    // Serializes a message object of type BodyCommand
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BodyCommand
    let len;
    let data = new BodyCommand(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/BodyCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1abfa573ddc640038a45f99b26d93a23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd
    
    int32 STAND_UP_CMD=1
    int32 SEAT_DOWN_CMD=2
    int32 IMU_START_CMD=3
    int32 IMU_STOP_CMD=4
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BodyCommand(null);
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
BodyCommand.Constants = {
  STAND_UP_CMD: 1,
  SEAT_DOWN_CMD: 2,
  IMU_START_CMD: 3,
  IMU_STOP_CMD: 4,
}

module.exports = BodyCommand;
