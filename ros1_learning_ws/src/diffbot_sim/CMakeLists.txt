cmake_minimum_required(VERSION 3.0.2)
project(diffbot_sim)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  controller_manager
  diff_drive_controller
  gazebo_ros
  robot_state_publisher
  urdf
  xacro
  roscpp
  geometry_msgs
  std_msgs
)

find_package(gazebo REQUIRED)

catkin_package(
  CATKIN_DEPENDS controller_manager diff_drive_controller gazebo_ros
                 robot_state_publisher roscpp geometry_msgs std_msgs
)

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

install(TARGETS chassis_follower_plugin
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

install(DIRECTORY config launch urdf
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
