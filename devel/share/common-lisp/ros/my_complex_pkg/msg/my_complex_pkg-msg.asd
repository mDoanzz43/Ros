
(cl:in-package :asdf)

(defsystem "my_complex_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Complex" :depends-on ("_package_Complex"))
    (:file "_package_Complex" :depends-on ("_package"))
  ))