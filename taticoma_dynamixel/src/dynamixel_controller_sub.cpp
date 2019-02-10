#include "dynamixel_controller_sub.hpp"

const int rotation_direction_leg_r1[3] = {1, 1, 1};
const int rotation_direction_leg_r2[3] = {1, 1, 1};
const int rotation_direction_leg_r3[3] = {1, 1, 1};
const int rotation_direction_leg_l1[3] = {1, 1, 1};
const int rotation_direction_leg_l2[3] = {1, 1, 1};
const int rotation_direction_leg_l3[3] = {1, 1, 1};

Controller::Controller()
{
	node.param("dynamixel_joint_lower_limit", dynamixel_joint_lower_limit, -1.657);
	node.param("dynamixel_joint_upper_limit", dynamixel_joint_upper_limit, 1.657);
	limit_coef = 328 / ((dynamixel_joint_upper_limit - dynamixel_joint_lower_limit) / 2);

	dynamixel_pos_sub = node.subscribe("/my/joints_to_controller", 1, &Controller::chatterLegsState, this);
	dynamixel_pos_client = node.serviceClient<dynamixel_workbench_msgs::DynamixelCommand>("dynamixel_controller_client");

	ROS_INFO("Node Ready: Taticoma Dynamixel Controller");
}

void Controller::chatterLegsState(const taticoma_msgs::LegsJointsStateConstPtr &legs_jnts)
{
	dynamixel_workbench_msgs::DynamixelCommand srv;

	std::string addr_name = "Goal_Position";
	std::string command = "";

	uint8_t dynamixel_number;
	int32_t target_value;

	for (int i = 0; i < num_legs; i++)
	{
		for (int j = 0; j < num_joints; j++)
		{
			dynamixel_number = i * 3 + j;
			target_value = 512 + legs_jnts->joints_state[i].joint[j] * limit_coef;

			srv.request.command = command;
			srv.request.id = dynamixel_number;
			srv.request.addr_name = addr_name;
			srv.request.value = target_value;

			if (dynamixel_pos_client.call(srv))
			{
				ROS_INFO("Node msg (Taticoma Dynamixel Controller): %i", (int)srv.response.comm_result);
			}
			else
			{
				ROS_ERROR("Node error (Taticoma Dynamixel Controller): Failed to call service");
			}
		}
	}
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "dynamixel_controller_sub");
	Controller controller;
	ros::spin();
}
