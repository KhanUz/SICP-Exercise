#lang sicp
(define (sum term next a b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (+ result (term a)))
        ) 
    )
    (iter a 0)
)

(define (iterativeProduct term next a b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (next a) (* result (term a)))
        ) 
    )
    (iter a 1)
)


(define (recursiveProduct term next a b)
        (if (> a b)
            1
            (* (term a) (recursiveProduct term next (next a) b))
        ) 
)

(define (approxPi length)
    (define (term n) 
        (define 2n (* 2 n))

        (*  (/ 2n (- 2n 1))
            (/ 2n (+ 2n 1)))
    )
    (define (next x) (+ x 1))
    (display 
        (* 2 (iterativeProduct term next 1.0 length))
    )
    (newline)
    (display 
        (* 2 (recursiveProduct term next 1.0 length))
    )
)


(approxPi 162)