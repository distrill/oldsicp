(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

; What happens if Ben Bitdidle calls: (test 0 (p))?
; For normal-order-evaluation, the call to (test 0 (p)) would turn into (if (= 0 0) 0 (p)). 0 would simply be returned.
; Alternatively, for applicative-order-evaluation, the interpreter would try to resolve the value of (p) before it
; evaluated whether x was 0 or not. Since (p) just calls itself, the interpreter would never break out of trying to
; resolve (p).