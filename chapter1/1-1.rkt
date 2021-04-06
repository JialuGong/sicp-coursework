#lang racket
; using Newton way to implement a sqrt

(define (average x y) (/ (+ x y) 2))

; convert the diff to the ratio
(define (good-enough? guess x)
  (< (/ (abs (- (* guess guess) x)) x) 0.001))

(define (improve guess x) 
 (average (/ x guess) guess))

(define (sqrt-iter guess x) 
  (if (good-enough? guess x) guess
      (sqrt-iter (improve guess x) x)))
(define (sqrt x) 
  (sqrt-iter 1.0 x))
(display (sqrt 9))



