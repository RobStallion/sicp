; power
; recursive
(define (pow x n)
  (cond ((= n 0) 0)
        ((= n 1) x)
        (else (* x (pow x (- n 1))))
))

(trace pow)
(pow 2 4)

; power
; iterative
(define (^ x n)
  (if (= n 0) 0 (power-iter x n x)))

(define (power-iter product counter x)
  (if (< counter 1)
    product
    (power-iter (* product x) (- counter 1) x)))

(^ 2 4)
