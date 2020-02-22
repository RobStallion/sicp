(define (sumSquares a b) (+ (square a) (square b)))

(define (squareAndSumLargestNums a b c)
  (cond 
    ((and (>= a c) (>= b c)) (sumSquares a b))
    ((and (>= b a) (>= c a)) (sumSquares b c))
    ((and (>= a b) (>= c b)) (sumSquares a c))
))

(sumSquares 4 4)

(squareAndSumLargestNums 3 4 4)
(squareAndSumLargestNums 5 4 4)
