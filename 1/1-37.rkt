#lang sicp
(define (sub1 x) (- x 1))
(define (contFracIterative n d k)
    (define (iterator i result)
        (if(= i 0 )
            result
            (iterator (sub1 i) (/ (n i) (+ result (d i)) ))
        )
    )

    (iterator (sub1 k) (/ (n k) (d k)))
)





(define (contFracRecursive n d k)
    (define (recur i)
        (if (= i k)
            (/ (n i) (d i))
            (/ (n i) (+ (d i) (recur (+ i 1))))            
        )
    )
    (recur 1)
)


(contFracRecursive (lambda (i) 1.0) (lambda (i) 1.0) 11)


(contFracIterative (lambda (i) 1.0) (lambda (i) 1.0) 11)