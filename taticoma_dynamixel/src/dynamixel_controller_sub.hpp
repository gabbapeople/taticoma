
#ifndef DYNAMIXEL_CONTROLLER_SUB_HPP_
#define DYNAMIXEL_CONTROLLER_SUB_HPP_

#include <ros/ros.h>
#include "taticoma_msgs/LegsJointsState.h"
#include "dynamixel_workbench_msgs/DynamixelCommand.h"

class Controller
{
  public:
	Controller();

  private:
	ros::NodeHandle node;

	ros::Subscriber dynamixel_pos_sub;
	ros::ServiceClient dynamixel_pos_client;

	//taticoma_msgs::LegsJointsState legs;

	double dynamixel_joint_lower_limit;
	double dynamixel_joint_upper_limit;
	double limit_coef;
	const static unsigned int num_joints = 3;
	const static unsigned int num_legs = 6;

	void chatterLegsState(const taticoma_msgs::LegsJointsStateConstPtr &legs_jnts);
};

#endif /* DYNAMIXEL_CONTROLLER_SUB_HPP_ */
