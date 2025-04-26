#lang sicp
(define (contFrac n d k)
    (define (iter i result)
        (if(= 0 i)
            result
            (iter (- i 1)  (/ (n i)  (+ (d i) result)))
        )
    )

    (iter (- k 1) (/ (n k) (d k)))
)




(define (de i) 
    (if(= 2 (remainder i 3))
         (* 2(/ (+ i 1) 3))
        1
    )
    
    ;;; i
)
(contFrac
    (lambda (i) 1.0)
    de
    12
)


(define (loop f length i)
    (if (= length i)
        'done
        (begin
            (display (de i))
            (display ", ")
            (loop f length (+ i 1) )
        )
    )
)

(loop de 12 1)


 

