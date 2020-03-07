(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y) 
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 16)

(define (new-if predicate
                then-clause
                else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(new-if (= 2 3) 0 5)
(new-if (= 1 1) 0 5)

;;; This version of the function will not work as
;;; it is using new-if. Because of the way the interpreter
;;; works in scheme (it uses applicative-order-evaluation)
;;; it interperates the operands first, which will cause
;;; it to continuously try and evaluate its call to
;;; itself. 

;;; This does not happen in the original function call 
;;; as the if statement is a special form which 
;;; only evaluates the case that is needed. This 
;;; means that when good-enough? returns a true
;;; value it does NOT try and evaluate the second case.
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))
