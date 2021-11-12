#lang racket
; input: n is positive integer
(define (f n)
  (* 2 n))
(define (g n)
  (if (= n 1)
      2
      (* 2 (g (- n 1)))))
(define (h n)
  (if (= n 1)
      2
      (g (h (- n 1)))))
