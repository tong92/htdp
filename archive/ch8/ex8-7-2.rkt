;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-7-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct point (x y z))

(make-point 1 2 3)
;; (point 1 2 3)

(make-point (make-point 1 2 3) 4 5)
;; (point (point 1 2 3) 4 5)

(make-point (+ 1 2) 3 4)
;; (point 3 3 4)