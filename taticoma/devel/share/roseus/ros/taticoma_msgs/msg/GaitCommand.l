;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::GaitCommand)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'GaitCommand (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::GAITCOMMAND")
  (make-package "TATICOMA_MSGS::GAITCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude GaitCommand.msg.html


(intern "*RUNRIPPLE*" (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(shadow '*RUNRIPPLE* (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(defconstant taticoma_msgs::GaitCommand::*RUNRIPPLE* 1)
(intern "*RUNTRIPOD*" (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(shadow '*RUNTRIPOD* (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(defconstant taticoma_msgs::GaitCommand::*RUNTRIPOD* 2)
(intern "*STOP*" (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(shadow '*STOP* (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(defconstant taticoma_msgs::GaitCommand::*STOP* 3)
(intern "*PAUSE*" (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(shadow '*PAUSE* (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(defconstant taticoma_msgs::GaitCommand::*PAUSE* 4)
(intern "*SLEEP*" (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(shadow '*SLEEP* (find-package "TATICOMA_MSGS::GAITCOMMAND"))
(defconstant taticoma_msgs::GaitCommand::*SLEEP* 5)
(defclass taticoma_msgs::GaitCommand
  :super ros::object
  :slots (_cmd _fi _velocity _alpha _scale ))

(defmethod taticoma_msgs::GaitCommand
  (:init
   (&key
    ((:cmd __cmd) 0)
    ((:fi __fi) 0.0)
    ((:velocity __velocity) 0.0)
    ((:alpha __alpha) 0.0)
    ((:scale __scale) 0.0)
    )
   (send-super :init)
   (setq _cmd (round __cmd))
   (setq _fi (float __fi))
   (setq _velocity (float __velocity))
   (setq _alpha (float __alpha))
   (setq _scale (float __scale))
   self)
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:fi
   (&optional __fi)
   (if __fi (setq _fi __fi)) _fi)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:alpha
   (&optional __alpha)
   (if __alpha (setq _alpha __alpha)) _alpha)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:serialization-length
   ()
   (+
    ;; int32 _cmd
    4
    ;; float64 _fi
    8
    ;; float64 _velocity
    8
    ;; float64 _alpha
    8
    ;; float64 _scale
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _cmd
       (write-long _cmd s)
     ;; float64 _fi
       (sys::poke _fi (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _alpha
       (sys::poke _alpha (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _cmd
     (setq _cmd (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _fi
     (setq _fi (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _alpha
     (setq _alpha (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get taticoma_msgs::GaitCommand :md5sum-) "999052af9472adb07699063f39a5a04e")
(setf (get taticoma_msgs::GaitCommand :datatype-) "taticoma_msgs/GaitCommand")
(setf (get taticoma_msgs::GaitCommand :definition-)
      "int32 cmd
float64 fi
float64 velocity
float64 alpha
float64 scale

int32 RUNRIPPLE=1
int32 RUNTRIPOD=2
int32 STOP=3
int32 PAUSE=4
int32 SLEEP=5

")



(provide :taticoma_msgs/GaitCommand "999052af9472adb07699063f39a5a04e")


