;;; comment

(define (sum l)
  (if (null? l)
    0
    (+ (car l) (sum (cdr l)))))

(define (average . rest)
  (/ (sum rest) (length rest)))

(define (close-enough? radicand guess precision)
  (<= (abs (- radicand (square guess))) precision))

(define (calc-guess radicand current-guess)
  (average (/ radicand current-guess) current-guess))

(define (solve-square-root radicand guess)
  (if (close-enough? radicand guess 0.01)
    guess
    (solve-square-root radicand (calc-guess radicand guess))))

(define (square-root radicand)
  (solve-square-root radicand 1.0))

(trace square-root)
(square-root 16)
