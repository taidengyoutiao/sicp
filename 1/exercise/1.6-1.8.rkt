#lang racket
; newton's methods for square root

; step1: Knowing all the things that happed, happening and will happen. Find the patterns/rules
; step2: write the "description" in natural language about the rules in step1
; step3: translate the "description" into programming lauguage which is the "program"
; sometimes, step2 is omitted

; knack of step1:
; try to find the iteration/recursion part of the problem
; try to know what happend in each iteration(if I know all the things in one iteration, the function is about to be written down.)
; variables stand for stable meanings
; use auxiliary procedure to do things

; write code from top to bottom
; start from the arguments and function name/meaning

; Newton's methods for square root
(define (sqrt x) (sqrt-iter 1.0 x))
(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))
(define (improve guess x)
  (average guess (/ x guess)))
(define (average x y) (/ (+ x y) 2))
(define (abs x) (if (< x 0)
                    (- x) x))
(define (square x)
  (* x x))
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; todo: 1.6

; half: 1.7
(define (good-enough?* guess old-guess)
  (< (/ (abs (- guess old-guess)) guess) 0.001))

; done: 1.8
(define (improve-cube guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))
(define (good-enough-cube? guess x)
  (< (abs (- (cube guess) x)) 0.001))
(define (cube x)
  (* x x x))
(define (curt-iter guess x)
  (if (good-enough-cube? guess x)
      guess
      (curt-iter (improve-cube guess x) x)))
(define (curt x)
  (curt-iter 1 x))
