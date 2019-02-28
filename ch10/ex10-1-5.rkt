;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-5) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (eliminate-exp ua lotp)
  (cond
    [(empty? lotp) empty]
    [(> (first lotp) ua) (eliminate-exp ua (rest lotp))]
    [else (cons (first lotp) (eliminate-exp ua (rest lotp)))]
  )
)

(eliminate-exp 1.0 '(2.95 .95 1 5))