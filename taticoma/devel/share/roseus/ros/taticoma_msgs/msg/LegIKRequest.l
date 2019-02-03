;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::LegIKRequest)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'LegIKRequest (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::LEGIKREQUEST")
  (make-package "TATICOMA_MSGS::LEGIKREQUEST"))

(in-package "ROS")
;;//! \htmlinclude LegIKRequest.msg.html


(defclass taticoma_msgs::LegIKRequest
  :super ros::object
  :slots (_leg_number _current_joints _target_position ))

(defmethod taticoma_msgs::LegIKRequest
  (:init
   (&key
    ((:leg_number __leg_number) 0)
    ((:current_joints __current_joints) (instance taticoma_msgs::LegJointsState :init))
    ((:target_position __target_position) (instance taticoma_msgs::LegPositionState :init))
    )
   (send-super :init)
   (setq _leg_number (round __leg_number))
   (setq _current_joints __current_joints)
   (setq _target_position __target_position)
   self)
  (:leg_number
   (&optional __leg_number)
   (if __leg_number (setq _leg_number __leg_number)) _leg_number)
  (:current_joints
   (&rest __current_joints)
   (if (keywordp (car __current_joints))
       (send* _current_joints __current_joints)
     (progn
       (if __current_joints (setq _current_joints (car __current_joints)))
       _current_joints)))
  (:target_position
   (&rest __target_position)
   (if (keywordp (car __target_position))
       (send* _target_position __target_position)
     (progn
       (if __target_position (setq _target_position (car __target_position)))
       _target_position)))
  (:serialization-length
   ()
   (+
    ;; int32 _leg_number
    4
    ;; taticoma_msgs/LegJointsState _current_joints
    (send _current_joints :serialization-length)
    ;; taticoma_msgs/LegPositionState _target_position
    (send _target_position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _leg_number
       (write-long _leg_number s)
     ;; taticoma_msgs/LegJointsState _current_joints
       (send _current_joints :serialize s)
     ;; taticoma_msgs/LegPositionState _target_position
       (send _target_position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _leg_number
     (setq _leg_number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; taticoma_msgs/LegJointsState _current_joints
     (send _current_joints :deserialize buf ptr-) (incf ptr- (send _current_joints :serialization-length))
   ;; taticoma_msgs/LegPositionState _target_position
     (send _target_position :deserialize buf ptr-) (incf ptr- (send _target_position :serialization-length))
   ;;
   self)
  )

(setf (get taticoma_msgs::LegIKRequest :md5sum-) "bcb4917a6750a0f98ecbb5e98212cbec")
(setf (get taticoma_msgs::LegIKRequest :datatype-) "taticoma_msgs/LegIKRequest")
(setf (get taticoma_msgs::LegIKRequest :definition-)
      "int32 leg_number
taticoma_msgs/LegJointsState current_joints
taticoma_msgs/LegPositionState target_position

================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint

================================================================================
MSG: taticoma_msgs/LegPositionState
float64 x
float64 y
float64 z

")



(provide :taticoma_msgs/LegIKRequest "bcb4917a6750a0f98ecbb5e98212cbec")


