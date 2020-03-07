(define l1 '(1 2 3 2))
(define l2 '(5 2 6 8 4))
(define l3 '(10 5 2 6 8 4))
(define l4 '(5 4 3 2 1))

; my approach
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

; sort approach
(define (order a b)
  (if (< a b) (list a b) (list b a)))

(define (take-two-and-order l)
  (if (> (length l) 1) (apply order (take l 2)) l))

(define (bubble-helper l)
  (cond ((null? l) l)
        ((> (length l) 1) (cons (car (take-two-and-order l)) (bubble-helper (append (cdr (take-two-and-order l)) (drop l 2)))))
        ((= (length l) 1) (cons (car l) (drop l 1)))))

(define (bubble l n)
  (if (= (length l) n)
    l
    (bubble (bubble-helper l) (+ n 1))))

(define (bubble-sort l) (bubble l 0))

(define (take-last-two l)
  (list
    (list-ref l (- (length l) 1))
    (list-ref l (- (length l) 2))))

(define (square-and-sum-two-largest . rest)
  (apply +
         (map square
              (take-last-two (bubble-sort rest)))))

(apply square-and-sum-two-largest l4)
