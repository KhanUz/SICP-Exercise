#lang sicp 
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; applicative order evaluation - first evaluates the argument and then performs the function
;; normal order evaluation - doesn't compute argument until it is required

;; code execution
;; infinite loop (recursively) if applicative order
;; y is not required so it does not compute it (not falling into loop)