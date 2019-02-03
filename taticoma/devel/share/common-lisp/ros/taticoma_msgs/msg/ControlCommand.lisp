; Auto-generated. Do not edit!


(cl:in-package taticoma_msgs-msg)


;//! \htmlinclude ControlCommand.msg.html

(cl:defclass <ControlCommand> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass ControlCommand (<ControlCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name taticoma_msgs-msg:<ControlCommand> is deprecated: use taticoma_msgs-msg:ControlCommand instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <ControlCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader taticoma_msgs-msg:cmd-val is deprecated.  Use taticoma_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlCommand>)))
    "Constants for message type '<ControlCommand>"
  '((:SERVO_PWR_ON . 1)
    (:SERVO_PWR_OFF . 2)
    (:PI_POWER_VAR . 3)
    (:AUDIO_PWR_ON . 4)
    (:AUDIO_PWR_OFF . 5)
    (:MOVEMENT_MODE_ON . 6)
    (:MOVEMENT_MODE_OFF . 7)
    (:MANUAL_MODE_ON . 8)
    (:MANUAL_MODE_OFF . 9))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlCommand)))
    "Constants for message type 'ControlCommand"
  '((:SERVO_PWR_ON . 1)
    (:SERVO_PWR_OFF . 2)
    (:PI_POWER_VAR . 3)
    (:AUDIO_PWR_ON . 4)
    (:AUDIO_PWR_OFF . 5)
    (:MOVEMENT_MODE_ON . 6)
    (:MOVEMENT_MODE_OFF . 7)
    (:MANUAL_MODE_ON . 8)
    (:MANUAL_MODE_OFF . 9))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlCommand>) ostream)
  "Serializes a message object of type '<ControlCommand>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlCommand>) istream)
  "Deserializes a message object of type '<ControlCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlCommand>)))
  "Returns string type for a message object of type '<ControlCommand>"
  "taticoma_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlCommand)))
  "Returns string type for a message object of type 'ControlCommand"
  "taticoma_msgs/ControlCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlCommand>)))
  "Returns md5sum for a message object of type '<ControlCommand>"
  "367a72f93ebfa3ea6e8196068a88b13e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlCommand)))
  "Returns md5sum for a message object of type 'ControlCommand"
  "367a72f93ebfa3ea6e8196068a88b13e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlCommand>)))
  "Returns full string definition for message of type '<ControlCommand>"
  (cl:format cl:nil "int32 cmd~%~%int32 SERVO_PWR_ON=1~%int32 SERVO_PWR_OFF=2~%int32 PI_POWER_VAR=3~%int32 AUDIO_PWR_ON=4~%int32 AUDIO_PWR_OFF=5~%int32 MOVEMENT_MODE_ON=6~%int32 MOVEMENT_MODE_OFF=7~%int32 MANUAL_MODE_ON=8~%int32 MANUAL_MODE_OFF=9~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlCommand)))
  "Returns full string definition for message of type 'ControlCommand"
  (cl:format cl:nil "int32 cmd~%~%int32 SERVO_PWR_ON=1~%int32 SERVO_PWR_OFF=2~%int32 PI_POWER_VAR=3~%int32 AUDIO_PWR_ON=4~%int32 AUDIO_PWR_OFF=5~%int32 MOVEMENT_MODE_ON=6~%int32 MOVEMENT_MODE_OFF=7~%int32 MANUAL_MODE_ON=8~%int32 MANUAL_MODE_OFF=9~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlCommand>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlCommand
    (cl:cons ':cmd (cmd msg))
))
