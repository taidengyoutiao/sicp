#lang racket

; 合法输入的情况下，即a、b为正整数，且 b <= a
(define (f a b)
  (if (or (= b 1)
          (= b a))
      1
      (+ (f (- a 1) (- b 1))
         (f (- a 1) b))))
