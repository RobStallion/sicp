; sum solved with recursion
(define (sum l)
  (if (null? l)
    0
    (+ (car l) (sum (cdr l)))))

; sum solved with apply
(define (sum l) (apply + l))

(define (average . rest)
  (/ (sum rest) (length rest)))

(define (calc-guess radicand current-guess)
  (average (/ radicand current-guess) current-guess))

; does not work well with large or small numbers
(define (close-enough? radicand guess)
  (<= (abs (- radicand (square guess))) 0.001))

; answer I got online
(define (good-enough? radicand guess)
  (= (calc-guess radicand guess) guess))

(define (solve-square-root radicand guess)
  (if (good-enough? radicand guess)
    guess
    (solve-square-root radicand (calc-guess radicand guess))))

(define (square-root radicand)
  (solve-square-root radicand 1.1))

(trace square-root)
(square-root 16)
(square-root 1000000000000)
(square-root 1000000000000000)

(sqrt 16)
