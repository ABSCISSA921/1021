cmake_minimum_required(VERSION 3.0.2)
project(navigation_lab)
find_package(catkin REQUIRED)
catkin_package()
catkin_install_python(PROGRAMS scripts/send_goal.py scripts/generate_training_map.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
install(DIRECTORY config launch maps rviz
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
install(FILES README.md LICENSE DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})
if(CATKIN_ENABLE_TESTING)
  catkin_add_nosetests(test/test_configuration.py)
  find_package(rostest REQUIRED)
  add_rostest(test/goal_client.test)
endif()
