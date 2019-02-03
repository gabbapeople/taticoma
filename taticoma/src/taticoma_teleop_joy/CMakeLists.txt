cmake_minimum_required(VERSION 2.8.3)
project(taticoma_teleop_joy)

find_package(catkin REQUIRED COMPONENTS
  ps3joy
  joy
  roscpp
  std_msgs
  taticoma_msgs
)

catkin_package(
)

include_directories( include ${catkin_INCLUDE_DIRS})

add_executable(teleop_joy src/teleop_joy.cpp)
target_link_libraries(teleop_joy ${catkin_LIBRARIES})


