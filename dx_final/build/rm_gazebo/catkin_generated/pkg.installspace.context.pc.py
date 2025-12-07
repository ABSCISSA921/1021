# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rm_common;gazebo_ros;gazebo_ros_control".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrm_robot_hw_sim;-lrm_mimic_joint_plugin".split(';') if "-lrm_robot_hw_sim;-lrm_mimic_joint_plugin" != "" else []
PROJECT_NAME = "rm_gazebo"
PROJECT_SPACE_DIR = "/home/abscissa/dx_final/install"
PROJECT_VERSION = "0.1.20"
