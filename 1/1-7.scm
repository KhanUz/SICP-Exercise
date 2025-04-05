(define (square x) (* x x))
(define (abs x) ( if (< x 0) (- x) x))
(define (avg x y) (/ (+ x y) 2))
(define (sqrtEr x guess) 
    (
        if(valid? guess (modify x guess) )
            guess
        (sqrtEr x (modify x guess))
    )

)
(define (modify x guess)
    (avg (/ x guess) guess)
)
(define (valid? prevGuess guess )
    (< (abs (- prevGuess guess)) 0.000001)
)

(define (sqrt x) (sqrtEr x 1.0))

(display (sqrt 0.00001))





(newline)