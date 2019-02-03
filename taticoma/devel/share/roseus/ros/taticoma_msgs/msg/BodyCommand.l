;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::BodyCommand)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'BodyCommand (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::BODYCOMMAND")
  (make-package "TATICOMA_MSGS::BODYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude BodyCommand.msg.html


(intern "*STAND_UP_CMD*" (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(shadow '*STAND_UP_CMD* (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(defconstant taticoma_msgs::BodyCommand::*STAND_UP_CMD* 1)
(intern "*SEAT_DOWN_CMD*" (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(shadow '*SEAT_DOWN_CMD* (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(defconstant taticoma_msgs::BodyCommand::*SEAT_DOWN_CMD* 2)
(intern "*IMU_START_CMD*" (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(shadow '*IMU_START_CMD* (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(defconstant taticoma_msgs::BodyCommand::*IMU_START_CMD* 3)
(intern "*IMU_STOP_CMD*" (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(shadow '*IMU_STOP_CMD* (find-package "TATICOMA_MSGS::BODYCOMMAND"))
(defconstant taticoma_msgs::BodyCommand::*IMU_STOP_CMD* 4)
(defclass taticoma_msgs::BodyCommand
  :super ros::object
  :slots (_cmd ))

(defmethod taticoma_msgs::BodyCommand
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

(setf (get taticoma_msgs::BodyCommand :md5sum-) "1abfa573ddc640038a45f99b26d93a23")
(setf (get taticoma_msgs::BodyCommand :datatype-) "taticoma_msgs/BodyCommand")
(setf (get taticoma_msgs::BodyCommand :definition-)
      "int32 cmd

int32 STAND_UP_CMD=1
int32 SEAT_DOWN_CMD=2
int32 IMU_START_CMD=3
int32 IMU_STOP_CMD=4


")



(provide :taticoma_msgs/BodyCommand "1abfa573ddc640038a45f99b26d93a23")


