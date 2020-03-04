;recursive
(define (f n)
  (if (< n 3)
    n
    (+ (f (- n 1)) (f (- n 2)) (f (- n 3)))))

(f 4)
(+ (f 3) (f 2) (f 1))
(+ (f 3) 2 1)
(+ (f 2) (f 1) (f 0 ) 2 1)
(+ 2 1 0 2 1)
6

(f 6)
(+ (f 5) (f 4) (f 3)) ; (f 3) = (+ (f 2) (f 1) (f 0)) = (+ 2 1 0) = 3
(+ (f 5) (f 4) (f 2) (f 1) (f 0))
(+ (f 5) (f 4) 2 1 0) ; (f 4) = (+ (f3) 3) = 6
(+ (f 5) (f 4) 3) ; (f 4) = (+ (f3) 3) = 6
(+ (f 5) 6 3)
(+ (f 5) 9) ; (f 5) = (+ (f 4) (f 3) (f 2)) = (+ 6 3 2) = 11
(+ 6 3 2 9)
(+ 11 9)
20

(f 6)
(+ (f 5) (f 4) (f 3))
(+ (f 5) (f 4) 3)
(+ (f 5) (+ (f 3) (f 2) (f 1)) 3)
(+ (f 5) 6 3)
(+ (+ (f 4) (f 3) (f 2)) 6 3)
(+ 11 6 3)
20


(define (f2 n)
)
