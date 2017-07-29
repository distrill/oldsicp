(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; This is pretty cool but I would consider it a smell in most languages (too clever to reason about easily).
; The operator itself is switched based on whether b is positive. This is an operation on a and b; the operator is
; addition if b is positive, subtraction if b is negative. a plus the absolute value of b.