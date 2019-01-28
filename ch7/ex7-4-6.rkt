;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-4-6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; translate-shape shape -> ???
(define (translate-shape-shape a-shape)
  (cond
  [(circle? a-shape) (translate-circle a-shape)]
  [(rectangle? a-shape) (translate-rectangle a-shape)]
  )
)

;; translate-circle circle number-> circle
(define (translate-circle circle delta)
  (make-circle
   (make-posn (+ (posn-x (circle-p circle)) delta) (posn-y (circle-p circle)))
   (circle-r circle)
   (circle-c circle)
   )
)

;; translate-rectangle rectangle -> rectangle
(define (translate-rectangle rectangle delta)
  (make-rectangle
   (make-posn (+ (posn-x (rectangle-p rectangle)) delta) (posn-y (rectangle-p rectangle)))
   (rectangle-w rectangle)
   (rectangle-h rectangle)
   (rectangle-c rectangle)
   )
)

;; clear-shape shape -> ???
(define (clear-shape a-shape)
  (cond
  [(circle? a-shape) (clear-a-circle a-shape)]
  [(rectangle? a-shape) (clear-a-rectangle a-shape)]
  )
)

;; clear-a-circle circle -> bool
(define (clear-a-circle circle)
  (clear-circle
   (circle-p circle)
   (circle-r circle)
   (circle-c circle)
   )
)

;; clear-a-rectangle rectangle -> bool
(define (clear-a-rectangle rectangle)
  (clear-solid-rect
   (rectangle-p rectangle)
   (rectangle-w rectangle)
   (rectangle-h rectangle)
   (rectangle-c rectangle)
   )
)

;; draw-and-clear-shape shape -> ???
(define (draw-and-clear-shape a-shape)
  (cond
  [(circle? a-shape) (draw-and-clear-circle a-shape)]
  [(rectangle? a-shape) (draw-and-clear-rectangle a-shape)]
  )
)

;; draw-and-clear-circle circle -> bool
(define (draw-and-clear-circle circle)
  (and
   (draw-a-circle circle)
   (sleep-for-a-while 1)
   (clear-a-circle circle)
   )
)

;; draw-and-clear-rectangle rectangle -> bool
(define (draw-and-clear-rectangle rectangle)
  (and
   (draw-a-rectangle rectangle)
   (sleep-for-a-while 1)
   (clear-a-rectangle rectangle)
   )
)

;; move-shape shape -> ???
(define (move-shape a-shape delta)
  (cond
  [(circle? a-shape) (move-circle a-shape delta)]
  [(rectangle? a-shape) (move-rectangle a-shape delta)]
  )
)

;; move-circle circle number -> circle
(define (move-circle circle delta)
  (cond
    [(draw-and-clear-circle circle) (translate-circle circle delta)]
    [else circle]
  )
)

;; move-rectangle rectangle number -> rectangle
(define (move-rectangle rectangle delta)
  (cond
    [(draw-and-clear-rectangle rectangle) (translate-rectangle rectangle delta)]
    [else rectangle]
  )
)

(start 300 300)

(define rec (make-rectangle (make-posn 30 30) 40 40 'blue))
(define cir (make-circle (make-posn 270 270) 30 'green))

(draw-shape (move-shape (move-shape (move-shape (move-shape rec 10) 10) 10) 10))
(draw-shape (move-shape (move-shape (move-shape (move-shape cir -10) -10) -10) -10))