;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-2-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; 4 * n + 2 = 62
(define (p1 n)
  (= (+ (* 4 n) 2) 62)
  
)
;; 2 * n^2 = 102
(define (p2 n)
  (= (* 2 n n) 102)
  
)
;; 4 * n^2 + 6 * n + 2 = 462
(define (p3 n)
  (= (+ (* 4 n n) (* 6 n) 2) 462)
)

(define x 10)
(p1 x)
(p2 x)
(p3 x) ;; true

(define y 12)
(p1 y)
(p2 y)
(p3 y)

(define z 14)
(p1 z)
(p2 z)
(p3 z)