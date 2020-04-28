
(cl:in-package :asdf)

(defsystem "request-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "joke" :depends-on ("_package_joke"))
    (:file "_package_joke" :depends-on ("_package"))
  ))