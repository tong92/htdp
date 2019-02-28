;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-3) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (convertFC xs)
  (cond
    [(empty? xs) empty]
    [else (cons (calFC (first xs)) (convertFC (rest xs)))]
  )
)

(define (calFC x)
  (/ (* 5 (- x 32)) 9)
)

(convertFC `())

(convertFC '(100 32))