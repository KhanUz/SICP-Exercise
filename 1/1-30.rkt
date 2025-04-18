#lang sicp
(define (sumIterative term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a))))
    )
    (iter a 0)
)

(define (increment x) (+ x 1))
(define (itself x) x)
(define (cube x )(* x x x))
(display (sumIterative cube 1 increment 10))