; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1

(define (pascal row col)
  (cond
    ((or (> col row) (< col 1)) 0)
    ((= col 1) 1)
    (else (+
      (pascal (- row 1) col)
      (pascal (- row 1) (- col 1))))))
