;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::MoveCommand)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'MoveCommand (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::MOVECOMMAND")
  (make-package "TATICOMA_MSGS::MOVECOMMAND"))

(in-package "ROS")
;;//! \htmlinclude MoveCommand.msg.html


(intern "*STOP_CMD*" (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(shadow '*STOP_CMD* (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(defconstant taticoma_msgs::MoveCommand::*STOP_CMD* 1)
(intern "*PAUSE_CMD*" (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(shadow '*PAUSE_CMD* (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(defconstant taticoma_msgs::MoveCommand::*PAUSE_CMD* 2)
(intern "*SLEEP_CMD*" (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(shadow '*SLEEP_CMD* (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(defconstant taticoma_msgs::MoveCommand::*SLEEP_CMD* 3)
(intern "*WAKE_CMD*" (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(shadow '*WAKE_CMD* (find-package "TATICOMA_MSGS::MOVECOMMAND"))
(defconstant taticoma_msgs::MoveCommand::*WAKE_CMD* 4)
(defclass taticoma_msgs::MoveCommand
  :super ros::object
  :slots (_cmd ))

(defmethod taticoma_msgs::MoveCommand
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

(setf (get taticoma_msgs::MoveCommand :md5sum-) "3f78f07168f5d781f8449481447d6912")
(setf (get taticoma_msgs::MoveCommand :datatype-) "taticoma_msgs/MoveCommand")
(setf (get taticoma_msgs::MoveCommand :definition-)
      "int32 cmd

int32 STOP_CMD=1
int32 PAUSE_CMD=2
int32 SLEEP_CMD=3
int32 WAKE_CMD=4

")



(provide :taticoma_msgs/MoveCommand "3f78f07168f5d781f8449481447d6912")


