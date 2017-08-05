;      n                           if n<3
; f(n)=
;      f(n−1)+2f(n−2)+3f(n−3)      if n≥3

; recursive process
(define (f n)
  (if (< n 3) n
              (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3))))))

; iterative process
(define (f n)
  (if (< n 3) n
  (f-iter 4 2 1 (- n 3))))

(define (f-iter a b c count)
  (if (= count 0)
    a
    (f-iter (+ a (* 2 b) (* 3 c))
            a
            b
            (- count 1))))