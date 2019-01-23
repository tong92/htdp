;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-1-1) (read-case-sensitive #t) (teachpacks ((lib "hangman.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "hangman.rkt" "teachpack" "htdp")) #f)))
(define-struct star (last first dob ssn))

(number? (make-posn 2 3)) ;false
(number? (+ 12 10)) ;true
(posn? 23) ;false
(posn? (make-posn 23 3)) ;true
(star? (make-posn 23 3)) ;false