(define (new-if predicate then-clause else-clause)
  (cond   (predicate  then-clause)
          (else else-clause)))

; what happens if we run (using procedures defined in the chapter)
(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; `if` is a special case in that it only evaluates the first clause when the predicate is true,
; and it only evaluates the second clause if it is false. `new-if` evaluates both clauses at
; interpretation, so  the interpreter will never break out of this loop (the interpreter actually
; aborts due to maximum recursion depth)