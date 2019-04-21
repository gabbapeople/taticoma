#include "teleop_joy.hpp"

TeleopJoy::TeleopJoy()
{
	node.param("clearance", z, 0.1);
	body_state.leg_radius = 0.1224;
	body_state.z = -z;
	joy_sub = node.subscribe<sensor_msgs::Joy>("joy", 1, &TeleopJoy::joyCallback, this);
	body_cmd_pub = node.advertise<taticoma_msgs::BodyCommand>("/teleop/body_command", 1);
	gait_cmd_pub = node.advertise<taticoma_msgs::GaitCommand>("/teleop/gait_control", 1);
	move_body_pub = node.advertise<taticoma_msgs::BodyState>("/teleop/move_body", 1);

	feedback_cmd_pub = node.advertise<taticoma_msgs::FeedbackJoyCmd>("/teleop/feedback_joy_cmd", 1);

	// default settings

	//default mode
	mode_num = 0;

	//default gait
	gait_flag = false;

	ROS_WARN("Node Ready: teleop_joy");
}

void TeleopJoy::makeFeedbackCmd(uint8_t cmd, uint8_t val)
{
	taticoma_msgs::FeedbackJoyCmd feedback_joy_cmd;
	feedback_joy_cmd.cmd = cmd;
	feedback_joy_cmd.val = val;
	feedback_cmd_pub.publish(feedback_joy_cmd);
}

void TeleopJoy::joyCallback(const sensor_msgs::Joy::ConstPtr &joy)
{
	if (joy->buttons[mode_select_forward])
	{
		if (mode_num < max_mode_num)
		{
			mode_num = mode_num + 1;
			makeFeedbackCmd(1, mode_num);
			ROS_INFO("Node msg (teleop_joy): Mode switch");
			ros::Duration(0.25).sleep();
		}
	}

	if (joy->buttons[mode_select_backward])
	{
		if (mode_num > 0)
		{
			mode_num = mode_num - 1;
			makeFeedbackCmd(1, mode_num);
			ROS_INFO("Node msg (teleop_joy): Mode switch");
			ros::Duration(0.25).sleep();
		}
	}

	switch (mode_num)
	{
	case 1:

		if (joy->buttons[button_triangle])
		{
			if (!gait_flag)
			{
				gait_flag = true;
				gait_command.cmd = gait_command.STOP;
				makeFeedbackCmd(2, 1);
				ROS_INFO("Node msg (teleop_joy): Gait switch");
				ros::Duration(0.25).sleep();
			}
			else
			{
				gait_flag = false;
				gait_command.cmd = gait_command.STOP;
				makeFeedbackCmd(2, 0);
				ROS_INFO("Node msg (teleop_joy): Gait switch");
				ros::Duration(0.25).sleep();
			}
			gait_cmd_pub.publish(gait_command);
		}

		// RPY Signal
		if (joy->buttons[button_left_shift])
		{
			body_state.roll = 0.25 * joy->axes[axis_body_roll];
			body_state.pitch = -0.25 * joy->axes[axis_body_pitch];
			body_state.yaw = -0.28 * joy->axes[axis_body_yaw];
			move_body_pub.publish(body_state);
		}
		// Offset Signal
		if (joy->buttons[button_right_shift])
		{
			body_state.y = -0.05 * joy->axes[axis_body_y_off];
			body_state.x = -0.05 * joy->axes[axis_body_x_off];
			if (joy->axes[axis_body_z_off] < 0)
			{
				body_state.z = -0.03 * joy->axes[axis_body_z_off] - z;
			}
			else
			{
				body_state.z = -0.1 * joy->axes[axis_body_z_off] - z;
			}
			move_body_pub.publish(body_state);
			ROS_INFO_STREAM("x  " << body_state.x << "  y  " << body_state.y << "  z  " << body_state.z);
		}
		// Gait Signals
		if (!joy->buttons[button_left_shift] && !joy->buttons[button_right_shift])
		{
			if (joy->axes[axis_fi_x] != 0 || joy->axes[axis_fi_y] != 0)
			{
				if (!gait_flag)
				{
					gait_command.cmd = gait_command.RUNRIPPLE;
				}
				else
				{
					gait_command.cmd = gait_command.RUNTRIPOD;
				}
				// Gait Fi and Velocity Signal
				float a, b, xinv;
				a = pow(joy->axes[axis_fi_y], 2);
				b = pow(joy->axes[axis_fi_x], 2);
				xinv = -1 * joy->axes[axis_fi_x];

				gait_command.fi = atan2(joy->axes[axis_fi_y], xinv);
				gait_command.scale = pow(a + b, 0.5) > 1 ? 1 : pow(a + b, 0.5);
				gait_command.alpha = 0;
			}

			// Gait Alpha and Direction Signal
			if (joy->axes[axis_alpha] != 0 || joy->axes[axis_scale] != 0)
			{
				if (!gait_flag)
				{
					gait_command.cmd = gait_command.RUNRIPPLE;
				}
				else
				{
					gait_command.cmd = gait_command.RUNTRIPOD;
				}
				gait_command.fi = (joy->axes[axis_scale] > 0) ? 3.14 / 2 : -3.14 / 2;
				gait_command.scale = joy->axes[axis_scale];
				if (gait_command.scale < 0)
					gait_command.scale *= -1;
				gait_command.alpha = ((joy->axes[axis_alpha] > 0) ? -1 : 1) * 0.065 * (1 - gait_command.scale) + 0.19 * joy->axes[axis_alpha];
			}

			if (!joy->axes[axis_alpha] && !joy->axes[axis_scale] && !joy->axes[axis_fi_x] && !joy->axes[axis_fi_y])
			{
				gait_command.cmd = gait_command.PAUSE;
			}
			gait_cmd_pub.publish(gait_command);
		}
		break;
	}
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "teleop_joy");
	TeleopJoy teleop_joy;
	ros::spin();
	//return 0;
}
