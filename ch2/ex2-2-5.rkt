;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex2-2-5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (ex2-2-5-1 n)
  (+ (* n n) 10)
)

(define (ex2-2-5-2 n)
  (+ (* (/ 1 2) (* n n)) 20)
)

(define (ex2-2-5-3 n)
  (- 2 (/ 1 n))
)
