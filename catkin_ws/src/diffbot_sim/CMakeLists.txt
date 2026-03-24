cmake_minimum_required(VERSION 3.0.2)
project(diffbot_sim)

add_compile_options(-std=c++11)

## 修改 1：添加 std_msgs
find_package(catkin REQUIRED COMPONENTS
  controller_manager
  diff_drive_controller
  gazebo_ros
  robot_state_publisher
  urdf
  xacro
  roscpp
  geometry_msgs
  sensor_msgs
  std_msgs  # <--- 必须添加这个
)

find_package(gazebo REQUIRED)

catkin_package()

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
  ${GAZEBO_INCLUDE_DIRS}
)

add_library(chassis_follower_plugin src/chassis_follower_plugin.cpp)
target_link_libraries(chassis_follower_plugin 
  ${catkin_LIBRARIES} 
  ${GAZEBO_LIBRARIES}
)