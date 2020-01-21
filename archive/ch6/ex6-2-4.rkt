;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-2-4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; Constants
(define WIDTH 50)
(define HEIGHT 160)
(define BULB-RADIUS 20)
(define BULB-DISTANCE 10)

;; position
(define X-BULBS (quotient WIDTH 2))
(define Y-RED (+ BULB-DISTANCE BULB-RADIUS))
(define Y-YELLOW (+ Y-RED BULB-DISTANCE (* 2 BULB-RADIUS)))
(define Y-GREEN (+ Y-YELLOW BULB-DISTANCE (* 2 BULB-RADIUS)))

;; Lightin RED Only
(start WIDTH HEIGHT)
(draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
(draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
(draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)

;; clear-bulb Color -> bool
(define (clear-bulb color)
  (cond
    [(symbol=? color 'red)
     (and
      (clear-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
      (draw-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
      )
     ]
    [(symbol=? color 'yellow)
     (and
      (clear-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
      (draw-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
      )
     ]
    [(symbol=? color 'green)
     (and
      (clear-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
      (draw-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
      )
     ] 
  )
)

;; draw-bulb
(define (draw-bulb color)
  (cond
    [(symbol=? color 'red)
     (and
      (clear-circle (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
      (draw-solid-disk (make-posn X-BULBS Y-RED) BULB-RADIUS 'red)
      )
     ]
    [(symbol=? color 'yellow)
     (and
      (clear-circle (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
      (draw-solid-disk (make-posn X-BULBS Y-YELLOW) BULB-RADIUS 'yellow)
      )
     ]
    [(symbol=? color 'green)
     (and
      (clear-circle (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
      (draw-solid-disk (make-posn X-BULBS Y-GREEN) BULB-RADIUS 'green)
      )
     ]
  )
)

(define (switch prev next)
  (and
   (clear-bulb prev)
   (draw-bulb next)
   )
)
