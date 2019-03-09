
#ifndef DYNAMIXEL_CONTROLLER_SUB_HPP_
#define DYNAMIXEL_CONTROLLER_SUB_HPP_

#include <termios.h>
#include <ros/ros.h>
#include <vector>
#include "taticoma_msgs/LegsJointsState.h"
#include "std_msgs/Float64.h"

class Controller
{
  public:
		Controller();
		~Controller();

		const static unsigned int num_joints = 3;
		const static unsigned int num_legs = 6;
  private:
		ros::NodeHandle node;
		ros::Subscriber dynamixel_pos_sub;
 		std::vector<ros::Publisher> dynamixel_pos_pub;

		std_msgs::Float64 pos_msg;

		void chatterLegsState(const taticoma_msgs::LegsJointsStateConstPtr &legs_jnts);
};

#endif /* DYNAMIXEL_CONTROLLER_SUB_HPP_ */
