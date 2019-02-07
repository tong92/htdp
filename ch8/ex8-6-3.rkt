;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-6-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define PRICE 5)
(= PRICE 5)

(define SALES-TAX (* .08 PRICE))
(= SALES-TAX .4)

(define TOTAL (+ PRICE SALES-TAX))
(= TOTAL 5.4)