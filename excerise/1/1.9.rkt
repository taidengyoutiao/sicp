#lang racket

; recursive computing process
(define (+ a b)
  (if (= a 0) b
      (inc (+ (dec a) b))))
; iterative computing process
(define (+ a b)
  (if (= a 0) b
      (+ (dec a) (inc b))))
(+ 4 5)