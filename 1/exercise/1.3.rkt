#lang racket

(define (sum-square-of-two a b)
  (+ (* a a)
     (* b b)))

(define (square-of-two-larger a b c)
  (cond ((and (< a b) (< a c)) (sum-square-of-two b c))
        ((and (< b a) (< b c)) (sum-square-of-two a c))
        ((and (< c b) (< c a)) (sum-square-of-two a b))))
