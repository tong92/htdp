;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-2-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; (define (f x) x)
;; (keyword (var var) var)

;; (define (f x) y)
;; (keyword (var var) exp)

;; (define (f x y) 3)
;; (keyword (var var var) con)

;; (define (f 'x) x)
;; expected var, not symbol

;; (define (f x y z) (x))
;; one var is not wrapping parenthesis

;; (define (f) 10)
(define (f) 10)
(f)