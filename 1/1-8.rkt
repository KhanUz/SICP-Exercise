#lang sicp 
#lang sicp
(define (cube x ) (* x x x))
(define (improveGuess guess x)
    (/ (+ (/ x (* guess guess) ) (* 2 guess)) 3)
)
(define (cubeRooter guess x)(
    let ((newGuess (improveGuess guess x)))
        (if (valid? guess newGuess)
            newGuess
            (cubeRooter newGuess x)
        )
))


(define (abs x) (if (< x 0) (- x) x))

(define (valid? prevGuess guess)
    (< (abs (- prevGuess guess)) 0.000001)
)
(define (cubeRoot x) (cubeRooter 1.0 x))


