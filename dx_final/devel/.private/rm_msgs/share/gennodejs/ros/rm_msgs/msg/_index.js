
"use strict";

let GimbalDesError = require('./GimbalDesError.js');
let LocalHeatState = require('./LocalHeatState.js');
let BusState = require('./BusState.js');
let LpData = require('./LpData.js');
let GpioData = require('./GpioData.js');
let ShootCmd = require('./ShootCmd.js');
let VTReceiverControlData = require('./VTReceiverControlData.js');
let MovingAverageData = require('./MovingAverageData.js');
let TagMsgArray = require('./TagMsgArray.js');
let ActuatorState = require('./ActuatorState.js');
let ShootState = require('./ShootState.js');
let Dart = require('./Dart.js');
let TagMsg = require('./TagMsg.js');
let BalanceState = require('./BalanceState.js');
let VTKeyboardMouseData = require('./VTKeyboardMouseData.js');
let GimbalCmd = require('./GimbalCmd.js');
let DbusData = require('./DbusData.js');
let ChassisCmd = require('./ChassisCmd.js');
let MultiDofCmd = require('./MultiDofCmd.js');
let LegCmd = require('./LegCmd.js');
let GimbalPosState = require('./GimbalPosState.js');
let ExchangerMsg = require('./ExchangerMsg.js');
let TofRadarData = require('./TofRadarData.js');
let CustomControllerData = require('./CustomControllerData.js');
let SentryDeviate = require('./SentryDeviate.js');
let KalmanData = require('./KalmanData.js');
let ShootBeforehandCmd = require('./ShootBeforehandCmd.js');
let TrackData = require('./TrackData.js');
let TargetDetectionArray = require('./TargetDetectionArray.js');
let PriorityArray = require('./PriorityArray.js');
let TargetDetection = require('./TargetDetection.js');
let CapacityData = require('./CapacityData.js');
let GameRobotPosData = require('./GameRobotPosData.js');
let DartStatus = require('./DartStatus.js');
let StateCmd = require('./StateCmd.js');
let PowerManagementProcessStackOverflowData = require('./PowerManagementProcessStackOverflowData.js');
let MapSentryData = require('./MapSentryData.js');
let RobotHurt = require('./RobotHurt.js');
let SentryCmd = require('./SentryCmd.js');
let GameStatus = require('./GameStatus.js');
let PowerManagementInitializationExceptionData = require('./PowerManagementInitializationExceptionData.js');
let ManualToReferee = require('./ManualToReferee.js');
let EventData = require('./EventData.js');
let ShootData = require('./ShootData.js');
let ClientMapReceiveData = require('./ClientMapReceiveData.js');
let GameRobotHp = require('./GameRobotHp.js');
let BulletAllowance = require('./BulletAllowance.js');
let Buff = require('./Buff.js');
let RadarInfo = require('./RadarInfo.js');
let PowerManagementSystemExceptionData = require('./PowerManagementSystemExceptionData.js');
let RfidStatus = require('./RfidStatus.js');
let RadarData = require('./RadarData.js');
let SentryAttackingTarget = require('./SentryAttackingTarget.js');
let PowerManagementSampleAndStatusData = require('./PowerManagementSampleAndStatusData.js');
let SentryInfo = require('./SentryInfo.js');
let DartClientCmd = require('./DartClientCmd.js');
let RadarMarkData = require('./RadarMarkData.js');
let VisualizeStateData = require('./VisualizeStateData.js');
let SupplyProjectileAction = require('./SupplyProjectileAction.js');
let EngineerUi = require('./EngineerUi.js');
let IcraBuffDebuffZoneStatus = require('./IcraBuffDebuffZoneStatus.js');
let RadarToSentry = require('./RadarToSentry.js');
let ClientMapSendData = require('./ClientMapSendData.js');
let PowerHeatData = require('./PowerHeatData.js');
let DartInfo = require('./DartInfo.js');
let RobotsPositionData = require('./RobotsPositionData.js');
let PowerManagementUnknownExceptionData = require('./PowerManagementUnknownExceptionData.js');
let GameRobotStatus = require('./GameRobotStatus.js');
let EngineerFeedback = require('./EngineerFeedback.js');
let EngineerAction = require('./EngineerAction.js');
let EngineerActionFeedback = require('./EngineerActionFeedback.js');
let EngineerActionGoal = require('./EngineerActionGoal.js');
let EngineerActionResult = require('./EngineerActionResult.js');
let EngineerGoal = require('./EngineerGoal.js');
let EngineerResult = require('./EngineerResult.js');

module.exports = {
  GimbalDesError: GimbalDesError,
  LocalHeatState: LocalHeatState,
  BusState: BusState,
  LpData: LpData,
  GpioData: GpioData,
  ShootCmd: ShootCmd,
  VTReceiverControlData: VTReceiverControlData,
  MovingAverageData: MovingAverageData,
  TagMsgArray: TagMsgArray,
  ActuatorState: ActuatorState,
  ShootState: ShootState,
  Dart: Dart,
  TagMsg: TagMsg,
  BalanceState: BalanceState,
  VTKeyboardMouseData: VTKeyboardMouseData,
  GimbalCmd: GimbalCmd,
  DbusData: DbusData,
  ChassisCmd: ChassisCmd,
  MultiDofCmd: MultiDofCmd,
  LegCmd: LegCmd,
  GimbalPosState: GimbalPosState,
  ExchangerMsg: ExchangerMsg,
  TofRadarData: TofRadarData,
  CustomControllerData: CustomControllerData,
  SentryDeviate: SentryDeviate,
  KalmanData: KalmanData,
  ShootBeforehandCmd: ShootBeforehandCmd,
  TrackData: TrackData,
  TargetDetectionArray: TargetDetectionArray,
  PriorityArray: PriorityArray,
  TargetDetection: TargetDetection,
  CapacityData: CapacityData,
  GameRobotPosData: GameRobotPosData,
  DartStatus: DartStatus,
  StateCmd: StateCmd,
  PowerManagementProcessStackOverflowData: PowerManagementProcessStackOverflowData,
  MapSentryData: MapSentryData,
  RobotHurt: RobotHurt,
  SentryCmd: SentryCmd,
  GameStatus: GameStatus,
  PowerManagementInitializationExceptionData: PowerManagementInitializationExceptionData,
  ManualToReferee: ManualToReferee,
  EventData: EventData,
  ShootData: ShootData,
  ClientMapReceiveData: ClientMapReceiveData,
  GameRobotHp: GameRobotHp,
  BulletAllowance: BulletAllowance,
  Buff: Buff,
  RadarInfo: RadarInfo,
  PowerManagementSystemExceptionData: PowerManagementSystemExceptionData,
  RfidStatus: RfidStatus,
  RadarData: RadarData,
  SentryAttackingTarget: SentryAttackingTarget,
  PowerManagementSampleAndStatusData: PowerManagementSampleAndStatusData,
  SentryInfo: SentryInfo,
  DartClientCmd: DartClientCmd,
  RadarMarkData: RadarMarkData,
  VisualizeStateData: VisualizeStateData,
  SupplyProjectileAction: SupplyProjectileAction,
  EngineerUi: EngineerUi,
  IcraBuffDebuffZoneStatus: IcraBuffDebuffZoneStatus,
  RadarToSentry: RadarToSentry,
  ClientMapSendData: ClientMapSendData,
  PowerHeatData: PowerHeatData,
  DartInfo: DartInfo,
  RobotsPositionData: RobotsPositionData,
  PowerManagementUnknownExceptionData: PowerManagementUnknownExceptionData,
  GameRobotStatus: GameRobotStatus,
  EngineerFeedback: EngineerFeedback,
  EngineerAction: EngineerAction,
  EngineerActionFeedback: EngineerActionFeedback,
  EngineerActionGoal: EngineerActionGoal,
  EngineerActionResult: EngineerActionResult,
  EngineerGoal: EngineerGoal,
  EngineerResult: EngineerResult,
};
