# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include/eigen3".split(';') if "${prefix}/include;/usr/include/eigen3" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;rc_common;effort_controllers;tf2_geometry_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lchassis_controllers".split(';') if "-lchassis_controllers" != "" else []
PROJECT_NAME = "chassis_controllers"
PROJECT_SPACE_DIR = "/home/xie/rc_ws/install_isolated"
PROJECT_VERSION = "0.0.0"
