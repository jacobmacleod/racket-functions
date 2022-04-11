#lang racket
;The function fib uses recursion to calculate the
;Fibonacci sequence for a given value n.
;
;Contract: fib: number -> Fibonacci sequence of number
;Purpose: fib takes a number, n, and calculates the nth value of
;         the Fibonacci Sequence.
;Code:
(define fib
  (lambda (n)
    (if (= n 0)
        0
        (if (= n 1)
            1
            (+ (fib (- n 1)) (fib (- n 2)))))
    )
  )
;Test cases:
(fib 0)
(fib 1)
(fib 9)
