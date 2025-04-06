(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

;; (+ 4 5)
;; (inc (+ 3 5))
;; (inc (inc (+ 2 5)))
;; (inc (inc (inc (+ 1 5))))
;; (inc (inc (inc (inc (+ 0 5)))))
;; (inc (inc (inc (inc 5))))
;; (inc (inc (inc 6)))
;; (inc (inc 7))
;; (inc 8)
;; 9
;; the code above is recursive process, because it calls functions that compute and pass back to compute based on those values


(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))


;; (+ 4 5)
;; (+ 3 6)
;; (+ 2 7)
;; (+ 1 8)
;; (+ 0 9)
;; 9
;; the code above is iterative process , because it pre-computes values and the last call is the deepest one
