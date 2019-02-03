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

class ControlCommand {
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
    // Serializes a message object of type ControlCommand
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlCommand
    let len;
    let data = new ControlCommand(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'taticoma_msgs/ControlCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '367a72f93ebfa3ea6e8196068a88b13e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 cmd
    
    int32 SERVO_PWR_ON=1
    int32 SERVO_PWR_OFF=2
    int32 PI_POWER_VAR=3
    int32 AUDIO_PWR_ON=4
    int32 AUDIO_PWR_OFF=5
    int32 MOVEMENT_MODE_ON=6
    int32 MOVEMENT_MODE_OFF=7
    int32 MANUAL_MODE_ON=8
    int32 MANUAL_MODE_OFF=9
    
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlCommand(null);
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
ControlCommand.Constants = {
  SERVO_PWR_ON: 1,
  SERVO_PWR_OFF: 2,
  PI_POWER_VAR: 3,
  AUDIO_PWR_ON: 4,
  AUDIO_PWR_OFF: 5,
  MOVEMENT_MODE_ON: 6,
  MOVEMENT_MODE_OFF: 7,
  MANUAL_MODE_ON: 8,
  MANUAL_MODE_OFF: 9,
}

module.exports = ControlCommand;
