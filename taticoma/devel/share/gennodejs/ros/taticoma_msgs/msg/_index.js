
"use strict";

let AudioCommand = require('./AudioCommand.js');
let LegJointsState = require('./LegJointsState.js');
let LegPositionState = require('./LegPositionState.js');
let BodyCommand = require('./BodyCommand.js');
let LegIKRequest = require('./LegIKRequest.js');
let BodyState = require('./BodyState.js');
let ControlCommand = require('./ControlCommand.js');
let MoveCommand = require('./MoveCommand.js');
let LegsJointsState = require('./LegsJointsState.js');
let GaitCommand = require('./GaitCommand.js');

module.exports = {
  AudioCommand: AudioCommand,
  LegJointsState: LegJointsState,
  LegPositionState: LegPositionState,
  BodyCommand: BodyCommand,
  LegIKRequest: LegIKRequest,
  BodyState: BodyState,
  ControlCommand: ControlCommand,
  MoveCommand: MoveCommand,
  LegsJointsState: LegsJointsState,
  GaitCommand: GaitCommand,
};
