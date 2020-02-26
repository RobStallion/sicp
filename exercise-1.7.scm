(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; does not work well with large or small numbers
(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

; answer I got online
(define (good-enough? guess x)
  (= (improve guess x) guess))

(define (sqrt x) (sqrt-iter 1.0 x))

(sqrt 9)
(sqrt 1000000000000)
(sqrt 10000000000000)
(sqrt 1000000000000000)

; 'good-enough?' will not be effective when trying to get the square root of a
; really small number, e.g. 0.00054321. In this case the level of precision
; used in 'good-enough?' is much larger than the number we are trying
; to solve for.

; Not sure why larger numbers are not working with this solution. Read up
; that with larger numbers, 'improve' with eventually keep returning the
; same guess, but 'good-enough?' will say it is not, and so will keep calling
; 'sqrt'. Do not fully understand the math
