# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rm_msgs: 75 messages, 6 services")

set(MSG_I_FLAGS "-Irm_msgs:/home/abscissa/dx_final/src/rm_control/rm_msgs/msg;-Irm_msgs:/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection;-Irm_msgs:/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee;-Irm_msgs:/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rm_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" "geometry_msgs/Accel:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/PointStamped"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Twist:geometry_msgs/Point"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:rm_msgs/TagMsg:geometry_msgs/Point"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" "geometry_msgs/Pose:geometry_msgs/Point:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point:rm_msgs/TargetDetection"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" "std_msgs/Header:geometry_msgs/Point:geometry_msgs/Quaternion:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" "actionlib_msgs/GoalStatus:rm_msgs/EngineerResult:actionlib_msgs/GoalID:rm_msgs/EngineerActionGoal:std_msgs/Header:rm_msgs/EngineerActionFeedback:rm_msgs/EngineerFeedback:rm_msgs/EngineerActionResult:rm_msgs/EngineerGoal"
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:rm_msgs/EngineerGoal"
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" "std_msgs/Header:actionlib_msgs/GoalStatus:rm_msgs/EngineerResult:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" "std_msgs/Header:rm_msgs/EngineerFeedback:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" ""
)

get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_custom_target(_rm_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rm_msgs" "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_msg_cpp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)
_generate_srv_cpp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_cpp(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rm_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_cpp _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_gencpp)
add_dependencies(rm_msgs_gencpp rm_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_msg_eus(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)
_generate_srv_eus(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_eus(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rm_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_eus _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_geneus)
add_dependencies(rm_msgs_geneus rm_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_msg_lisp(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)
_generate_srv_lisp(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_lisp(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rm_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_lisp _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_genlisp)
add_dependencies(rm_msgs_genlisp rm_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_msg_nodejs(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)
_generate_srv_nodejs(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_nodejs(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rm_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_nodejs _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_gennodejs)
add_dependencies(rm_msgs_gennodejs rm_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Accel.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_msg_py(rm_msgs
  "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)

### Generating Services
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)
_generate_srv_py(rm_msgs
  "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
)

### Generating Module File
_generate_module_py(rm_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rm_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rm_msgs_generate_messages rm_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ActuatorState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BalanceState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/BusState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/DbusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/Dart.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ExchangerMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ChassisCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/ShootBeforehandCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalDesError.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GimbalPosState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LegCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LpData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/LocalHeatState.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/KalmanData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MovingAverageData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/GpioData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TofRadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/MultiDofCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsg.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/TagMsgArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/SentryDeviate.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/CustomControllerData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTKeyboardMouseData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/VTReceiverControlData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/PriorityArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetection.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TargetDetectionArray.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/detection/TrackData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/CapacityData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/StateCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EngineerUi.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotHp.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerHeatData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/EventData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/IcraBuffDebuffZoneStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SupplyProjectileAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotHurt.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryAttackingTarget.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ShootData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/BulletAllowance.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RfidStatus.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/DartClientCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ManualToReferee.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarMarkData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RobotsPositionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapSendData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/ClientMapReceiveData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/MapSentryData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/GameRobotPosData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarInfo.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/Buff.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/RadarToSentry.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/SentryCmd.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/VisualizeStateData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSampleAndStatusData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementInitializationExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementProcessStackOverflowData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementSystemExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/msg/referee/PowerManagementUnknownExceptionData.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerAction.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerActionFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerGoal.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerResult.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/devel/.private/rm_msgs/share/rm_msgs/msg/EngineerFeedback.msg" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/ContinousDetectorSwitch.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/StatusChange.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/SetLimitVel.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/CameraStatus.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableImuTrigger.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/abscissa/dx_final/src/rm_control/rm_msgs/srv/EnableGyro.srv" NAME_WE)
add_dependencies(rm_msgs_generate_messages_py _rm_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rm_msgs_genpy)
add_dependencies(rm_msgs_genpy rm_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rm_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rm_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(rm_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rm_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(rm_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rm_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(rm_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rm_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(rm_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rm_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(rm_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
