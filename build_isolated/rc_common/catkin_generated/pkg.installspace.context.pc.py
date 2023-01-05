# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "tf;rc_msgs;geometry_msgs;control_msgs;controller_manager_msgs;imu_complementary_filter;imu_filter_madgwick;roscpp;dynamic_reconfigure".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrc_common".split(';') if "-lrc_common" != "" else []
PROJECT_NAME = "rc_common"
PROJECT_SPACE_DIR = "/home/xie/rc_ws/install_isolated"
PROJECT_VERSION = "0.0.0"
