;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-2-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; -3 < x < 0
(define (in-interval-1? x)
  (and (< -3 x) (< x 0))
)

;; x < 1 or 2 < x
(define (in-interval-2? x)
  (or (< x 1) (> x 2))
)


;; !(1 <= x <= 5) -> x < 1 or 5 < x
(define (in-interval-3? x)
  (not (and (<= 1 x) (<= x 5)))
)

;; x = -2
;; true
;; true
;; true