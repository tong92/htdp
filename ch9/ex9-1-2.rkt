;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-1-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define l
  (cons 10 (cons 20 (cons 5 empty)))
)

(rest l)
;; list
(first (rest l))
;; 20
(rest (rest l))
;; list
(first (rest (rest l)))
;; 5
(rest (rest (rest l)))
;; empty