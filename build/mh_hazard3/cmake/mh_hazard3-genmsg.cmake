# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(FATAL_ERROR "Could not find messages which '/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMImage.srv' depends on. Did you forget to specify generate_messages(DEPENDENCIES ...)?
Cannot locate message [Image]: unknown package [sensor_msgs] on search path [{'std_msgs': ['/opt/ros/noetic/share/std_msgs/cmake/../msg']}]")
message(STATUS "mh_hazard3: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mh_hazard3_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_custom_target(_mh_hazard3_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mh_hazard3" "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(mh_hazard3
  "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard3
)

### Generating Module File
_generate_module_cpp(mh_hazard3
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard3
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mh_hazard3_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mh_hazard3_generate_messages mh_hazard3_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard3_generate_messages_cpp _mh_hazard3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard3_gencpp)
add_dependencies(mh_hazard3_gencpp mh_hazard3_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard3_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(mh_hazard3
  "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard3
)

### Generating Module File
_generate_module_eus(mh_hazard3
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard3
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mh_hazard3_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mh_hazard3_generate_messages mh_hazard3_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard3_generate_messages_eus _mh_hazard3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard3_geneus)
add_dependencies(mh_hazard3_geneus mh_hazard3_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard3_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(mh_hazard3
  "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard3
)

### Generating Module File
_generate_module_lisp(mh_hazard3
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard3
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mh_hazard3_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mh_hazard3_generate_messages mh_hazard3_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard3_generate_messages_lisp _mh_hazard3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard3_genlisp)
add_dependencies(mh_hazard3_genlisp mh_hazard3_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard3_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(mh_hazard3
  "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard3
)

### Generating Module File
_generate_module_nodejs(mh_hazard3
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard3
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mh_hazard3_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mh_hazard3_generate_messages mh_hazard3_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard3_generate_messages_nodejs _mh_hazard3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard3_gennodejs)
add_dependencies(mh_hazard3_gennodejs mh_hazard3_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard3_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(mh_hazard3
  "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard3
)

### Generating Module File
_generate_module_py(mh_hazard3
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard3
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mh_hazard3_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mh_hazard3_generate_messages mh_hazard3_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/mheskandari/catkin_ws/src/mh_hazard3/srv/LLMText.srv" NAME_WE)
add_dependencies(mh_hazard3_generate_messages_py _mh_hazard3_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mh_hazard3_genpy)
add_dependencies(mh_hazard3_genpy mh_hazard3_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mh_hazard3_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mh_hazard3
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mh_hazard3_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mh_hazard3
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mh_hazard3_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mh_hazard3
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mh_hazard3_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard3)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mh_hazard3
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mh_hazard3_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard3)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard3\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mh_hazard3
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mh_hazard3_generate_messages_py std_msgs_generate_messages_py)
endif()
