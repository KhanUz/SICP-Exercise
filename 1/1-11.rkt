#lang sicp 
(define (recursiveFn n) 
    (if (< n 3)
        n
        ( + (recursiveFn (- n 1))  (* 2 (recursiveFn (- n 2))) (* 3 (recursiveFn (- n 3))))
    )
)

(define (iterativeFn n)
    (define (iterator n1 n2 n3 nth)
        (if (= nth n)
            n1
            (iterator (+ n1 (* 2 n2) (* 3 n3)) n1 n2 (+ nth 1))
        )
    )
    (if (< n 3) 
        n
        (iterator 2 1 0 0)
    )
)


(define x 10)

(display (recursiveFn x))
(newline)

(display (recursiveFn x))

(newline)