;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::LegsJointsState)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'LegsJointsState (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::LEGSJOINTSSTATE")
  (make-package "TATICOMA_MSGS::LEGSJOINTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude LegsJointsState.msg.html


(defclass taticoma_msgs::LegsJointsState
  :super ros::object
  :slots (_joints_state ))

(defmethod taticoma_msgs::LegsJointsState
  (:init
   (&key
    ((:joints_state __joints_state) (let (r) (dotimes (i 6) (push (instance taticoma_msgs::LegJointsState :init) r)) r))
    )
   (send-super :init)
   (setq _joints_state __joints_state)
   self)
  (:joints_state
   (&rest __joints_state)
   (if (keywordp (car __joints_state))
       (send* _joints_state __joints_state)
     (progn
       (if __joints_state (setq _joints_state (car __joints_state)))
       _joints_state)))
  (:serialization-length
   ()
   (+
    ;; taticoma_msgs/LegJointsState[6] _joints_state
    (apply #'+ (send-all _joints_state :serialization-length))
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; taticoma_msgs/LegJointsState[6] _joints_state
     (dolist (elem _joints_state)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; taticoma_msgs/LegJointsState[6] _joints_state
   (dotimes (i 6)
     (send (elt _joints_state i) :deserialize buf ptr-) (incf ptr- (send (elt _joints_state i) :serialization-length))
     )
   ;;
   self)
  )

(setf (get taticoma_msgs::LegsJointsState :md5sum-) "6fe1b620769e6858203cf2a048e48ef3")
(setf (get taticoma_msgs::LegsJointsState :datatype-) "taticoma_msgs/LegsJointsState")
(setf (get taticoma_msgs::LegsJointsState :definition-)
      "taticoma_msgs/LegJointsState[6] joints_state

================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint

")



(provide :taticoma_msgs/LegsJointsState "6fe1b620769e6858203cf2a048e48ef3")


