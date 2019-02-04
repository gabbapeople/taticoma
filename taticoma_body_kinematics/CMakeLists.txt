cmake_minimum_required(VERSION 2.8.3)
project(taticoma_body_kinematics)

find_package(catkin REQUIRED COMPONENTS
  kdl_parser
  roscpp
  rospy
  std_msgs
  taticoma_msgs
)

find_package(orocos_kdl)

catkin_package(
)

include_directories( include ${catkin_INCLUDE_DIRS})

add_executable(body_kinematics src/body_kinematics.cpp)
target_link_libraries(body_kinematics ${catkin_LIBRARIES})


