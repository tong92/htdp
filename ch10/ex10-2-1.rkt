;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-2-1) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; ir: (symbol number)
(define-struct ir (name price))

(define (contains-doll? irs)
  (cond
    [(empty? irs) false]
    [(contains? (first irs) 'doll) true]
    [else (contains-doll? (rest irs))]
  )
)

(define (contains? ir sym)
  (symbol=? (ir-name ir) sym)
)

(contains-doll? (list (make-ir 'robot 1) (make-ir 'doll 3) (make-ir 'dart 100)))

(contains-doll? (list (make-ir 'robot 1) (make-ir 'ddoll 3) (make-ir 'dart 100)))