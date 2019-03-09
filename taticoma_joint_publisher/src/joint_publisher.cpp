#include "ros/ros.h"
#include "taticoma_msgs/LegsJointsState.h"
#include <sensor_msgs/JointState.h>

typedef boost::shared_ptr<taticoma_msgs::LegsJointsState const> LegsStateConstPtr;
void chatterLegsState(const LegsStateConstPtr &state);

const std::string suffixes[6] = {"_r1", "_r2", "_r3", "_l1", "_l2", "_l3"};
const std::string names[3] = {"coha_joint", "femur_joint", "tibia_joint"};
ros::Publisher joint_msg_pub;

sensor_msgs::JointState joint_state;
sensor_msgs::JointState aaa;
taticoma_msgs::LegsJointsState legs;

void chatterLegsState(const LegsStateConstPtr &state)
{
	ros::Rate loop_rate(30);

	for (int i = 0; i < 6; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			aaa.position.push_back(state->joints_state[i].joint[j]);
			legs.joints_state[i].joint[j] = state->joints_state[i].joint[j];
		}
	}

	aaa.header.stamp = ros::Time::now();
	aaa.header.frame_id = 1;

	aaa.name.resize(18);
	aaa.position.resize(18);

	aaa.name[0] = "coha_joint_r1";
	aaa.name[1] = "femur_joint_r1";
	aaa.name[2] = "tibia_joint_r1";

	aaa.name[3] = "coha_joint_r2";
	aaa.name[4] = "femur_joint_r2";
	aaa.name[5] = "tibia_joint_r2";

	aaa.name[6] = "coha_joint_r3";
	aaa.name[7] = "femur_joint_r3";
	aaa.name[8] = "tibia_joint_r3";

	aaa.name[9] = "coha_joint_l1";
	aaa.name[10] = "femur_joint_l1";
	aaa.name[11] = "tibia_joint_l1";

	aaa.name[12] = "coha_joint_l2";
	aaa.name[13] = "femur_joint_l2";
	aaa.name[14] = "tibia_joint_l2";

	aaa.name[15] = "coha_joint_l3";
	aaa.name[16] = "femur_joint_l3";
	aaa.name[17] = "tibia_joint_l3";

	for (int i = 0; i < 6; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			joint_state.position.push_back(legs.joints_state[i].joint[j]);
		}
	}

	joint_msg_pub.publish(aaa);

	aaa.name.clear();
	aaa.position.clear();

	return;
}
int main(int argc, char **argv)
{
	ros::init(argc, argv, "taticoma_joint_publisher");
	ros::NodeHandle node;
	joint_msg_pub = node.advertise<sensor_msgs::JointState>("taticoma_joint_publisher", 1);
	ros::Subscriber sub = node.subscribe("/my/joints_to_controller", 1, chatterLegsState);
	ros::spin();
	return 0;
}
