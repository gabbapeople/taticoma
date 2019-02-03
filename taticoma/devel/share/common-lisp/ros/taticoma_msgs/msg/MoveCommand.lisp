; Auto-generated. Do not edit!


(cl:in-package taticoma_msgs-msg)


;//! \htmlinclude MoveCommand.msg.html

(cl:defclass <MoveCommand> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass MoveCommand (<MoveCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MoveCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MoveCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name taticoma_msgs-msg:<MoveCommand> is deprecated: use taticoma_msgs-msg:MoveCommand instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <MoveCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader taticoma_msgs-msg:cmd-val is deprecated.  Use taticoma_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<MoveCommand>)))
    "Constants for message type '<MoveCommand>"
  '((:STOP_CMD . 1)
    (:PAUSE_CMD . 2)
    (:SLEEP_CMD . 3)
    (:WAKE_CMD . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'MoveCommand)))
    "Constants for message type 'MoveCommand"
  '((:STOP_CMD . 1)
    (:PAUSE_CMD . 2)
    (:SLEEP_CMD . 3)
    (:WAKE_CMD . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MoveCommand>) ostream)
  "Serializes a message object of type '<MoveCommand>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MoveCommand>) istream)
  "Deserializes a message object of type '<MoveCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MoveCommand>)))
  "Returns string type for a message object of type '<MoveCommand>"
  "taticoma_msgs/MoveCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MoveCommand)))
  "Returns string type for a message object of type 'MoveCommand"
  "taticoma_msgs/MoveCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MoveCommand>)))
  "Returns md5sum for a message object of type '<MoveCommand>"
  "3f78f07168f5d781f8449481447d6912")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MoveCommand)))
  "Returns md5sum for a message object of type 'MoveCommand"
  "3f78f07168f5d781f8449481447d6912")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MoveCommand>)))
  "Returns full string definition for message of type '<MoveCommand>"
  (cl:format cl:nil "int32 cmd~%~%int32 STOP_CMD=1~%int32 PAUSE_CMD=2~%int32 SLEEP_CMD=3~%int32 WAKE_CMD=4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MoveCommand)))
  "Returns full string definition for message of type 'MoveCommand"
  (cl:format cl:nil "int32 cmd~%~%int32 STOP_CMD=1~%int32 PAUSE_CMD=2~%int32 SLEEP_CMD=3~%int32 WAKE_CMD=4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MoveCommand>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MoveCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'MoveCommand
    (cl:cons ':cmd (cmd msg))
))
