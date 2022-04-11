#lang racket
;Function recursiveCallCountFib returns the number of recursive
;calls made to fib for a given n.
;
;Contract: recursiveCallCountFib: number -> number of recursive
;          calls made to calculate the nth value of Fibonacci
;
;Purpose: recursiveCallCountFib takes a number, n, and returns the
;         number of recursive calls that would be made to calculate
;         The nth value of the Fibonacci Sequence
;
;Code:
(define recursive-call-count-fib
  (lambda (n)
    (if (= n 0)
        0
        (if (= n 1)
            0
            (+ 2 (recursive-call-count-fib(- n 1))
               (recursive-call-count-fib(- n 2)))
            ))
    )
  )
;Test cases:
(recursive-call-count-fib 1)
(recursive-call-count-fib 3)
(recursive-call-count-fib 6)
(map recursive-call-count-fib '(0 1 2 3 4 5 6))
