# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;rm_msgs;geometry_msgs;control_msgs;controller_manager_msgs;imu_complementary_filter;imu_filter_madgwick;roscpp;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrm_common".split(';') if "-lrm_common" != "" else []
PROJECT_NAME = "rm_common"
PROJECT_SPACE_DIR = "/home/abscissa/dx_final/install"
PROJECT_VERSION = "0.1.20"
