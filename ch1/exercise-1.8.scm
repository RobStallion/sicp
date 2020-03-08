(define (improve guess x)
  (/
    (+
      (/ x (square guess))
      (* 2 guess))
    3))

(define (good-enough? guess x)
  (= (improve guess x) guess))

(define (cube-root x)
  (cube-root-iter 1.1 x))

(define (cube-root-iter guess x)
  (if (good-enough? guess x)
    guess
    (cube-root-iter (improve guess x) x)))

(cube-root 27)
