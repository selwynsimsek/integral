(defpackage integral
  (:use :cl)
  (:export #:as-signed-32-bit-integer))
(in-package :integral)

;; blah blah blah.

(defun as-signed-32-bit-integer (thing)
  "Converts thing to a signed 32 bit integer."
  (assert (typep thing 'integer))
  (cond ((zerop thing) 0)
        ((plusp thing) (logand thing #. (1- (expt 2 31))))
        (t (lognot (logand (lognot thing) #. (1- (expt 2 31)))))))

;(defun as-signed-32-bit-integer (x) (if (plusp x) (ldb (byte 31 0) x) (- (ldb (byte 31 0) x))))

