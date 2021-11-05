#lang racket
; evaluate some exps in my mind~
10
(+ 5 3 4)
(- 9 1)
(/ 6 2)
(+ (* 2 4) (- 4 6))

(define a 3)
(define b (+ a 1))

(+ a b (* a b))
(= a b)

; scheme的if对应js的“三目”
(if (and (> b a) (< b (* a b)))
    b
    a)

; 而cond和js中的if差不多
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))