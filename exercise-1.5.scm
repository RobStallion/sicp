(define (p) (p))

(define (test a b) 
  (if (= a 0) 
      0
      y))

;;; This fails as applicative evaluation tries to evaluate
;;; the operand b, which is a call to p, which calls itself 
;;; endlessly.
(test 0 (p))

;;; This passes as 'if' is a special form in scheme which
;;; only evaluates the clauses that it needs to. As the 
;;; first clause matches, it does not try to evaluate 'p'
(if (= 0 0) 0 (p))
