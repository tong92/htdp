;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-9) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; dollor(s)
;; 'and
;; cent(s)

(define (controller g)
  (cond
    [(= g 0) empty]
    [(< g 10) (list g 'cent)]
    [(< g 100) (list g 'cents)]
    [(< g 1000) (cons (quotient g 100) (cons 'dollar (controller (remainder g 100))))]
    [else (cons (quotient g 100) (cons 'dollars (controller (remainder g 100))))]
  )
)

(controller 101)
(controller 103)
(controller 1001)
(controller 1003)
