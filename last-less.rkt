#lang racket
;Function lastLess takes a nested list of symbols, L, and a symbol,
;S, and returns L without the last occurence of S.
;Code:
(define last-less
  (lambda (L S)
    (if (pair? L)
        (if (= (length L) 1)
            (if (list? (car L)) ;check if element is list
                (cons (last-less (car L) S) '())
                (if (equal? (car L) S)
                '() ;This causes function to remove from all levels
                (cons (car L) '())))
            (if (list? (car L)) ;check if first element is list
                (cons (last-less (car L) S) (last-less (cdr L) S))
                (if (equal? (car L) S)
                    (if (member S (cdr L))
                        (cons (car L) (last-less (cdr L) S))
                        (last-less (cdr L) S))
                    (cons (car L) (last-less (cdr L) S)))))
        '()
        )
    )
  )
;Test cases
(last-less '(a b c d) 'a)
(last-less '(a b a (c e) d) 'e)
(last-less '() 'c)
(last-less '(a b c d c e) 'c)
(last-less '(a (b) (c d c) ((((e))))) 'c)
(last-less '(a (b) (c d c) ((((e c))))) 'c) ;doesn't work
