; Ackermann's function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A  (- x 1)
                  (A x (- y 1))))))

(A1 10)
; (A (- 1 1) A(1 (- 10 1)))
; (A 0 (A 1 9))
; (A 0(A (- 1 1) (A 1 (- 9 1))))
; (A 0(A 0 (A 1 8)))
; ...
; (A 0(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 1 1))))))))))
; (A 0(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 2)))))))))
; (A 0(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 (A 0 4)))))))
; (A 0(A 0 (A 0 (A 0 (A 0 (A 0 (A 0 8)))))
; ...
; (A 0 512)
; 1024

(A 2 4)
; I'm not gonna fucking do this by hand, this is mad
;Value: 65536

(A 3 3)
;Value: 65536

(A 0 n)
; 2*n

; (A 1 n)
(A 1 0)
;Value: 0
(A 1 1)
;Value: 2
(A 1 2)
;Value: 4
(A 1 3)
;Value: 8
(A 1 4)
;Value: 16
; (A 1 n) = 2^n

; (A 2 n)
(A 2 0)
;Value: 0         ??
(A 2 1)
;Value: 2:        2^1
(A 2 2)
;Value: 4:        2 ^ 2 ^1
(A 2 3)
;Value: 16        2 ^ 2 ^ 2 ^ 1
(A 2 4)
;Value: 65536     2 ^ 2 ^ 2 ^ 2 ^ 1
; (A 2 n) = 2^2^...2 for as long as n.
