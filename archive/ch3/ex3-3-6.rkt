;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex3-3-6) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; Fahrenheit->Celsius : number -> number
(define (Fahrenheit->Celsius temperature)
  ( * (/ 5 9) (- temperature 32))
)

;; Celsius->Fahrenheit : number -> number
(define (Celsius->Fahrenheit temperature)
  (+ 32 (* (/ 9 5) temperature))
)

;; I : number -> number
(define (I temperature)
  (Celsius->Fahrenheit (Fahrenheit->Celsius temperature))
)

(convert-gui Fahrenheit->Celsius)
(convert-gui Celsius->Fahrenheit)
(convert-gui I)