#lang sicp 
(define (a-plus-abs-b a b)
    ((if (> b 0) + -) a b))

;; if b is negative operation becomes a - -b (a + b) , if positive then a + b