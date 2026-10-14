cmake_minimum_required(VERSION 3.0.2)
project(control_lab)

find_package(catkin REQUIRED)
catkin_package()

install(DIRECTORY config launch urdf worlds
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(FILES README.md LICENSE DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
