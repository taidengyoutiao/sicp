#lang racket
; The example of counting change is not that easy.

; There is no "math expression" for this example.
; So, using natural language to describe it. The way of expressing idea should make it easy to write code.

; "english expression"
; The number of ways to change amount a using n kinds of coins equals
;   the number of ways to change amount a using all but the first kind of coin, plus
;   the number of ways to change amount a - d using all n kinds of coins, where d is the denomination of the first kind of coin.

; The whole evaluation of substitution model using mind process
; (there is an important idea, I should not omit when I am not used to some substitution/calculation step.)

; evaluate
; (cc 11 5) -> (+ (cc 11 2) (cc 1 5))
; (cc 1 5) -> (cc 1 1) -> (+ (cc 1 0) (cc 0 5))
; (cc 1 0) is special case whose value is 0
; (cc 0 5) is another special case whose value is 1

(define (count-change amount) (cc amount 5))
(define (cc amount kinds-of-coins)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (= kinds-of-coins 0)) 0)
        (else (+ (cc amount
                     (- kinds-of-coins 1))
                 (cc (- amount
                        (first-denomination
                         kinds-of-coins))
                     kinds-of-coins)))))
(define (first-denomination kinds-of-coins)
  (cond ((= kinds-of-coins 1) 1) ((= kinds-of-coins 2) 5)
        ((= kinds-of-coins 3) 10)
        ((= kinds-of-coins 4) 25)
        ((= kinds-of-coins 5) 50)))

(cc 11 1)