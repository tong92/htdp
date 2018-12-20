;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-4-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; tax number -> number
(define (tax income)
  (cond
    [(<= income 240) 0]
    [(<= income 480) (* income 0.15)]
    [(> income 480) (* income 0.28)]
  )
)

;; income number -> number
(define (income t)
  (* t 12)
)

;; netpat number -> number
(define (netpay t)
  (- (income t) (tax (income t)))
)
