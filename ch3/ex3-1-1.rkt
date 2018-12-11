;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex3-1-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; get-audience : number -> number
;; 티켓가격에 따른 관객수
(define (get-audience ticket)
  (+ 120 (* 150 (- 5.0 ticket)))
)

(get-audience 3) ;; 420
(get-audience 4) ;; 270
(get-audience 5) ;; 120