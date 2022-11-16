(defpackage integral/tests/main
  (:use :cl
        :integral
        :parachute))
(in-package :integral/tests/main)

(define-test integer
  (is = 0 (as-signed-32-bit-integer 0) )
  (is = 1(as-signed-32-bit-integer 1) )
  (is = 2(as-signed-32-bit-integer 2) )
  (is = 8 (as-signed-32-bit-integer 8) )
  (is = (1- (expt 2 31)) (as-signed-32-bit-integer (1- (expt 2 31))) )
  (is = 0 (as-signed-32-bit-integer (expt 2 31)) )
  (is = 10 (as-signed-32-bit-integer (+ 10 (expt 2 31))) )
  (is = 1 (as-signed-32-bit-integer (+ 1 (expt 2 31))) )
  (is = 100 (as-signed-32-bit-integer (+ 100 (expt 2 31))) )
  (is = -1 (as-signed-32-bit-integer -1) )
  (is = -12 (as-signed-32-bit-integer -12) )
  (is = -200 (as-signed-32-bit-integer -200) )
  (is = (- (expt 2 31)) (as-signed-32-bit-integer (- (expt 2 31))) )
  (is = -1 (as-signed-32-bit-integer (+ -1 (- (expt 2 31)))) )
  (is = -100 (as-signed-32-bit-integer (+ -100 (- (expt 2 31)))) )
  (is = -1000 (as-signed-32-bit-integer (+ -1000 (- (expt 2 31)))) )
  (is = -10000 (as-signed-32-bit-integer (+ -10000 (- (expt 2 31)))) )
  (is = -100 (as-signed-32-bit-integer (+ -100 (- (* 3 (expt 2 31))))) )
  (is = -1000 (as-signed-32-bit-integer (+ -1000 (- (* 10 (expt 2 31))))) )
  (is = -10000 (as-signed-32-bit-integer (+ -10000 (- (* 20 (expt 2 31))))) )
  (is = -100 (as-signed-32-bit-integer (+ -100 (- (* 8 (expt 2 31))))) )
  (is = -1000 (as-signed-32-bit-integer (+ -1000 (- (* 24 (expt 2 31))))) )
  (is = -10000 (as-signed-32-bit-integer (+ -10000 (- (* 74 (expt 2 31))))) ))

