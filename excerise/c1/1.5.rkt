#lang racket
; applicative-order evaluation: first evaluates the operator and operands and then applies the resulting procedure to the resulting arguments.
; normal-order evaluation: evaluate the operands until their values were needed
(define (d) (d))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (d))