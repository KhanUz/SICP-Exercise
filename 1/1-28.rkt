#lang sicp
(define (square x) (* x x))
(define (expMod base exponent modulaN)
    (cond   ((= exponent 0) 1)
            ((even? exponent) (checkTrivialNum (expMod base (/ exponent 2) modulaN) modulaN))
            (else (remainder (* base (expMod base (- exponent 1) modulaN)) modulaN))
    )
)

(define (checkTrivialNum n modulaN)
    (if (and (not (or   (= n 1) 
                        (= (- modulaN 1) n)))
             (= (remainder (* n n) modulaN) 1))
        0
        (remainder (* n n) modulaN)
    )
)

(define (millerRabinTest n)
    (define (tryIt a)
        (= (expMod a (- n 1) n) 1)
    )
    (tryIt (+ 1 (random (- n 1))))
)



(display (millerRabinTest 561))