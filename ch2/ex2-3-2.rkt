;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex2-3-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (sum-coins penny nickel dime quarter)
  (+ penny (sum-nickel nickel) (sum-dime dime) (sum-quarter quarter))
)

(define (sum-nickel nickel)
  (* 5 nickel)
)

(define (sum-dime dime)
  (* 10 dime)
)

(define (sum-quarter quarter)
  (* 25 quarter)
)

(= (sum-coins 1 2 3 4) 141)
(= (sum-coins 4 3 2 1) 64)