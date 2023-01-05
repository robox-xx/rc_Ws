# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "roscpp;roslint;rc_common;rc_msgs;hardware_interface;controller_interface;transmission_interface;joint_limits_interface;controller_manager;urdf;realtime_tools;serial".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lrc_hw_loader_plugins".split(';') if "-lrc_hw_loader_plugins" != "" else []
PROJECT_NAME = "rc_hw"
PROJECT_SPACE_DIR = "/home/xie/rc_ws/install"
PROJECT_VERSION = "0.0.0"
