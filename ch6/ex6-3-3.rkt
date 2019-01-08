;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-3-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct flight (name acc maximum range))

(define (within-range target distance)
  (if
   (< (flight-range target) distance) false
   true
  )
)

(define d (make-flight 'Dorazi 300 1000 60000))
(define a (make-flight 'Apache 20 300 100000))
(define c (make-flight 'Cobrea 30 400 50000))

(define distance 70000)

(within-range d distance) ; false
(within-range a distance) ; true
(within-range c distance) ; false

(define (reduce-range target)
  (make-flight
   (flight-name target)
   (flight-acc target)
   (flight-maximum target)
   (* (flight-range target) 0.8)
  )
)

(reduce-range d) ; (make-flight 'Dorazi 300 1000 48000)
(reduce-range a) ; (make-flight 'Apache 20 300 80000)
(reduce-range c) ; (make-flight 'Cobrea 30 400 40000)