(define (sqrt-iter this-guess previous-guess x)
  (if (good-enough? this-guess previous-guess)
      this-guess
      (sqrt-iter  (improve this-guess x)
                  this-guess
                  x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x  y) 2))

(define (good-enough? this-guess previous-guess)
  (< (/ previous-guess, this-guess) 0.001))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (sqrt x)
  (sqrt-iter 1.0 x x))