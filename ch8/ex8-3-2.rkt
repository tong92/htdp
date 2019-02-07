;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-3-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (f x y)
  (+ (* 3 x) (* y y))
)

;; 1
(+ (f 1 2) (f 2 1))

(+ (+ (* 3 1) (* 2 2)) (+ (* 3 2) (* 1 1)))

(+ (+ 3 4) (+ 6 1))

(+ 7 7)

;; 2
(f 1 (* 2 3))

(f 1 6)

(+ (* 3 1) (* 6 6))

(+ 3 36)

;; 3
(f (f 1 (* 2 3)) 19)

(f (f 1 6) 19)
