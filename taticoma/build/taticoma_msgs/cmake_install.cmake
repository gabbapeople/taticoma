# Install script for directory: /home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/ubuntu/ROS/taticoma/taticoma/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs/msg" TYPE FILE FILES
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/LegJointsState.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/LegsJointsState.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/LegIKRequest.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/LegPositionState.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/BodyState.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/BodyCommand.msg"
    "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/msg/GaitCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs/srv" TYPE FILE FILES "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/srv/GetLegIKSolver.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs/cmake" TYPE FILE FILES "/home/ubuntu/ROS/taticoma/taticoma/build/taticoma_msgs/catkin_generated/installspace/taticoma_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/ubuntu/ROS/taticoma/taticoma/devel/include/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/ubuntu/ROS/taticoma/taticoma/devel/share/roseus/ros/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/ubuntu/ROS/taticoma/taticoma/devel/share/common-lisp/ros/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/ubuntu/ROS/taticoma/taticoma/devel/share/gennodejs/ros/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/ubuntu/ROS/taticoma/taticoma/devel/lib/python2.7/dist-packages/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/ubuntu/ROS/taticoma/taticoma/devel/lib/python2.7/dist-packages/taticoma_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/ubuntu/ROS/taticoma/taticoma/build/taticoma_msgs/catkin_generated/installspace/taticoma_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs/cmake" TYPE FILE FILES "/home/ubuntu/ROS/taticoma/taticoma/build/taticoma_msgs/catkin_generated/installspace/taticoma_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs/cmake" TYPE FILE FILES
    "/home/ubuntu/ROS/taticoma/taticoma/build/taticoma_msgs/catkin_generated/installspace/taticoma_msgsConfig.cmake"
    "/home/ubuntu/ROS/taticoma/taticoma/build/taticoma_msgs/catkin_generated/installspace/taticoma_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/taticoma_msgs" TYPE FILE FILES "/home/ubuntu/ROS/taticoma/taticoma/src/taticoma_msgs/package.xml")
endif()

