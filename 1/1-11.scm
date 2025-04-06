;; recursive process 
(define (recursiveFunc n)
	(if (< n 3)
		n
		(+ (recursiveFunc (- n 1)) (* 2 (recursiveFunc (- n 2))) (* 3 (recursiveFunc (- n 3))))
	)
)	

;; iterative process
(define (iterativeFunc n) 
    (define (iterator nth n1 n2 n3)
        (if(= nth n)
            n1
            (iterator (+ nth 1) (+ n1 (* 2 n2) (* 3 n3)) n1 n2)
        )
    )
    (if (< n 3)
        n
        (iterator 2 2 1 0)    
    )
)



(newline)

(define (testUpTo n)
    (display (= (recursiveFunc n) (iterativeFunc n)))
    (if (= n 0)
        'done
        (testUpTo (- n 1))    
    )
)

(display (testUpTo 10))


(newline)