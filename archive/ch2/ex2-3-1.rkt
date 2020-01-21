;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex2-3-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define (tax income)
  (* income 0.15)
)

(define (netpay hour)
  (* hour 12)
)

(= (tax 1) 0.15)
(= (tax 100) 15)

(= (netpay 1) 12)
(= (netpay 10) 120)