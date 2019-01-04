# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "taticoma_msgs: 2 messages, 0 services")

set(MSG_I_FLAGS "-Itaticoma_msgs:/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(taticoma_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_custom_target(_taticoma_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "taticoma_msgs" "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" "taticoma_msgs/LegJointsState"
)

get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_custom_target(_taticoma_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "taticoma_msgs" "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/taticoma_msgs
)
_generate_msg_cpp(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/taticoma_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(taticoma_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/taticoma_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(taticoma_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(taticoma_msgs_generate_messages taticoma_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_cpp _taticoma_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_cpp _taticoma_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(taticoma_msgs_gencpp)
add_dependencies(taticoma_msgs_gencpp taticoma_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS taticoma_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/taticoma_msgs
)
_generate_msg_eus(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/taticoma_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(taticoma_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/taticoma_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(taticoma_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(taticoma_msgs_generate_messages taticoma_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_eus _taticoma_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_eus _taticoma_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(taticoma_msgs_geneus)
add_dependencies(taticoma_msgs_geneus taticoma_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS taticoma_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/taticoma_msgs
)
_generate_msg_lisp(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/taticoma_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(taticoma_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/taticoma_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(taticoma_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(taticoma_msgs_generate_messages taticoma_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_lisp _taticoma_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_lisp _taticoma_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(taticoma_msgs_genlisp)
add_dependencies(taticoma_msgs_genlisp taticoma_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS taticoma_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/taticoma_msgs
)
_generate_msg_nodejs(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/taticoma_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(taticoma_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/taticoma_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(taticoma_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(taticoma_msgs_generate_messages taticoma_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_nodejs _taticoma_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_nodejs _taticoma_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(taticoma_msgs_gennodejs)
add_dependencies(taticoma_msgs_gennodejs taticoma_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS taticoma_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs
)
_generate_msg_py(taticoma_msgs
  "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(taticoma_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(taticoma_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(taticoma_msgs_generate_messages taticoma_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegsJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_py _taticoma_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/ROS/taticoma/robot-description-test-1/src/taticoma_msgs/msg/LegJointsState.msg" NAME_WE)
add_dependencies(taticoma_msgs_generate_messages_py _taticoma_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(taticoma_msgs_genpy)
add_dependencies(taticoma_msgs_genpy taticoma_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS taticoma_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/taticoma_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/taticoma_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(taticoma_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/taticoma_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/taticoma_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(taticoma_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/taticoma_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/taticoma_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(taticoma_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/taticoma_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/taticoma_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(taticoma_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/taticoma_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(taticoma_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
