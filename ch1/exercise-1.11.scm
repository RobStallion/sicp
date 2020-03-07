;recursive
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1))
       (* 2 (f (- n 2)))
       (* 3 (f (- n 3))))))

(define (f2 n)
 (f-iter 0 1 2 3 n))

(define (f-iter p3 p2 p1 count max-count)
  (cond ((< max-count 3) max-count)
        ((= count max-count) (+ (* 3 p3) (* 2 p2) p1))
        (else (f-iter p2 p1 (+ (* 3 p3) (* 2 p2) p1) (+ count 1) max-count))))

; 0 1 2 3  4  5  6
; 0 1 2 4 11 25 59

; (f 3)
; = (= (* p3 3) (* p2 2) 2)
; = (+ (* 0  3) (* 1  2) 2)
