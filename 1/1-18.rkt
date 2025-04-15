#lang sicp 
(define (fastM a b)
    
    
    (define (half x) (/ x 2))
    (define (double x) (* x 2))

    
    (define (iter a b acc)
        (cond ((= b 0) acc)
              ((even? b) (iter (double a) (half b) acc))
              (else (iter a (- b 1) (+ acc a)))
            )
    )
    (iter a b 0)
)
(define num1 2131)
(define num2 213213)

(display (= (fastM num1 num2) (* num1 num2)))       
(newline)