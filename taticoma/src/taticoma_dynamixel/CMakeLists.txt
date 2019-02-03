cmake_minimum_required(VERSION 2.8.3)
project(taticoma_dynamixel)

find_package(catkin REQUIRED COMPONENTS
  dynamixel_controllers
  roscpp
  rospy
  std_msgs
)
catkin_package(
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)
