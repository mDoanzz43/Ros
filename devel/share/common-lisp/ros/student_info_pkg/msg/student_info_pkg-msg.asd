
(cl:in-package :asdf)

(defsystem "student_info_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "StudentInfo" :depends-on ("_package_StudentInfo"))
    (:file "_package_StudentInfo" :depends-on ("_package"))
  ))