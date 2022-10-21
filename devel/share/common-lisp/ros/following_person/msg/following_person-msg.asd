
(cl:in-package :asdf)

(defsystem "following_person-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "rect_msg" :depends-on ("_package_rect_msg"))
    (:file "_package_rect_msg" :depends-on ("_package"))
  ))