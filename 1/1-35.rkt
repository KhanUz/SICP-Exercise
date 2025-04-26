#lang sicp
(define tolerance 0.0000001)
(define (abs a b) 
    (let
        ((diff (- a b)))
        (if (> diff 0)
            diff
            (* -1 diff)
        )
    )
)

(define (isClose a b) 
    (< (abs a b) tolerance)
)

(define (fixedPoint function startGuess)
    (define (try guess)
        (let    ((nextGuess (function guess)))
                (if(isClose guess nextGuess)
                    nextGuess
                    (try nextGuess)
                )
        )
    )
    (try startGuess)
)


(define (fixedPointAvg function startGuess)
    (define (try guess)
        (let    ((nextGuess (average (function guess) guess)))
                (if(isClose guess nextGuess)
                    nextGuess
                    (try nextGuess)
                )
        )
    )
    (try startGuess)
)


 

(define (goldenRatio x)
    (fixedPointAvg (lambda (y) (+ 1 (/ 1 y))) 1.0)
)

