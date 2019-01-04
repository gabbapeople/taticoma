
(cl:in-package :asdf)

(defsystem "taticoma_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "LegJointsState" :depends-on ("_package_LegJointsState"))
    (:file "_package_LegJointsState" :depends-on ("_package"))
    (:file "LegsJointsState" :depends-on ("_package_LegsJointsState"))
    (:file "_package_LegsJointsState" :depends-on ("_package"))
  ))