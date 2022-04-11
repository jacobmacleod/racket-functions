#lang racket
;Develop the function even. It takes a list as a parameter.
;The function returns the list of all the symbols at even positions
;Code:
(define even
  (lambda (L)
    (if (not (pair? L))
    '()
    (if (= (length L) 1)
        (cons (car L) '())
        (cons (car L) (even (cddr L)))
    ))
  ))
;Test cases
(even '(a 1 c 3))
(even '(a))
(even '())
