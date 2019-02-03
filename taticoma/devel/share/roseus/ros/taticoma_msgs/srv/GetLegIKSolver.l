;; Auto-generated. Do not edit!


(when (boundp 'taticoma_msgs::GetLegIKSolver)
  (if (not (find-package "TATICOMA_MSGS"))
    (make-package "TATICOMA_MSGS"))
  (shadow 'GetLegIKSolver (find-package "TATICOMA_MSGS")))
(unless (find-package "TATICOMA_MSGS::GETLEGIKSOLVER")
  (make-package "TATICOMA_MSGS::GETLEGIKSOLVER"))
(unless (find-package "TATICOMA_MSGS::GETLEGIKSOLVERREQUEST")
  (make-package "TATICOMA_MSGS::GETLEGIKSOLVERREQUEST"))
(unless (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE")
  (make-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))

(in-package "ROS")





(defclass taticoma_msgs::GetLegIKSolverRequest
  :super ros::object
  :slots (_leg_number _current_joints _target_position ))

(defmethod taticoma_msgs::GetLegIKSolverRequest
  (:init
   (&key
    ((:leg_number __leg_number) (make-array 0 :initial-element 0 :element-type :integer))
    ((:current_joints __current_joints) (let (r) (dotimes (i 0) (push (instance taticoma_msgs::LegJointsState :init) r)) r))
    ((:target_position __target_position) (let (r) (dotimes (i 0) (push (instance taticoma_msgs::LegPositionState :init) r)) r))
    )
   (send-super :init)
   (setq _leg_number __leg_number)
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
    ;; int32[] _leg_number
    (* 4    (length _leg_number)) 4
    ;; taticoma_msgs/LegJointsState[] _current_joints
    (apply #'+ (send-all _current_joints :serialization-length)) 4
    ;; taticoma_msgs/LegPositionState[] _target_position
    (apply #'+ (send-all _target_position :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[] _leg_number
     (write-long (length _leg_number) s)
     (dotimes (i (length _leg_number))
       (write-long (elt _leg_number i) s)
       )
     ;; taticoma_msgs/LegJointsState[] _current_joints
     (write-long (length _current_joints) s)
     (dolist (elem _current_joints)
       (send elem :serialize s)
       )
     ;; taticoma_msgs/LegPositionState[] _target_position
     (write-long (length _target_position) s)
     (dolist (elem _target_position)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[] _leg_number
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _leg_number (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _leg_number i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; taticoma_msgs/LegJointsState[] _current_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _current_joints (let (r) (dotimes (i n) (push (instance taticoma_msgs::LegJointsState :init) r)) r))
     (dolist (elem- _current_joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; taticoma_msgs/LegPositionState[] _target_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_position (let (r) (dotimes (i n) (push (instance taticoma_msgs::LegPositionState :init) r)) r))
     (dolist (elem- _target_position)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(intern "*IK_FOUND*" (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(shadow '*IK_FOUND* (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(defconstant taticoma_msgs::GetLegIKSolverResponse::*IK_FOUND* 1)
(intern "*IK_NOT_FOUND*" (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(shadow '*IK_NOT_FOUND* (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(defconstant taticoma_msgs::GetLegIKSolverResponse::*IK_NOT_FOUND* -1)
(intern "*TIMED_OUT*" (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(shadow '*TIMED_OUT* (find-package "TATICOMA_MSGS::GETLEGIKSOLVERRESPONSE"))
(defconstant taticoma_msgs::GetLegIKSolverResponse::*TIMED_OUT* -2)
(defclass taticoma_msgs::GetLegIKSolverResponse
  :super ros::object
  :slots (_target_joints _error_codes ))

(defmethod taticoma_msgs::GetLegIKSolverResponse
  (:init
   (&key
    ((:target_joints __target_joints) (let (r) (dotimes (i 0) (push (instance taticoma_msgs::LegJointsState :init) r)) r))
    ((:error_codes __error_codes) 0)
    )
   (send-super :init)
   (setq _target_joints __target_joints)
   (setq _error_codes (round __error_codes))
   self)
  (:target_joints
   (&rest __target_joints)
   (if (keywordp (car __target_joints))
       (send* _target_joints __target_joints)
     (progn
       (if __target_joints (setq _target_joints (car __target_joints)))
       _target_joints)))
  (:error_codes
   (&optional __error_codes)
   (if __error_codes (setq _error_codes __error_codes)) _error_codes)
  (:serialization-length
   ()
   (+
    ;; taticoma_msgs/LegJointsState[] _target_joints
    (apply #'+ (send-all _target_joints :serialization-length)) 4
    ;; int32 _error_codes
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; taticoma_msgs/LegJointsState[] _target_joints
     (write-long (length _target_joints) s)
     (dolist (elem _target_joints)
       (send elem :serialize s)
       )
     ;; int32 _error_codes
       (write-long _error_codes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; taticoma_msgs/LegJointsState[] _target_joints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _target_joints (let (r) (dotimes (i n) (push (instance taticoma_msgs::LegJointsState :init) r)) r))
     (dolist (elem- _target_joints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32 _error_codes
     (setq _error_codes (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass taticoma_msgs::GetLegIKSolver
  :super ros::object
  :slots ())

(setf (get taticoma_msgs::GetLegIKSolver :md5sum-) "aab6d4778f2d7a09001d31408c116ed3")
(setf (get taticoma_msgs::GetLegIKSolver :datatype-) "taticoma_msgs/GetLegIKSolver")
(setf (get taticoma_msgs::GetLegIKSolver :request) taticoma_msgs::GetLegIKSolverRequest)
(setf (get taticoma_msgs::GetLegIKSolver :response) taticoma_msgs::GetLegIKSolverResponse)

(defmethod taticoma_msgs::GetLegIKSolverRequest
  (:response () (instance taticoma_msgs::GetLegIKSolverResponse :init)))

(setf (get taticoma_msgs::GetLegIKSolverRequest :md5sum-) "aab6d4778f2d7a09001d31408c116ed3")
(setf (get taticoma_msgs::GetLegIKSolverRequest :datatype-) "taticoma_msgs/GetLegIKSolverRequest")
(setf (get taticoma_msgs::GetLegIKSolverRequest :definition-)
      "int32[] leg_number
taticoma_msgs/LegJointsState[] current_joints
taticoma_msgs/LegPositionState[] target_position


================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint

================================================================================
MSG: taticoma_msgs/LegPositionState
float64 x
float64 y
float64 z
---
taticoma_msgs/LegJointsState[] target_joints
int32 error_codes

int32 IK_FOUND=1
int32 IK_NOT_FOUND=-1
int32 TIMED_OUT=-2


================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint
")

(setf (get taticoma_msgs::GetLegIKSolverResponse :md5sum-) "aab6d4778f2d7a09001d31408c116ed3")
(setf (get taticoma_msgs::GetLegIKSolverResponse :datatype-) "taticoma_msgs/GetLegIKSolverResponse")
(setf (get taticoma_msgs::GetLegIKSolverResponse :definition-)
      "int32[] leg_number
taticoma_msgs/LegJointsState[] current_joints
taticoma_msgs/LegPositionState[] target_position


================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint

================================================================================
MSG: taticoma_msgs/LegPositionState
float64 x
float64 y
float64 z
---
taticoma_msgs/LegJointsState[] target_joints
int32 error_codes

int32 IK_FOUND=1
int32 IK_NOT_FOUND=-1
int32 TIMED_OUT=-2


================================================================================
MSG: taticoma_msgs/LegJointsState
float64[3] joint
")



(provide :taticoma_msgs/GetLegIKSolver "aab6d4778f2d7a09001d31408c116ed3")


