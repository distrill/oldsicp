; The `good-enough?` test used in computing square roots will not be very effective for finding the square roots of very small numbers:
(sqrt 0.000000004)
;Value:               0.03125004262498841
; The real answer is  0.000063245553203
; Since our x is so small (approaching 0 for the metric used), good-enough essensially just checks if guess^2 itself is as small as the metric.

; Also, in real computers, arith- metic operations are almost always performed with lim- ited precision. This makes our test inadequate for very large numbers:
(sqrt 999988877776661)
; This hangs forever. This is because it eventually converges to y=31622600.743402824, which is as close as the evaluator can get to the correct answer.
; y^2=999988877776660.83709255873117, so this works for us practically but is not cose enough according to the metric in good-enough?.

; An impproved implementation of good-enough?:
(define (good-enough? this-guess previous-guess x)
  (<  (abs (- this-guess previous-guess))
      (* this-guess .001)))

; We also need to keep track of the previous guess in sqrt-iter:
(define (sqrt-iter this-guess previous-guess x)
  (if (good-enough? this-guess previous-guess x)
      this-guess
      (sqrt-iter  (improve this-guess x)
                  this-guess
                  x)))

; And finally we start iterating, using 1 as a first guess, and x as our initial previous-step
(define (sqrt x)
  (sqrt-iter 1.0 x x))
  