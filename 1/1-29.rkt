#lang sicp

(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a) (sum term (next a) next b))
    )
)
(define (cube x)(* x x x ) )

(define (sumUpto x y)
    (define (itself x) x)
    (define (increment x) (+ x 1))
    (sum itself x increment y )
)

(define (cubeIt x) (* x x x))
(define (cubeUpto x y)
    (define (increment x) (+ x 1))
    (sum cubeIt x increment y )
)
(define (piSum x y)
    (define (frac a)   (/ 1.0 (* a (+ a 2))))
    (define (incBy4 a) (+ a 4))
    (sum frac x incBy4 y)
)

(define (integral funcTerm a b dx)
    (define (addDx x) ( +  x dx))
    (* (sum funcTerm (+ a (/ dx 2)) addDx b) dx)
)

(define (simpsonRule funcTerm a b n)
    (define h (/ (- b a) n))
    (define (evalY k) 
        (define (getY index) ( + a (* index h)))
        (funcTerm (getY k))
    )
    (define (incBy2 x) (+ x 2))

    (* (/ h 3)(+ (evalY 0) (* (sum evalY 1 incBy2 (- n 1)) 4) (* 2 (sum evalY 2 incBy2 (- n 2))) (evalY n)) )
)


(display (sumUpto 1 10))
