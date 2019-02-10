
#ifndef BODY_KINEMATICS_HPP_
#define BODY_KINEMATICS_HPP_

#include <ros/ros.h>
#include <kdl_parser/kdl_parser.hpp>
#include "taticoma_msgs/GetLegIKSolver.h"
#include "taticoma_msgs/LegsJointsState.h"
#include "taticoma_msgs/BodyState.h"
#include "taticoma_msgs/BodyCommand.h"

#define NUM_LEGS 6
#define NUM_JOINTS 3

class tat_joint_publisher
{
  public:
	void chatterLegsState(const LegsStateConstPtr &state);
	bool init();
};

#endif /* BODY_KINEMATICS_HPP_ */
