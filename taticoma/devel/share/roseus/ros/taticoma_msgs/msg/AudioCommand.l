;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::AudioCommand)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'AudioCommand (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::AUDIOCOMMAND")
  (make-package "TATICOMA_MSGS::AUDIOCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude AudioCommand.msg.html


(intern "*ROS_ONLINE*" (find-package "TATICOMA_MSGS::AUDIOCOMMAND"))
(shadow '*ROS_ONLINE* (find-package "TATICOMA_MSGS::AUDIOCOMMAND"))
(defconstant taticoma_msgs::AudioCommand::*ROS_ONLINE* 1)
(intern "*PI_POWER*" (find-package "TATICOMA_MSGS::AUDIOCOMMAND"))
(shadow '*PI_POWER* (find-package "TATICOMA_MSGS::AUDIOCOMMAND"))
(defconstant taticoma_msgs::AudioCommand::*PI_POWER* 2)
(defclass taticoma_msgs::AudioCommand
  :super ros::object
  :slots (_cmd ))

(defmethod taticoma_msgs::AudioCommand
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

(setf (get taticoma_msgs::AudioCommand :md5sum-) "5af3192bceb69dafff53b272be1d1636")
(setf (get taticoma_msgs::AudioCommand :datatype-) "taticoma_msgs/AudioCommand")
(setf (get taticoma_msgs::AudioCommand :definition-)
      "int32 cmd

int32 ROS_ONLINE=1
int32 PI_POWER=2


")



(provide :taticoma_msgs/AudioCommand "5af3192bceb69dafff53b272be1d1636")


