
(cl:in-package :asdf)

(defsystem "server-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :server-msg
)
  :components ((:file "_package")
    (:file "AgentTrajectories" :depends-on ("_package_AgentTrajectories"))
    (:file "_package_AgentTrajectories" :depends-on ("_package"))
  ))