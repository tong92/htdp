;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-8) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define RANGE 300)

(define (draw-circles p rs color)
  (cond
    [(empty? rs) true]
    [(check-radius p (first rs)) (and (draw-circles p (rest rs) color) (draw-circle p (first rs) color))]
    [else empty]
  )
)


(define (check-radius p r)
  (and
    (and (> (- (posn-x p) r) 0) (< (+ (posn-x p) r) RANGE))
    (and (> (- (posn-y p) r) 0) (< (+ (posn-y p) r) RANGE))
  )
)

(start RANGE RANGE)

(draw-circles (make-posn 150 150) '(10 30 100) 'red)
(draw-circles (make-posn 10 10) '(1 3 5 7 9) 'blue)
(draw-circles (make-posn 10 150) '(10 30 100) 'yellow)
(draw-circles (make-posn 150 10) '(10 30 100) 'green)