;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::LegJointsState)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'LegJointsState (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::LEGJOINTSSTATE")
  (make-package "TATICOMA_MSGS::LEGJOINTSSTATE"))

(in-package "ROS")
;;//! \htmlinclude LegJointsState.msg.html


(defclass taticoma_msgs::LegJointsState
  :super ros::object
  :slots (_joint ))

(defmethod taticoma_msgs::LegJointsState
  (:init
   (&key
    ((:joint __joint) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint __joint)
   self)
  (:joint
   (&optional __joint)
   (if __joint (setq _joint __joint)) _joint)
  (:serialization-length
   ()
   (+
    ;; float64[3] _joint
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _joint
     (dotimes (i 3)
       (sys::poke (elt _joint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _joint
   (dotimes (i (length _joint))
     (setf (elt _joint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get taticoma_msgs::LegJointsState :md5sum-) "8c9183fb9f551c0c8a1fa0044edf51fc")
(setf (get taticoma_msgs::LegJointsState :datatype-) "taticoma_msgs/LegJointsState")
(setf (get taticoma_msgs::LegJointsState :definition-)
      "float64[3] joint

")



(provide :taticoma_msgs/LegJointsState "8c9183fb9f551c0c8a1fa0044edf51fc")


