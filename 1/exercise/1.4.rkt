#lang racket
; more subtle than js conditional clause
; this can only change the operator rather than an expression
(define (a-plus-abs-b a b)
  ((if (> b 0) + -)
   a
   b))