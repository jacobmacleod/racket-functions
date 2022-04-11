#lang racket
;Develop the function dupSymbol. It takes a list of symbols and
;numbers, L, and duplicates each symbol in the list.
;Code:
(define dup-symbol
  (lambda (L)
    (if (not (pair? L))
        '()
        (if (symbol? (car L))
            (cons (car L) (cons (car L) (dup-symbol (cdr L))))
            (if (list? (car L))
                (cons (dup-symbol (car L)) (dup-symbol (cdr L)))
                (cons (car L) (dup-symbol (cdr L))))))
    )
  )
;Test cases
(dup-symbol '(a 1 b 2 c 3))
(dup-symbol '((a 1) b ((c)) 2))
