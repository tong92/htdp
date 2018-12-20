;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-4-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; interest number -> number
(define (interest amount)
  (cond
    [(<= amount 1000) (* amount 0.04)]
    [(<= amount 5000) (* amount 0.045)]
    [(> amount 5000) (* amount 0.05)]
  )
)

(= (interest 100) 4)
(= (interest 1000) 40)
(= (interest 3000) 135)
(= (interest 5000) 225)
(= (interest 10000) 500)