# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rm_common;rm_msgs;hardware_interface;controller_interface;transmission_interface;joint_limits_interface;controller_manager;urdf;realtime_tools".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrm_hw_loader_plugins".split(';') if "-lrm_hw_loader_plugins" != "" else []
PROJECT_NAME = "rm_hw"
PROJECT_SPACE_DIR = "/home/abscissa/dx_final/install"
PROJECT_VERSION = "0.1.20"
