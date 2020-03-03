; recursive procedure for computing fibonacci numbers
(define (fib n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fib (- n 1))
                 (fib (- n 2))))))

; linear iteration method
; My approach
(define (fib n)
  (if (< n 2) n (fib-iter 0 1 n)))

(define (fib-iter prev current count)
  (if (= 1 count)
    current
    (fib-iter current (+ prev current) (- count 1))))

; linear iteration method from the book
(define (fib n)
  (fib-iter 1 0 n))

(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(fib 5)
(fib-iter 1 0 5)
(fib-iter 1 1 4)
(fib-iter 2 1 3)
(fib-iter 3 2 2)
(fib-iter 5 3 1)
(fib-iter 8 5 0)
5

(fib 0) ; = 0
(fib 1) ; = 1
(fib 2) ; = 1
(fib 3) ; = 2
(fib 4) ; = 3
(fib 5) ; = 5
(fib 6) ; = 8
(fib 7) ; = 13
