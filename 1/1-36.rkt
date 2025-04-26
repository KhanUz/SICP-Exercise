#lang sicp

(define tolerance 0.0001)

(define (avg a b) (/ (+ a b) 2))

(define (abs x) (
    if (> x 0)
        x
        (* -1 x)
))
(define (isClose a b) (< (abs (- a b)) tolerance))



(define (fixedPoint function startGuess)
    (define (try guess)
        (let
            (
                (nextGuess (function guess))
            )                
            (if (isClose guess nextGuess)
                nextGuess
                (try nextGuess)
            )
        )
    )
        
    (try startGuess)
)

(define (fixedPointAvg function startGuess)
    (define (try guess)
        (let
            (
                (nextGuess (avg (function guess) guess))
            )                
            (if (isClose guess nextGuess)
                nextGuess
                (try nextGuess)
            )
        )
    )
        
    (try startGuess)
)


 (define (reportTime time)
    (display "*** ")
    (display time)
    (newline)

)


(define (startTest function fn  startPoint startTime)
    
    (display (function fn startPoint))
    (reportTime (- (runtime)  startTime))
)


(define (term x) 
    (+ (sin x) (cos x))
)

;;; (fixedPointAvg (lambda (x) (/ 4 x)) 1.0)
(startTest fixedPointAvg term 1.0 (runtime))
(startTest fixedPoint term 1.0 (runtime))