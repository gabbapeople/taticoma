; Auto-generated. Do not edit!


(cl:in-package taticoma_msgs-msg)


;//! \htmlinclude AudioCommand.msg.html

(cl:defclass <AudioCommand> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type cl:integer
    :initform 0))
)

(cl:defclass AudioCommand (<AudioCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AudioCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AudioCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name taticoma_msgs-msg:<AudioCommand> is deprecated: use taticoma_msgs-msg:AudioCommand instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <AudioCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader taticoma_msgs-msg:cmd-val is deprecated.  Use taticoma_msgs-msg:cmd instead.")
  (cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AudioCommand>)))
    "Constants for message type '<AudioCommand>"
  '((:ROS_ONLINE . 1)
    (:PI_POWER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AudioCommand)))
    "Constants for message type 'AudioCommand"
  '((:ROS_ONLINE . 1)
    (:PI_POWER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AudioCommand>) ostream)
  "Serializes a message object of type '<AudioCommand>"
  (cl:let* ((signed (cl:slot-value msg 'cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AudioCommand>) istream)
  "Deserializes a message object of type '<AudioCommand>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cmd) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AudioCommand>)))
  "Returns string type for a message object of type '<AudioCommand>"
  "taticoma_msgs/AudioCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AudioCommand)))
  "Returns string type for a message object of type 'AudioCommand"
  "taticoma_msgs/AudioCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AudioCommand>)))
  "Returns md5sum for a message object of type '<AudioCommand>"
  "5af3192bceb69dafff53b272be1d1636")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AudioCommand)))
  "Returns md5sum for a message object of type 'AudioCommand"
  "5af3192bceb69dafff53b272be1d1636")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AudioCommand>)))
  "Returns full string definition for message of type '<AudioCommand>"
  (cl:format cl:nil "int32 cmd~%~%int32 ROS_ONLINE=1~%int32 PI_POWER=2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AudioCommand)))
  "Returns full string definition for message of type 'AudioCommand"
  (cl:format cl:nil "int32 cmd~%~%int32 ROS_ONLINE=1~%int32 PI_POWER=2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AudioCommand>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AudioCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'AudioCommand
    (cl:cons ':cmd (cmd msg))
))
