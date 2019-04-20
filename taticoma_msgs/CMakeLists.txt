cmake_minimum_required(VERSION 2.8.3)
project(taticoma_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
)

add_message_files(
   FILES
   LegJointsState.msg
   LegsJointsState.msg
   LegIKRequest.msg
   LegPositionState.msg
   BodyState.msg
   BodyCommand.msg
   GaitCommand.msg

   FeedbackJoyCmd.msg
 )

 add_service_files(
   FILES
   GetLegIKSolver.srv
 )

generate_messages( 
   DEPENDENCIES std_msgs
 )

catkin_package(
  CATKIN_DEPENDS message_runtime
 )

include_directories(
  ${catkin_INCLUDE_DIRS}
)


