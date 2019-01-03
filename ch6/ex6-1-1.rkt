;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-1-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")) #f)))
;; distance-to-0 posn -> number
(define (distance-to-0 input)
  (sqrt
    (+
      (sqr (posn-x input))
      (sqr (posn-y input))
     )
  )
)

(distance-to-0 (make-posn 3 4)) ; 5
(distance-to-0 (make-posn (* 2 3) (* 2 4))) ; 10
(distance-to-0 (make-posn 12 (- 6 1))) ; 13