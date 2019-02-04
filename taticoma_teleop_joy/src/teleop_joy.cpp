#include "teleop_joy.hpp"


TeleopJoy::TeleopJoy(){

	node.param("clearance", z, 0.1);

	body_state.leg_radius = 0.1224;
	body_state.z = -z;
	stand_flag = true;
	//offset = true;
	sleep = false;
	//ROS_INFO("SLEEP BOOL false");

	servo_power_flag = false;
	audio_power_flag = false;
	
	joy_sub = node.subscribe<sensor_msgs::Joy>("joy", 1, &TeleopJoy::joyCallback, this);
	move_body_pub = node.advertise<taticoma_msgs::BodyState>("/teleop/move_body",1);
	body_cmd_pub = node.advertise<taticoma_msgs::BodyCommand>("/teleop/body_command",1);
	gait_cmd_pub = node.advertise<taticoma_msgs::GaitCommand>("/teleop/gait_control",1);

	//move_cmd_pub = node.advertise<taticoma_msgs::MoveCommand>("/teleop/move_control",1);
	control_cmd_pub = node.advertise<taticoma_msgs::ControlCommand>("/teleop/control_command",1);

	ROS_INFO("Starting ps3 TELEOP converter..");
	tat_mode = false;
	ROS_INFO("Manual mode");
}

void TeleopJoy::joyCallback(const sensor_msgs::Joy::ConstPtr& joy){

	if (joy->buttons[mode_select_m]){
				ROS_INFO("MANUAL mode");
				tat_mode = false;
				control_command.cmd = control_command.MANUAL_MODE_ON;
				control_cmd_pub.publish(control_command);
				ros::Duration(1).sleep();
				control_command.cmd = control_command.MOVEMENT_MODE_OFF;
				control_cmd_pub.publish(control_command);
				ros::Duration(1).sleep();
		
	}
	if (joy->buttons[mode_select_p]){
				ROS_INFO("MOVEMENT mode");
				tat_mode = true;
				control_command.cmd = control_command.MANUAL_MODE_OFF;
				control_cmd_pub.publish(control_command);
				ros::Duration(1).sleep();
				control_command.cmd = control_command.MOVEMENT_MODE_ON;
				control_cmd_pub.publish(control_command);
				ros::Duration(1).sleep();		
	}
	
	//SQUARE

	if (joy->buttons[button_seatStand_sleepWake]){
		if (tat_mode == true){
			if (!stand_flag){
				stand_flag = true;
				body_command.cmd = body_command.STAND_UP_CMD;
				body_cmd_pub.publish(body_command);
			}
			else{
				stand_flag = false;
				body_command.cmd = body_command.SEAT_DOWN_CMD;
				body_cmd_pub.publish(body_command);
			}
			ros::Duration(1).sleep();
		}
		if (tat_mode == false){
			if (!sleep){
				sleep = true;
				//offset == true;
				ROS_INFO("SLEEP BOOL true");
				//move_command.cmd = move_command.SLEEP_CMD;
			}
			else {
				sleep = false;
				ROS_INFO("SLEEP BOOL false");
				//offset == false;
				//move_command.cmd = move_command.WAKE_CMD;
			}
			//move_cmd_pub.publish(move_command);
			ros::Duration(1).sleep();
		}
	}

	//TRIANGLE - PI POWER - GAIT SWITCH

	if (joy->buttons[button_gaitSwitch_piPower]){
		if (tat_mode == true){		
			if (!gait_flag){
				gait_flag = true;
				gait_command.cmd = gait_command.STOP;
 			}
			else{
				gait_flag = false;
				gait_command.cmd = gait_command.STOP;
  			}
			gait_cmd_pub.publish(gait_command);
  			ROS_INFO("gait com send");
			ros::Duration(0.5).sleep();
		}
		if (tat_mode == false){
			control_command.cmd = control_command.PI_POWER_VAR;
			control_cmd_pub.publish(control_command);
			ROS_INFO("PI POWER COMMAND");
			ros::Duration(1).sleep();
		}
	}

	//CIRCLE - SERVO POWER

	if (joy->buttons[button_servoPower]){	
			if (!servo_power_flag){ 		
				servo_power_flag = true;
				control_command.cmd = control_command.SERVO_PWR_ON;
			}
			else{
				servo_power_flag = false;
				control_command.cmd = control_command.SERVO_PWR_OFF;
			}
			ROS_INFO("RELE COMMAND");
			control_cmd_pub.publish(control_command);
			ros::Duration(1).sleep();
	}

	// CROSS - AUDIO POWER - IMU

	if (joy->buttons[button_audioPower_IMU]){
		if (tat_mode == false){
			if (!audio_power_flag){ 	
				audio_power_flag = true;
				control_command.cmd = control_command.AUDIO_PWR_ON;
				}
			else{
				audio_power_flag = false;
				control_command.cmd = control_command.AUDIO_PWR_OFF;
			}
			ROS_INFO("AUDIO POWER COMMAND");
			control_cmd_pub.publish(control_command);
			ros::Duration(1).sleep();
		}
		if (tat_mode == true){
			if (!imu_flag){
				imu_flag = true;
				body_command.cmd = body_command.IMU_START_CMD;
			}
			else{
				imu_flag = false;
				body_command.cmd = body_command.IMU_STOP_CMD;
			}
			ROS_INFO("IMU COMMAND");
			body_cmd_pub.publish(body_command);				
			ros::Duration(1).sleep();
		}
	}
 
if (tat_mode == true){
	if (stand_flag){
		// RPY Signal
		if (joy->buttons[button_left_shift]){
			body_state.roll = 0.25 * joy->axes[axis_body_roll];
			body_state.pitch = -0.25 * joy->axes[axis_body_pitch];
			body_state.yaw = -0.28 * joy->axes[axis_body_yaw];
			move_body_pub.publish(body_state);
			
			//ROS_INFO("roll  " << body_state.roll << "  pitch  " << body_state.pitch << " yaw  " << body_state.yaw);
			//ROS_INFO (" JOY ROLL PITCH YAW ROLL: %f PITCH: %f YAW: %f", body_state.roll, body_state.pitch, body_state.yaw);
		}
		// Offset Signal
		if (joy->buttons[button_right_shift]){
			
			body_state.y = -0.05 * joy->axes[axis_body_y_off];
			body_state.x = -0.05 * joy->axes[axis_body_x_off];
			if (joy->axes[axis_body_z_off] < 0){
				body_state.z = -0.03 * joy->axes[axis_body_z_off] - z;
			}
			else{
				body_state.z = -0.1 * joy->axes[axis_body_z_off] - z;
			}
			move_body_pub.publish(body_state);
			ROS_INFO_STREAM("x  " << body_state.x << "  y  " << body_state.y << "  z  " << body_state.z);
			//offset = true;
		}
		// Gait Signals
		if (!joy->buttons[button_left_shift] && !joy->buttons[button_right_shift]){
			if (joy->axes[axis_fi_x] != 0 || joy->axes[axis_fi_y] != 0){
				if (!gait_flag){
					gait_command.cmd = gait_command.RUNRIPPLE;
				}
				else{
					gait_command.cmd = gait_command.RUNTRIPOD;
				}
				// Gait Fi and Velocity Signal
				float a, b, xinv;
				a = pow (joy->axes[axis_fi_y], 2);
				b = pow (joy->axes[axis_fi_x], 2);
				xinv = -1 * joy->axes[axis_fi_x];

				gait_command.fi = atan2(joy->axes[axis_fi_y],xinv);
				gait_command.scale = pow (a+b, 0.5) > 1 ? 1 : pow (a+b, 0.5);
				gait_command.alpha = 0;

				//ROS_INFO("axis_fi_x: %f axis_fi_y: %f a = %f b = %f",xinv, joy->axes[axis_fi_y], a, b);
				//ROS_INFO("fi: %f scale: %f",gait_command.fi, gait_command.scale);

			}

			// Gait Alpha and Direction Signal
			if (joy->axes[axis_alpha] != 0 || joy->axes[axis_scale] != 0){
				//ROS_INFO_STREAM("y  " << joy->axes[axis_direction] << "  x  " << joy->axes[axis_alpha]);
				if (!gait_flag){
					gait_command.cmd = gait_command.RUNRIPPLE;
					//ROS_ERROR("ripple2");
				}
				else{
					gait_command.cmd = gait_command.RUNTRIPOD;
					//ROS_ERROR("tripod2");
				}
				gait_command.fi = (joy->axes[axis_scale] > 0) ? 3.14/2 :  -3.14/2; 
				gait_command.scale = joy->axes[axis_scale];
				if (gait_command.scale < 0) gait_command.scale *=-1;
				gait_command.alpha = ((joy->axes[axis_alpha] > 0) ? -1 : 1) * 0.065 * (1-gait_command.scale) + 0.19 *joy->axes[axis_alpha]; 

				//ROS_INFO("axis_scale: %f axis_alpha: %f",joy->axes[axis_scale], joy->axes[axis_alpha]); 
				//ROS_INFO("fi: %f scale: %f alpha: %f",gait_command.fi, gait_command.scale, gait_command.alpha); 
			}

			if (!joy->axes[axis_alpha] && !joy->axes[axis_scale] && !joy->axes[axis_fi_x] && !joy->axes[axis_fi_y]){
				gait_command.cmd = gait_command.PAUSE;
 				//ROS_ERROR("gate pause");
			}
			gait_cmd_pub.publish(gait_command);
			//offset = false;
		}
	}
}			
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "teleop_joy");
	ROS_INFO("Starting ps3 teleop converter, take care of your controller now...");
	TeleopJoy teleop_joy;
	ros::spin();
	//return 0;
}
