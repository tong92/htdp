;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex5-1-4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp")) #f)))
; what-kind number -> number -> number -> String
(define (what-kind a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (* b b) (* 4 a c)) 'two]
    [(= (* b b) (* 4 a c)) 'one]
    [else 'none]
  )
)