;;;; daim-go.asd

(asdf:defsystem #:daim-go
  :serial t
  :description "Describe daim-go here"
  :author "Your Name <your.name@example.com>"
  :license "Specify license here"
  :depends-on (#:house #:cl-who #:bordeaux-threads)
  :components ((:file "package")
               (:file "daim-go")))

