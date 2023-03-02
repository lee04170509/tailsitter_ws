
(cl:in-package :asdf)

(defsystem "swarm_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GlobalExtrinsic" :depends-on ("_package_GlobalExtrinsic"))
    (:file "_package_GlobalExtrinsic" :depends-on ("_package"))
    (:file "GlobalExtrinsicStatus" :depends-on ("_package_GlobalExtrinsicStatus"))
    (:file "_package_GlobalExtrinsicStatus" :depends-on ("_package"))
    (:file "ObserveTeammate" :depends-on ("_package_ObserveTeammate"))
    (:file "_package_ObserveTeammate" :depends-on ("_package"))
    (:file "QuadStatePub" :depends-on ("_package_QuadStatePub"))
    (:file "_package_QuadStatePub" :depends-on ("_package"))
    (:file "TeamStatus" :depends-on ("_package_TeamStatus"))
    (:file "_package_TeamStatus" :depends-on ("_package"))
    (:file "TeammateInfo" :depends-on ("_package_TeammateInfo"))
    (:file "_package_TeammateInfo" :depends-on ("_package"))
  ))