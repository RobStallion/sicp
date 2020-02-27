; linear recursive process
; This process needs to keep track of deferred operations,
; the multiplication in this case
; The interpreter needs to heep track of the operation that need
; to be performed later on
(define (factorial n)
  (if (<= n 1) 1 (* n (factorial (- n 1)))))

; linear iterative process
; This process also builds up in a linear fasion,
; however it only needs to keep track of the current values
; at any step
(define (factorial n) (factorial-helper 1 1 n))

; my solution
(define (factorial-helper product counter max-count)
  (if (= counter max-count)
    (* product counter)
    (factorial-helper 
      (* product counter)
      (+ counter 1)
      max-count)))

; from the book
(define (factorial-helper product counter max-count)
  (if (> counter max-count)
      product
      (factorial-helper (* counter product)
                 (+ counter 1)
                 max-count)))

(factorial 6)
