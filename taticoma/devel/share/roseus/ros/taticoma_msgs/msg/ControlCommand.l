;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::ControlCommand)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'ControlCommand (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::CONTROLCOMMAND")
  (make-package "TATICOMA_MSGS::CONTROLCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude ControlCommand.msg.html


(intern "*SERVO_PWR_ON*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*SERVO_PWR_ON* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*SERVO_PWR_ON* 1)
(intern "*SERVO_PWR_OFF*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*SERVO_PWR_OFF* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*SERVO_PWR_OFF* 2)
(intern "*PI_POWER_VAR*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*PI_POWER_VAR* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*PI_POWER_VAR* 3)
(intern "*AUDIO_PWR_ON*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*AUDIO_PWR_ON* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*AUDIO_PWR_ON* 4)
(intern "*AUDIO_PWR_OFF*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*AUDIO_PWR_OFF* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*AUDIO_PWR_OFF* 5)
(intern "*MOVEMENT_MODE_ON*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*MOVEMENT_MODE_ON* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*MOVEMENT_MODE_ON* 6)
(intern "*MOVEMENT_MODE_OFF*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*MOVEMENT_MODE_OFF* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*MOVEMENT_MODE_OFF* 7)
(intern "*MANUAL_MODE_ON*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*MANUAL_MODE_ON* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*MANUAL_MODE_ON* 8)
(intern "*MANUAL_MODE_OFF*" (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(shadow '*MANUAL_MODE_OFF* (find-package "TATICOMA_MSGS::CONTROLCOMMAND"))
(defconstant taticoma_msgs::ControlCommand::*MANUAL_MODE_OFF* 9)
(defclass taticoma_msgs::ControlCommand
  :super ros::object
  :slots (_cmd ))

(defmethod taticoma_msgs::ControlCommand
  (:init
   (&key
    ((:cmd __cmd) 0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get taticoma_msgs::ControlCommand :md5sum-) "367a72f93ebfa3ea6e8196068a88b13e")
(setf (get taticoma_msgs::ControlCommand :datatype-) "taticoma_msgs/ControlCommand")
(setf (get taticoma_msgs::ControlCommand :definition-)
      "int32 cmd

int32 SERVO_PWR_ON=1
int32 SERVO_PWR_OFF=2
int32 PI_POWER_VAR=3
int32 AUDIO_PWR_ON=4
int32 AUDIO_PWR_OFF=5
int32 MOVEMENT_MODE_ON=6
int32 MOVEMENT_MODE_OFF=7
int32 MANUAL_MODE_ON=8
int32 MANUAL_MODE_OFF=9




")



(provide :taticoma_msgs/ControlCommand "367a72f93ebfa3ea6e8196068a88b13e")


