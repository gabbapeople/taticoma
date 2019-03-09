#include "dynamixel_controller_sub.hpp"

const int rotation_direction_leg[18] = {-1, 1, -1,
										-1, 1, -1,
										-1, 1, -1,
										-1, 1, -1,
										-1, 1, -1,
										-1, 1, -1};

double target_pos[18];

Controller::Controller()
{
	dynamixel_pos_sub = node.subscribe("/my/joints_to_controller", 1, &Controller::chatterLegsState, this);

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_r1_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_r1_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_r1_controller/command", 1));

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_r2_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_r2_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_r2_controller/command", 1));

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_r3_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_r3_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_r3_controller/command", 1));

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_l1_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_l1_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_l1_controller/command", 1));

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_l2_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_l2_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_l2_controller/command", 1));

	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/coha_l3_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/femur_l3_controller/command", 1));
	dynamixel_pos_pub.push_back(node.advertise<std_msgs::Float64>("/tibia_l3_controller/command", 1));

	ROS_INFO("Node Ready: Taticoma Dynamixel Controller");
}

Controller::~Controller() {}

void Controller::chatterLegsState(const taticoma_msgs::LegsJointsStateConstPtr &legs_jnts)
{
	uint8_t dynamixel_number;

	for (int i = 0; i < num_legs; i++)
	{
		for (int j = 0; j < num_joints; j++)
		{
			dynamixel_number = i * 3 + j;
			target_pos[dynamixel_number] = legs_jnts->joints_state[i].joint[j] * rotation_direction_leg[dynamixel_number];
		}
	}

	for (int i = 0; i < (num_legs * num_joints); i++)
	{
		pos_msg.data = target_pos[i];
		dynamixel_pos_pub[i].publish(pos_msg);
	}
}

int main(int argc, char **argv)
{
	// Init ROS node
	ros::init(argc, argv, "dynamixel_controller_sub");
	Controller Controller;
	ros::spin();
	return 0;
}