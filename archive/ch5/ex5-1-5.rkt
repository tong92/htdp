;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex5-1-5) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp")) #f)))
; check-color String -> String -> String -> String -> String
(define (check-color x y a b)
  (cond
    [(and (symbol=? a x) (symbol=? b y)) 'Perfect]
    [(or (symbol=? a x) (symbol=? b y)) 'OneColorAtCorrentPosition]
    [(or (symbol=? b x) (symbol=? a y)) 'OneColorOccurs]
    [else 'NothingCorrect]
  )
)

(master check-color)
