(define (cbrt-iter this-guess previous-guess x)
  (if (good-enough? this-guess previous-guess x)
      this-guess
      (cbrt-iter  (improve this-guess x)
                  this-guess
                  x)))

; (x/y^2 +2y) / 3
(define (improve guess x)
  (/  (+  (/ x (square guess))
          (* 2 guess))
      3))

(define (average x y)
  (/ (+ x  y) 2))

(define (good-enough? this-guess previous-guess x)
  (<  (abs (- this-guess previous-guess))
      (* this-guess .001)))

(define (square x) (* x x))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (cbrt x)
  (cbrt-iter 1.0 x x))