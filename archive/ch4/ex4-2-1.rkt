;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-2-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; is-e3-to-i7? number -> boolean
;; exclude 3
;; include 7
(define (is-e3-to-i7? n)
  (and (> n 3) (<= n 7))
)

;; is-i3-to-i7? number -> boolean
;; include 3
;; include 7
(define (is-i3-to-i7? n)
  (and (>= n 3) (<= n 7))
)

;; is-i3-to-e9? number -> boolean
;; include 3
;; exclude 9
(define (is-i3-to-e9? n)
  (and (>= n 3) (< n 9))
)


;; is-e1-to-e3-or-e9-to-e11? number -> boolean
;; exclude 1 to exclude 3
;; exclude 9 to exclude 11
(define (is-e1-to-e3-or-e9-to-e11? n)
  (or
   (and (> n 1) (< n 3))
   (and (> n 9) (< n 11))
  )
)

;; is-le1-or-ge3? number -> boolean
;; lesser and equal than 1
;; greater and equal than 3
(define (is-le1-or-ge3? n)
  (or (<= n 1) (>= n 3))
)