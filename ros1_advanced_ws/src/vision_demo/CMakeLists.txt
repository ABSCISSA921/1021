cmake_minimum_required(VERSION 3.0.2)
project(vision_demo)

add_compile_options(-std=c++14)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  cv_bridge
  image_transport
  sensor_msgs
  std_msgs
  geometry_msgs
)

find_package(OpenCV REQUIRED)

catkin_package(
  CATKIN_DEPENDS roscpp cv_bridge image_transport sensor_msgs std_msgs geometry_msgs
)

include_directories(
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
)

add_executable(red_detector src/red_detector.cpp)
target_link_libraries(red_detector ${catkin_LIBRARIES} ${OpenCV_LIBS})

add_executable(test_image_pub src/test_image_pub.cpp)
target_link_libraries(test_image_pub ${catkin_LIBRARIES} ${OpenCV_LIBS})
