
#ifndef TELEOP_JOY_HPP_
#define TELEOP_JOY_HPP_

#include <ros/ros.h>
#include <sensor_msgs/Joy.h>

#include "taticoma_msgs/BodyState.h"
#include "taticoma_msgs/BodyCommand.h"
#include "taticoma_msgs/GaitCommand.h"

#include "taticoma_msgs/FeedbackJoyCmd.h"

// note on plain values:
// buttons are either 0 or 1
// button axes go from 0 to -1
// stick axes go from 0 to +/-1

#define PS3_BUTTON_SELECT 0
#define PS3_BUTTON_STICK_LEFT 1
#define PS3_BUTTON_STICK_RIGHT 2
#define PS3_BUTTON_START 3
#define PS3_BUTTON_CROSS_UP 4
#define PS3_BUTTON_CROSS_RIGHT 5
#define PS3_BUTTON_CROSS_DOWN 6
#define PS3_BUTTON_CROSS_LEFT 7
#define PS3_BUTTON_REAR_LEFT_2 8
#define PS3_BUTTON_REAR_RIGHT_2 9
#define PS3_BUTTON_REAR_LEFT_1 10
#define PS3_BUTTON_REAR_RIGHT_1 11
#define PS3_BUTTON_ACTION_TRIANGLE 12
#define PS3_BUTTON_ACTION_CIRCLE 13
#define PS3_BUTTON_ACTION_CROSS 14
#define PS3_BUTTON_ACTION_SQUARE 15
#define PS3_BUTTON_PAIRING 16

#define PS3_AXIS_STICK_LEFT_LEFTWARDS 0
#define PS3_AXIS_STICK_LEFT_UPWARDS 1
#define PS3_AXIS_STICK_RIGHT_LEFTWARDS 2
#define PS3_AXIS_STICK_RIGHT_UPWARDS 3
#define PS3_AXIS_BUTTON_CROSS_UP 4
#define PS3_AXIS_BUTTON_CROSS_RIGHT 5
#define PS3_AXIS_BUTTON_CROSS_DOWN 6
#define PS3_AXIS_BUTTON_CROSS_LEFT 7
#define PS3_AXIS_BUTTON_REAR_LEFT_2 8
#define PS3_AXIS_BUTTON_REAR_RIGHT_2 9
#define PS3_AXIS_BUTTON_REAR_LEFT_1 10
#define PS3_AXIS_BUTTON_REAR_RIGHT_1 11
#define PS3_AXIS_BUTTON_ACTION_TRIANGLE 12
#define PS3_AXIS_BUTTON_ACTION_CIRCLE 13
#define PS3_AXIS_BUTTON_ACTION_CROSS 14
#define PS3_AXIS_BUTTON_ACTION_SQUARE 15
#define PS3_AXIS_ACCELEROMETER_LEFT 16
#define PS3_AXIS_ACCELEROMETER_FORWARD 17
#define PS3_AXIS_ACCELEROMETER_UP 18
#define PS3_AXIS_GYRO_YAW 19

class TeleopJoy
{
  public:
	TeleopJoy();

  private:
	ros::NodeHandle node;

	taticoma_msgs::BodyState body_state;
	taticoma_msgs::BodyCommand body_command;
	taticoma_msgs::GaitCommand gait_command;

	ros::Subscriber joy_sub;

	ros::Publisher move_body_pub;
	ros::Publisher body_cmd_pub;
	ros::Publisher gait_cmd_pub;
	ros::Publisher feedback_cmd_pub;

	double z;

	bool gait_flag;

	uint8_t mode_num;
	const static uint8_t max_mode_num = 4;

	void makeFeedbackCmd(uint8_t cmd, uint8_t val);

	void joyCallback(const sensor_msgs::Joy::ConstPtr &joy);

	const static int mode_select_forward = PS3_AXIS_BUTTON_CROSS_UP;
	const static int mode_select_backward = PS3_AXIS_BUTTON_CROSS_DOWN;

	const static int axis_body_roll = PS3_AXIS_STICK_LEFT_LEFTWARDS;
	const static int axis_body_pitch = PS3_AXIS_STICK_LEFT_UPWARDS;
	const static int axis_body_yaw = PS3_AXIS_STICK_RIGHT_LEFTWARDS;
	const static int axis_body_y_off = PS3_AXIS_STICK_LEFT_LEFTWARDS;
	const static int axis_body_x_off = PS3_AXIS_STICK_LEFT_UPWARDS;
	const static int axis_body_z_off = PS3_AXIS_STICK_RIGHT_UPWARDS;

	const static int button_left_shift = PS3_BUTTON_REAR_LEFT_1;
	const static int button_right_shift = PS3_BUTTON_REAR_RIGHT_1;
	const static int button_right_shift_2 = PS3_BUTTON_REAR_LEFT_2;

	const static int axis_fi_y = PS3_AXIS_STICK_LEFT_UPWARDS;
	const static int axis_fi_x = PS3_AXIS_STICK_LEFT_LEFTWARDS;

	const static int axis_alpha = PS3_AXIS_STICK_RIGHT_LEFTWARDS;
	const static int axis_scale = PS3_AXIS_STICK_RIGHT_UPWARDS;

	const static int button_circle = PS3_BUTTON_ACTION_CIRCLE;
	const static int button_triangle = PS3_BUTTON_ACTION_TRIANGLE;
	const static int button_cross = PS3_BUTTON_ACTION_CROSS;
	const static int button_square = PS3_BUTTON_ACTION_SQUARE;
};

#endif /* TELEOP_JOY_HPP_ */
