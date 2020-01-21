;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-6-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; circle :: center-point: posn, radius: number, color: symbol
(define-struct circle (p r c))

;; fun-for-circle circle -> ???
(define (fun-for-circle circle) ... )

;; draw-a-circle circle -> bool
(define (draw-a-circle circle)
  (draw-circle
   (circle-p circle)
   (circle-r circle)
   (circle-c circle)
   )
)

(start 300 300)

(define a (make-circle (make-posn 50 50) 50 'red))

(draw-a-circle a)