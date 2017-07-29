(define (max a b) (if (> a b) a b))

(define (square x) (* x x))

(define (sum-of-squares a b) (+ (square a) (square b)))

(define (sum-of-largest-squares a b c)
  (if (> a b)
      (sum-of-squares a (max b c))
      (sum-of-squares b (max a c))))