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
