10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b 
  (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1))

(/
 (+ 5 4 
  (- 2 
   (- 3 
    (+ 6 
     (/ 4 5)))))
 (* 3 (- 6 2)(- 2 7))
)

(define (square n) (* n n))
(define (sumSquares a b) (+ (square a) (square b)))

(square 8)
(sumSquares 4 4)

(define (squareAndSumLargestNums a b c)
  (cond 
    ((and (>= a c) (>= b c)) (sumSquares a b))
    ((and (>= b a) (>= c a)) (sumSquares b c))
    ((and (>= a b) (>= c b)) (sumSquares a c))
))

(squareAndSumLargestNums 3 4 4)
(squareAndSumLargestNums 5 4 4)
