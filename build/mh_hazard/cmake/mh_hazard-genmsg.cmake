# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mh_hazard: 4 messages, 13 services")

set(MSG_I_FLAGS "-Imh_hazard:/home/mheskandari/catkin_ws/src/mh_hazard/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mh_hazard_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" ""
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" "geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" "sensor_msgs/Image:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" ""
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" "std_msgs/String"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" "std_msgs/MultiArrayDimension:std_msgs/MultiArrayLayout:std_msgs/Float32MultiArray:sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" "geometry_msgs/PointStamped:sensor_msgs/RegionOfInterest:sensor_msgs/CameraInfo:sensor_msgs/Image:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" "geometry_msgs/PointStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" "std_msgs/MultiArrayLayout:std_msgs/Float32MultiArray:std_msgs/MultiArrayDimension"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" ""
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" ""
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_custom_target(_mh_hazard_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard" "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_msg_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_msg_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_msg_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)

### Generating Services
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)
_generate_srv_cpp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
)

### Generating Module File
_generate_module_cpp(mh_hazard
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mh_hazard_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mh_hazard_generate_messages mh_hazard_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_cpp _mh_hazard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard_gencpp)
add_dependencies(mh_hazard_gencpp mh_hazard_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_msg_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_msg_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_msg_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)

### Generating Services
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)
_generate_srv_eus(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
)

### Generating Module File
_generate_module_eus(mh_hazard
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mh_hazard_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mh_hazard_generate_messages mh_hazard_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_eus _mh_hazard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard_geneus)
add_dependencies(mh_hazard_geneus mh_hazard_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_msg_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_msg_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_msg_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)

### Generating Services
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)
_generate_srv_lisp(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
)

### Generating Module File
_generate_module_lisp(mh_hazard
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mh_hazard_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mh_hazard_generate_messages mh_hazard_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_lisp _mh_hazard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard_genlisp)
add_dependencies(mh_hazard_genlisp mh_hazard_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_msg_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_msg_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_msg_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)

### Generating Services
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)
_generate_srv_nodejs(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
)

### Generating Module File
_generate_module_nodejs(mh_hazard
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mh_hazard_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mh_hazard_generate_messages mh_hazard_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_nodejs _mh_hazard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard_gennodejs)
add_dependencies(mh_hazard_gennodejs mh_hazard_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_msg_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_msg_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_msg_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)

### Generating Services
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CameraInfo.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PointStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)
_generate_srv_py(mh_hazard
  "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
)

### Generating Module File
_generate_module_py(mh_hazard
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mh_hazard_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mh_hazard_generate_messages mh_hazard_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Transcription.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/Intrest.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ImageArray.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/msg/ObjectImage.msg" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Servo.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Whisper.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/SAM.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/CLIP.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/DetectSlot.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/Indicate.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/TTS.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMImage.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITNamedPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/MoveITGrabPose.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard/srv/OrientCamera.srv" NAME_WE)
add_dependencies(mh_hazard_generate_messages_py _mh_hazard_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard_genpy)
add_dependencies(mh_hazard_genpy mh_hazard_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mh_hazard_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mh_hazard_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mh_hazard_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mh_hazard_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mh_hazard_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mh_hazard_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mh_hazard_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mh_hazard_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mh_hazard_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mh_hazard_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mh_hazard_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mh_hazard_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mh_hazard_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mh_hazard_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mh_hazard_generate_messages_py std_msgs_generate_messages_py)
endif()
