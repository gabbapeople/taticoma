cmake_minimum_required(VERSION 2.8.3)
project(taticoma_leg_kinematics)

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

add_library(leg_ik_solver src/hp_chainiksolverpos_nr_jl.cpp src/chainiksolvervel_pinv.cpp src/svd_HH.cpp)
target_link_libraries(leg_ik_solver ${catkin_LIBRARIES})

add_executable(leg_kinematics src/leg_kinematics.cpp)
target_link_libraries(leg_kinematics leg_ik_solver ${catkin_LIBRARIES})

add_executable(leg_kinematics_pub src/leg_kinematics_pub.cpp)
target_link_libraries(leg_kinematics_pub leg_ik_solver ${catkin_LIBRARIES})

add_executable(leg_ik_service src/leg_ik_service.cpp)
target_link_libraries(leg_ik_service leg_ik_solver ${catkin_LIBRARIES})


