cmake_minimum_required(VERSION 3.0.2)
project(ros_basics)

find_package(catkin REQUIRED COMPONENTS message_generation std_msgs actionlib_msgs)
add_message_files(FILES Counter.msg)
add_service_files(FILES AddTwoInts.srv)
add_action_files(FILES Countdown.action)
generate_messages(DEPENDENCIES std_msgs actionlib_msgs)
catkin_package(CATKIN_DEPENDS message_runtime std_msgs actionlib_msgs)

catkin_install_python(PROGRAMS
  scripts/talker.py scripts/listener.py
  scripts/add_server.py scripts/add_client.py
  scripts/countdown_server.py scripts/countdown_client.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)
install(DIRECTORY launch config DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION})

if(CATKIN_ENABLE_TESTING)
  find_package(rostest REQUIRED)
  catkin_install_python(PROGRAMS test/test_communication.py
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})
  add_rostest(test/communication.test)
endif()
