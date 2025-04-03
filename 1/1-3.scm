;; Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

(define (func a b c)
		(cond  
            ((and (< a b) (< a c))
                (sumSq c b))
            ((and (< b c) (< b a))
                (sumSq a c))
            (else 
                (sumSq a b))            
        )
)

(define (sumSq a b) (+ (square a) (square b)))
(define (square num) (* num num))

(display (= (func 10 10 10) (sumSq 10 10)))
(display (= (func 1 10 10) (sumSq 10 10)))
(display (= (func 10 1 10) (sumSq 10 10)))
(display (= (func 10 10 1) (sumSq 10 10)))
(display (= (func 1 10 100) (sumSq 10 100)))
(display (= (func 1 100 10) (sumSq 10 100)))
(display (= (func 10 1 100) (sumSq 10 100)))
(display (= (func 10 100 1) (sumSq 10 100)))
(display (= (func 100 10 1) (sumSq 10 100)))
(display (= (func 100 1 10) (sumSq 10 100)))