;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-1-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define x 4)
(define y 2)
(define z (/ 7 2))

(> x 3) ; true
(> y 3) ; false
(> z 3) ; true

(and (> 4 x) (> x 3)) ; false
(and (> 4 y) (> y 3)) ; false
(and (> 4 z) (> z 3)) ; true

(= (* x x) x) ; false
(= (* y y) y) ; false
(= (* z z) z) ; false