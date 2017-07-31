(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

; The operator itself is switched based on whether b is positive. (a + b) if b is positive, (a - b) if b is negative