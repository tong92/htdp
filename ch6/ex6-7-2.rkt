;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-7-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define HEAD (make-posn 150 70))
(define BODY 80)
(define ARM 100)
(define LEG 200)

(define (draw-hanger)
  (and
   (draw-solid-line (make-posn 0 10) (make-posn 150 10))
   (draw-solid-line (make-posn 150 10) (make-posn 150 50))
   )
)

;; draw-next-part: symbol -> bool
(define (draw-next-part part)
  (cond
    [(symbol=? part 'right-leg) (draw-leg 'right)]
    [(symbol=? part 'left-leg) (draw-leg 'left)]
    [(symbol=? part 'right-arm) (draw-arm 'right)]
    [(symbol=? part 'left-arm) (draw-arm 'left)]
    [(symbol=? part 'body) (draw-body)]
    [(symbol=? part 'head) (draw-head)]
    [(symbol=? part 'noose) (draw-noose)]
  )
)

;; draw-leg: symbol -> bool
(define (draw-leg part)
  (cond
    [(symbol=? part 'right) (draw-solid-line (make-posn 150 LEG) (make-posn 290 (+ LEG 30)))]
    [(symbol=? part 'left) (draw-solid-line (make-posn 150 LEG) (make-posn 10 (+ LEG 30)))]
  )
)

;; draw-arm: symbol -> bool
(define (draw-arm part)
  (cond
    [(symbol=? part 'right) (draw-solid-line (make-posn 150 ARM) (make-posn 250 (- ARM 20)))]
    [(symbol=? part 'left) (draw-solid-line (make-posn 150 ARM) (make-posn 50 (- ARM 20)))]
  )
)

;; draw-body: -> bool
(define (draw-body)
  (draw-solid-line (make-posn 150 BODY) (make-posn 150 LEG))
)

;; draw-head: -> bool
(define (draw-head)
  (draw-circle HEAD 10 'black)
)

;; draw-noose: -> bool
(define (draw-noose)
  (draw-circle (make-posn 150 65) 15 'red)
)

;; word: a b c
(define-struct word (a b c))

(start 300 300)

(draw-hanger)
(draw-next-part 'head)
(draw-next-part 'body)
(draw-next-part 'right-leg)
(draw-next-part 'right-arm)
(draw-next-part 'left-leg)
(draw-next-part 'left-arm)
(draw-next-part 'noose)
