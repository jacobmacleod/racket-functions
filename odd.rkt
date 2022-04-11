#lang racket
;Develop the function odd. It takes a list as a parameter.
;The function returns the list of all the symbols at odd positions.
;Code:
(define odd
  (lambda (L)
    (if (not (pair? L))
    '()
    (if (= (length L) 1)
        '()
        (cons (cadr L) (odd (cddr L)))))
    )
  )
;Test cases
(odd '(0 b 2 d))
(odd '(a))
(odd '())
