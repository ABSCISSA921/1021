# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;geometry_msgs;sensor_msgs;nav_msgs;tf;control_toolbox;pluginlib;controller_interface;hardware_interface;rm_description;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lsentry_chassis_controller".split(';') if "-lsentry_chassis_controller" != "" else []
PROJECT_NAME = "sentry_chassis_controller"
PROJECT_SPACE_DIR = "/home/abscissa/dx_final/install"
PROJECT_VERSION = "0.1.0"
