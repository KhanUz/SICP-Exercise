(define (pascal row col)
    (if (or (= col 0) (= col row)) 
        1
        (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col ))    
    )

)


(define (displayPascal rows)

    (define (displayRow row)
        (define (rowIter n)
            (displayCol n)
            (newline)
            (if (< n row)
                (rowIter (+ n 1))
            )
        )


        (define (displayCol r)
            (define (colIter n)
                (display (pascal r n))
                (display " ")
            
                (if (< n r)
                    (colIter (+ n 1))
                )
            )
            (colIter 0)    
        )

        (rowIter 0)

    )
    (displayRow (- rows 1))
)

(displayPascal 14)