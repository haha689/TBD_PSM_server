
(cl:in-package :asdf)

(defsystem "server-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "AgentTrajectory" :depends-on ("_package_AgentTrajectory"))
    (:file "_package_AgentTrajectory" :depends-on ("_package"))
  ))