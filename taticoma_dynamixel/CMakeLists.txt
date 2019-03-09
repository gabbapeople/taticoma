cmake_minimum_required(VERSION 2.8.3)
project(taticoma_dynamixel)

find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  taticoma_msgs
  dynamixel_workbench_msgs
)

catkin_package(
)

include_directories(
  ${catkin_INCLUDE_DIRS}
)

add_executable(dynamixel_controller_sub src/dynamixel_controller_sub.cpp)
target_link_libraries(dynamixel_controller_sub ${catkin_LIBRARIES})


