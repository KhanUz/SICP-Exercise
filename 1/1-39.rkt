#lang sicp

(define (contFrac n d k)
    (define (iter i result)
        (if(= i 0)
            result
            (iter (- i 1) (/ (n i) (+ result (d i))))
        )
    )
    (iter (- k 1) (/ (n k) (d k)))
)

;;; (contFrac  (lambda (i) 1.0) (lambda (i) 1.0) 11)


(define (tanCf x k)
    (contFrac (lambda (i) 
                    (if (= i 1)
                        x
                        (* -1 x x)
                    ))
              (lambda (i) (- (* 2 i) 1) )
              k
    )
)


(tanCf 1.0 10)

(tan 1)