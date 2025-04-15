#lang sicp 
(define (fastExpS a b n)
    (display (list 'fastExpS a b n)) (newline)

    (cond ((= n 0) a) 
          ((even? n) (fastExpS a (* b b) (/ n 2)))
          (else (fastExpS (* a b) b (- n 1)))
    )   
)

(define (fastExp b n)
  (display (list 'fastExp b n)) (newline)
  (cond ((= n 0) 1)
        ((even? n) (square (fastExp b (/ n 2))))
        (else (* b (fastExp b (- n 1))))))


(define (square x) (* x x))
(display (fastExp 10 2))
(newline)
(display (fastExpS 1 10 2))
(newline)