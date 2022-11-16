(defsystem "integral"
  :version "0.1.0"
  :author "Selwyn Simsek"
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "integral/tests"))))

(defsystem "integral/tests"
  :author "Selwyn Simsek"
  :license ""
  :depends-on ("integral"
               "parachute")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for integral"
  :perform (test-op (op c) (uiop:symbol-call :parachute :test :integral/tests/main)))
