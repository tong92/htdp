;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-4-2) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
;; circle :: center-point: posn, radius: number, color: symbol
(define-struct circle (p r c))

;; rectangle :: left-top-point: posn, width: number, height: number, color: symbol
(define-struct rectangle (p w h c))

;; fun-for-shape shape -> ???
(define (fun-for-shape a-shape)
  (cond
  [(circle? a-shape) (fun-for-circle a-shape)]
  [(rectangle? a-shape) (fun-for-rectangle a-shape)]
  )
)

;; fun-for-circle circle -> ???
(define (fun-for-circle circle) ... )

;; fun-for-rect rectangle -> ???
(define (fun-for-rectangle rectangle) ...)

;; draw-shape shape -> bool
(define (draw-shape a-shape)
  (cond
    [(circle? a-shape) (draw-a-circle a-shape)]
    [(rectangle? a-shape) (draw-a-rectangle a-shape)]
  )
)

;; draw-a-circle circle -> bool
(define (draw-a-circle circle)
  (draw-circle
   (circle-p circle)
   (circle-r circle)
   (circle-c circle)
   )
)

;; draw-a-rectangle rectangle -> bool
(define (draw-a-rectangle rectangle)
  (draw-solid-rect
   (rectangle-p rectangle)
   (rectangle-w rectangle)
   (rectangle-h rectangle)
   (rectangle-c rectangle)
   )
)

