;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex3-3-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define PI 3.14159)

;; area-circle : number -> number
(define (area-circle r)
  (* PI r r)
)

;; line-circle : number -> number
(define (line-circle r)
  (* 2 PI r)
)

;; area-square : number -> number -> number
(define (area-square w h)
  (* w h)
)

;; area-cylinder : number -> number -> number
(define (area-cylinder r h)
  (+ (* 2 (area-circle r)) (area-square h (line-circle r)))
)