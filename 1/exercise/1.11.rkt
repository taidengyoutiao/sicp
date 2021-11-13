#lang racket
; recursive
(define (f n)
  (if (< n 3)
      n
      (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))))))
(f 5)
; iterative
(define (ff n)
  (define (f-iter a b c n)
    (if (= n 3)
        (+ (* 3 a) (* 2 b) c)
        (f-iter b
                c
                (+ (* 3 a) (* 2 b) c)
                (- n 1))))
  (f-iter 0 1 2 n))
(ff 5)