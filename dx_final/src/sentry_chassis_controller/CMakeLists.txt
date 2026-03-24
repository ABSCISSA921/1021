cmake_minimum_required(VERSION 3.0.2)
project(sentry_chassis_controller)

add_compile_options(-std=c++11)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  geometry_msgs
  sensor_msgs
  nav_msgs
  tf
  control_toolbox
  pluginlib
  controller_interface
  hardware_interface
  rm_description
  dynamic_reconfigure 
)

# 生成动态配置头文件
generate_dynamic_reconfigure_options(
  cfg/ChassisOps.cfg
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES ${PROJECT_NAME}
  CATKIN_DEPENDS roscpp geometry_msgs sensor_msgs nav_msgs tf control_toolbox pluginlib controller_interface hardware_interface rm_description dynamic_reconfigure
)

include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)

# 1. 声明库 (add_library)
# 将源文件编译成一个名为 "sentry_chassis_controller" 的库文件
add_library(${PROJECT_NAME}
  src/sentry_chassis_controller.cpp
)

# 确保在编译 cpp 之前先生成 cfg 头文件
add_dependencies(${PROJECT_NAME} ${PROJECT_NAME}_gencfg)

add_executable(keyboard_teleop src/keyboard_teleop.cpp)

# 链接库 (通常只需要 catkin_LIBRARIES)
target_link_libraries(keyboard_teleop ${catkin_LIBRARIES})

# 2. 链接库 (target_link_libraries)
# 告诉编译器这个库依赖哪些 ROS 基础库
target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
)

install(FILES sentry_chassis_controller_plugin.xml
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
)

install(DIRECTORY config/ launch/
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
