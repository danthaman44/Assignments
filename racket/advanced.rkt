#lang racket

;; The nth element of the Fibonacci sequence. 0, 1, 1, 2, 3, 5...
(define (fibonacci number)
  (define (fibo-rec number n i)
    (if (<= number 0)
        i   
        (fibo-rec (- number 1) (+ n i) n)))
  (fibo-rec number 1 0))

;; Quick sort
(define (qsort l)
  (cond
   [(empty? l) empty]
   [else (append (quick-sort (smaller-than (first l) (rest l)))
                 (list (first l))
                 (quick-sort (larger-than (first l) (rest l))))]))

(define (smaller-than x l)
  (filter (lambda (y) (< y x)) l))
(define (larger-than x l)
  (filter (lambda (y) (>= y x)) l))

;; Check if n is prime
(define (prime? n) nil)

;; Find maximum element of list using > operator
(define (maximum lst) nil)

;; Find the product of the digits of a non-negative integer n
(define (product-of-digits n) nil)

;; Find the greatest number which is the product of the digits of a prime less than n
(define (greatest-prime-digit-product n) nil)

(provide
 fibonacci
 qsort
 prime?
 maximum
 product-of-digits
 greatest-prime-digit-product)
