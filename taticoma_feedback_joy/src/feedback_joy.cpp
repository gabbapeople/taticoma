#include "feedback_joy.hpp"

//typedef boost::shared_ptr<diagnostic_msgs::DiagnosticArray::status const> diagnostic_msgConstPtr;

feedbackJoy::feedbackJoy()
{
	feedback_cmd_sub = node.subscribe<taticoma_msgs::FeedbackJoyCmd>("/teleop/feedback_joy_cmd", 1, &feedbackJoy::feedBackJoyParseCmd, this);
	//diagnostic_sub = node.subscribe<diagnostic_msgs::DiagnosticStatus>("/diagnostics", 1, &feedbackJoy::diagnosticParse, this);
	feedback_pub = node.advertise<sensor_msgs::JoyFeedbackArray>("/joy/set_feedback", 1);
	ROS_WARN("Node Ready: feedback_joy");
}

// //void feedbackJoy::diagnosticParse(const diagnostic_msgs::DiagnosticArray::status::ConstPtr &diagnostic_msg)

// void feedbackJoy::diagnosticParse(const diagnostic_msgs::DiagnosticStatus::ConstPtr &diagnosticStatusMsg)
// {
// 	std::string name = diagnosticStatusMsg->name;
// 	// if (name == "Battery")
// 	// {
// 		//std::string message = diagnostic_msg->message;
// 		ROS_INFO_STREAM(name);
// 	//}
// }

void feedbackJoy::feedBackJoyParseCmd(const taticoma_msgs::FeedbackJoyCmdConstPtr &cmdMsg)
{
	uint8_t cmd = cmdMsg->cmd;
	uint8_t val = cmdMsg->val;
	switch (cmd)
	{
	case 1:
		modeChangeMsg(val);
		break;
	case 2:
		gaitChangeMsg(val);
		break;
	}
}

void feedbackJoy::modeChangeMsg(uint8_t mode)
{
	ros::WallDuration duration;
	float timeToCall = 0.1;
	switch (mode)
	{
	case 0:
		ROS_INFO("Node msg (feedback_joy): Msg send -> mode switch to Standstill");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 1, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	case 1:
		ROS_INFO("Node msg (feedback_joy): Msg send -> mode switch to Movement");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	case 2:
		ROS_INFO("Node msg (feedback_joy): Msg send -> mode switch to 3");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 0, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	case 3:
		ROS_INFO("Node msg (feedback_joy): Msg send -> mode switch to 4");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 0, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	}
}

void feedbackJoy::gaitChangeMsg(uint8_t gait)
{
	ros::WallDuration duration;
	float timeToCall = 0.1;
	switch (gait)
	{
	case 0:
		ROS_INFO("Node msg (feedback_joy): Msg send -> gait switch to Standstill");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 1, 1);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	case 1:
		ROS_INFO("Node msg (feedback_joy): Msg send -> gait switch to Movement");
		sendLedChannels(1, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(1, 1, 0, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 1, 1, 0);
		ros::Duration(timeToCall).sleep();
		sendLedChannels(0, 0, 0, 1);
		ros::Duration(timeToCall).sleep();
		break;
	}
}

void feedbackJoy::sendRumbleChannels(sensor_msgs::JoyFeedback::_intensity_type rumble_low_freq, sensor_msgs::JoyFeedback::_intensity_type rumble_high_freq)
{
	sensor_msgs::JoyFeedbackArray feedback_array;
	feedback_array.array.push_back(*makeFeedbackRumbleMsg(0, rumble_low_freq));
	feedback_array.array.push_back(*makeFeedbackRumbleMsg(1, rumble_high_freq));
	feedback_pub.publish(feedback_array);
}

void feedbackJoy::sendLedChannels(bool ch0, bool ch1, bool ch2, bool ch3)
{
	sensor_msgs::JoyFeedbackArray feedback_array;
	feedback_array.array.push_back(*makeFeedbackLedMsg(0, ch0));
	feedback_array.array.push_back(*makeFeedbackLedMsg(1, ch1));
	feedback_array.array.push_back(*makeFeedbackLedMsg(2, ch2));
	feedback_array.array.push_back(*makeFeedbackLedMsg(3, ch3));
	feedback_pub.publish(feedback_array);
}

sensor_msgs::JoyFeedbackPtr feedbackJoy::makeFeedbackLedMsg(sensor_msgs::JoyFeedback::_id_type id, sensor_msgs::JoyFeedback::_intensity_type intensity)
{
	sensor_msgs::JoyFeedbackPtr feedback(new sensor_msgs::JoyFeedback());
	feedback->type = sensor_msgs::JoyFeedback::TYPE_LED;
	feedback->id = id;
	feedback->intensity = intensity;
	return feedback;
}

sensor_msgs::JoyFeedbackPtr feedbackJoy::makeFeedbackRumbleMsg(sensor_msgs::JoyFeedback::_id_type id, sensor_msgs::JoyFeedback::_intensity_type intensity)
{
	sensor_msgs::JoyFeedbackPtr feedback(new sensor_msgs::JoyFeedback());
	feedback->type = sensor_msgs::JoyFeedback::TYPE_RUMBLE;
	feedback->id = id;
	feedback->intensity = intensity;
	return feedback;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "feedback_joy");
	feedbackJoy feedback_joy;
	ros::spin();
	//return 0;
}
