# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "following_person: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ifollowing_person:/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(following_person_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_custom_target(_following_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "following_person" "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" ""
)

get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_custom_target(_following_person_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "following_person" "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/following_person
)

### Generating Services
_generate_srv_cpp(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/following_person
)

### Generating Module File
_generate_module_cpp(following_person
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/following_person
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(following_person_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(following_person_generate_messages following_person_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_dependencies(following_person_generate_messages_cpp _following_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_dependencies(following_person_generate_messages_cpp _following_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(following_person_gencpp)
add_dependencies(following_person_gencpp following_person_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS following_person_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/following_person
)

### Generating Services
_generate_srv_eus(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/following_person
)

### Generating Module File
_generate_module_eus(following_person
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/following_person
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(following_person_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(following_person_generate_messages following_person_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_dependencies(following_person_generate_messages_eus _following_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_dependencies(following_person_generate_messages_eus _following_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(following_person_geneus)
add_dependencies(following_person_geneus following_person_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS following_person_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/following_person
)

### Generating Services
_generate_srv_lisp(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/following_person
)

### Generating Module File
_generate_module_lisp(following_person
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/following_person
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(following_person_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(following_person_generate_messages following_person_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_dependencies(following_person_generate_messages_lisp _following_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_dependencies(following_person_generate_messages_lisp _following_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(following_person_genlisp)
add_dependencies(following_person_genlisp following_person_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS following_person_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/following_person
)

### Generating Services
_generate_srv_nodejs(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/following_person
)

### Generating Module File
_generate_module_nodejs(following_person
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/following_person
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(following_person_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(following_person_generate_messages following_person_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_dependencies(following_person_generate_messages_nodejs _following_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_dependencies(following_person_generate_messages_nodejs _following_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(following_person_gennodejs)
add_dependencies(following_person_gennodejs following_person_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS following_person_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person
)

### Generating Services
_generate_srv_py(following_person
  "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person
)

### Generating Module File
_generate_module_py(following_person
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(following_person_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(following_person_generate_messages following_person_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/msg/rect_msg.msg" NAME_WE)
add_dependencies(following_person_generate_messages_py _following_person_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/boychen/Desktop/R-DAP/follow_person/ros_ws/src/following_person/srv/target_srv.srv" NAME_WE)
add_dependencies(following_person_generate_messages_py _following_person_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(following_person_genpy)
add_dependencies(following_person_genpy following_person_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS following_person_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/following_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/following_person
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(following_person_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/following_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/following_person
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(following_person_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/following_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/following_person
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(following_person_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/following_person)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/following_person
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(following_person_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/following_person
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(following_person_generate_messages_py std_msgs_generate_messages_py)
endif()
