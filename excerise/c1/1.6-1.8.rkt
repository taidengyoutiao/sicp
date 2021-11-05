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

(define (sq guess x)
  (if (good-enough? guess x)
      x
      (sq (improve guess x) x)))
