#lang sicp
(define (square x) (* x x))
(define (expMod base exponent modulaN)
    (cond   ((= exponent 0) 1)
            ((even? exponent) (remainder 
                                    (square (expMod base (/ exponent 2) modulaN))
                                    modulaN))
            (else (remainder (* base (expMod base (- exponent 1) modulaN)) modulaN))
    )
)

(define (fermatTest n)
    (define (tryIt a)
        (= (expMod a n n) a)
    )
    (tryIt (+ 1 (random (- n 1))))
)



(display (fermatTest 561))