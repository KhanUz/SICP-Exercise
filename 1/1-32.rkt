#lang sicp

(define (accumulateRecursive combiner nullValue term next a b)
    (if (> a b)
        nullValue
        (combiner (term a) (accumulateRecursive combiner nullValue term next (next a) b))
    )
)



(define (accumulateIterative combiner nullValue term next a b)
    (define (iterator a result)
        (if (> a b)
            result
            (iterator (next a) (combiner result (term a)))
        )
    )
    (iterator a nullValue)
)
(define (identity x) x)
(define (increment x) (+ 1 x))

(accumulateRecursive + 0 identity increment 1 3)
(accumulateIterative + 0 identity increment 1 3)