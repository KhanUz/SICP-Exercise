#lang sicp

(define (identity x) x)
(define (increment x) (+ 1 x))
(define (square x) (* x x))
 

(define (accumulateRecursive combiner nullValue term next a b)
    (if (> a b)
        nullValue
        (combiner (term a) (accumulateRecursive combiner nullValue term next (next a) b))
    )
)

(define (accumulateIterative combiner nullValue term next a b)
    (define (iterator a result)
        (if (> a b)
            result
            (iterator (next a) (combiner result (term a)))
        )
    )
    (iterator a nullValue)
)

(define (filteredAccumulate combiner filter nullValue term next a b)
        (if(> a b)
            nullValue
            (combiner 
                (if (filter a b)(term a) nullValue)
                (filteredAccumulate combiner filter nullValue term next (next a) b)
            )
        )
)


(define (gcd a b)
    (if(= a 0)
        b
        (gcd (remainder b a) a)
    )
)

(define (relativePrime a b)(= 1 (gcd a b)))

(define (divides? a b) (= (remainder b a) 0))

(define (smallest-divisor n)
  (define (find-divisor test-divisor)
    (cond ((> (* test-divisor test-divisor) n) n)
          ((divides? test-divisor n) test-divisor)
          (else (find-divisor (+ test-divisor 1)))))
  (find-divisor 2)
)


(define (prime? n null) (= n (smallest-divisor n)))

(filteredAccumulate + prime? 0 square increment 1 4)
(filteredAccumulate + relativePrime 0 square increment 1 4)
