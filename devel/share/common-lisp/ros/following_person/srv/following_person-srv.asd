
(cl:in-package :asdf)

(defsystem "following_person-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "target_srv" :depends-on ("_package_target_srv"))
    (:file "_package_target_srv" :depends-on ("_package"))
  ))