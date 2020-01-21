;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-7-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct ball (x y speed-x speed-y))

;; 1
(number? (make-ball 1 2 3 4))
;; false

;; 2
(ball-speed-y (make-ball (+ 1 2) (+ 3 3) 2 3))
;; 3

;; 3
(ball-y (make-ball (+ 1 2) (+ 3 3) 2 3))
;; 6


;;
;; (number? (make-ball 1 3 4))
;; need 4 parameter
;; (ball-x (make-posn 1 2))
;; expects ball
;; (ball-speed-x 5)
;; expects ball