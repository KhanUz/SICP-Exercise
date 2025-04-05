(define (sqrter guess x) 
    (
        if (valid? guess x)
            guess
            (sqrter (modded guess x) x)
    )    
)

(define (valid? guess x) 
    (<  (   abs (- (square guess) x)) 0.001)
)

(define (modded guess x)(
    avg (/ x guess) guess
))
(define (square x) (* x x))
(define (avg x y) (/ (+ x y) 2))
(define (abs x) (if(> x 0) x (- x)))
(define (sqrt x) (sqrter 1.0 x))
(display (sqrt 122))
(newline)