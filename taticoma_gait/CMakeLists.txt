cmake_minimum_required(VERSION 2.8.3)
project(taticoma_gait)

find_package(catkin REQUIRED COMPONENTS
  kdl_parser
  roscpp
  taticoma_msgs
)

find_package(orocos_kdl)

catkin_package(
)

include_directories( include ${catkin_INCLUDE_DIRS})

add_executable(gait_kinematics src/gait_kinematics.cpp src/gait.cpp)
target_link_libraries(gait_kinematics ${catkin_LIBRARIES})

