
#ifndef FEEDBACK_JOY_HPP_
#define FEEDBACK_JOY_HPP_

#include <ros/ros.h>
#include <sensor_msgs/JoyFeedbackArray.h>

#include "taticoma_msgs/FeedbackJoyCmd.h"
//#include <diagnostic_msgs/DiagnosticStatus.h>

class feedbackJoy
{
public:
	feedbackJoy();

private:
	ros::NodeHandle node;

	ros::Subscriber feedback_cmd_sub;
	ros::Subscriber diagnostic_sub;
	ros::Publisher feedback_pub;

	void feedBackJoyParseCmd(const taticoma_msgs::FeedbackJoyCmdConstPtr &cmd);

//	void diagnosticParse(const diagnostic_msgs::DiagnosticStatus::ConstPtr& DiagnosticStatusmsg);

	void modeChangeMsg(uint8_t mode);
	void gaitChangeMsg(uint8_t gait);

	sensor_msgs::JoyFeedbackPtr makeFeedbackLedMsg(sensor_msgs::JoyFeedback::_id_type id, sensor_msgs::JoyFeedback::_intensity_type intensity);
	sensor_msgs::JoyFeedbackPtr makeFeedbackRumbleMsg(sensor_msgs::JoyFeedback::_id_type id, sensor_msgs::JoyFeedback::_intensity_type intensity);
	void sendLedChannels(bool ch0, bool ch1, bool ch2, bool ch3);
	void sendRumbleChannels(sensor_msgs::JoyFeedback::_intensity_type rumble_low_freq, sensor_msgs::JoyFeedback::_intensity_type rumble_high_freq);
};

#endif /* FEEDBACK_JOY_HPP_ */
