;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-1-2) (read-case-sensitive #t) (teachpacks ((lib "hangman.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "hangman.rkt" "teachpack" "htdp")) #f)))
(define-struct square (nw length))
(define-struct circle (cetner radius))

(define a (make-square (make-posn 20 20) 3))
(define b (make-square (make-posn 2 20) 3))
(define c (make-circle (make-posn 10 99) 1))

(define (perimeter a-shape)
  (cond
    [(square? a-shape) (* 4 (square-length a-shape))]
    [(circle? a-shape) (* 2 pi (circle-radius a-shape))]
  )
)

(perimeter a)
(perimeter b)
(perimeter c)