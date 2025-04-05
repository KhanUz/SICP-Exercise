(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))



(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; it will stuck in infinite recursive loop since scheme evaluates the parameters before evaluating the function itself so it runs sqrt-iter before running new-if  









(define (sqrter guess x) 
    (
        if (valid? guess x)
            guess
            (sqrter (modded guess x) x)
    )    
)

(define (valid? guess x) 
    (<  (   abs (- (square guess) x))0.001)
)

(define (modded guess x)(
    avg (/ x guess) guess
))
(define (square x) (* x x))
(define (avg x y) (/ (+ x y) 2))
(define (abs x) (if(> x 0) x (- x)))
(define (sqrt x) (sqrt-iter 1.0 x))
(display (sqrt 122))
(newline)















          