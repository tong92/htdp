;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex5-1-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp")) #f)))
; check-guess3 number -> number -> number -> number -> String
; 0 < number < 9
(define (check-guess3 a b c target)
  (cond
    [(= (sum a b c) target) `Perfect]
    [(< (sum a b c) target) `TooSmall]
    [else `TooLarge]
  )
)

(define (sum a b c)
  (+ (* c 100) (* b 10) a)
)

(guess-with-gui-3 check-guess3)