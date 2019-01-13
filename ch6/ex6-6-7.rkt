;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-6-7) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
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

;; in-circle? circle point -> bool
(define (in-circle? circle point)
  (<
   (point-distance (circle-p circle) point)
   (circle-r circle)
   )
)

;; point-distance point point -> number
(define (point-distance a b)
  (sqrt
    (+ (sqr (- (posn-x a) (posn-x b))) (sqr (- (posn-y a) (posn-y b))))
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

;; clear-a-circle circle -> bool
(define (clear-a-circle circle)
  (clear-circle
   (circle-p circle)
   (circle-r circle)
   (circle-c circle)
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

;; move-circle number circle -> circle
(define (move-circle delta circle)
  (cond
    [(draw-and-clear-circle circle) (translate-circle circle delta)]
    [else circle]
  )
)

;; rectangle :: left-top-point: posn, width: number, height: number, color: symbol
(define-struct rectangle (p w h c))

;; fun-for-rect rectangle -> ???
(define (fun-for-rect rectangle) ...)

(start 300 300)

(define a (make-circle (make-posn 50 50) 50 'red))

(draw-a-circle (move-circle 10 (move-circle 10 (move-circle 10 (move-circle 10 a)))))
