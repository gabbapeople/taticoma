
(cl:in-package :asdf)

(defsystem "taticoma_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :taticoma_msgs-msg
)
  :components ((:file "_package")
    (:file "GetLegIKSolver" :depends-on ("_package_GetLegIKSolver"))
    (:file "_package_GetLegIKSolver" :depends-on ("_package"))
  ))