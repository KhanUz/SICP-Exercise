#lang sicp 
(define (multiply a b)
    (if(= b 0) 
        0
        (+ a (multiply a (- b 1)))
    )
)

(define (doubleSelf a)
    (+ a a)
)
(define (halfSelf a)
 
    (define (iter x)
        (if (= (double x) a)    
            x
            (iter (+ x 1))    
        )
    )(if (even? a)
        (iter 1)
    )
)

(define (even? x) (= (remainder x 2) 0))
(define (double x ) (* x 2))
(define (half x ) (/ x 2))





(define (fastM a b)
    (cond ((= b 0) 0)
          ((even? b) (fastM (double a) (half b)))
          (else (+ a (fastM a (- b 1))))
    )

)










(display (fastM 2 10))



(newline)