;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-1-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; add-up-3 :: (number number number) -> number
(define (add-up-3 l)
  (cond
    [(empty? l) 0]
    [else (+ (first l) (add-up-3 (rest l)))]
  )
)

(add-up-3 '(1 2 3))

(add-up-3 '(3 3 3))

;; distance-to-0-for-3 :: (number number number) -> number
(define (distance-to-0-for-3 l)
  (sqrt (inner-f l))
)

(define (inner-f l)
  (cond
    [(empty? l) 0]
    [else (+ (sqr (first l)) (inner-f (rest l)))]
  )
)

(distance-to-0-for-3 '(1 1 1))

(distance-to-0-for-3 '(2 2 2))

(distance-to-0-for-3 '(1 2 3))

;; should check argument length 3!