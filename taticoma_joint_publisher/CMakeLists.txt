cmake_minimum_required(VERSION 2.8.3)
project(taticoma_joint_publisher)

find_package(catkin REQUIRED COMPONENTS
  joint_state_publisher
  taticoma_body_kinematics
  roscpp
  rospy
  sensor_msgs
  std_msgs
  taticoma_msgs
)

catkin_package(
)

include_directories( include ${catkin_INCLUDE_DIRS})

add_executable(joint_publisher src/joint_publisher.cpp)
target_link_libraries(joint_publisher ${catkin_LIBRARIES})

