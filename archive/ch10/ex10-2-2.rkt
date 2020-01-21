;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-2-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; ir: (symbol number str)
(define-struct ir (name price text))

(define (show-picture name irs)
  (cond
    [(empty? irs) empty]
    [(contains? (first irs) name) (cons (ir-text (first irs)) (show-picture name (rest irs)))]
    [else (cons false (show-picture name (rest irs)))]
  )
)

(define (contains? ir sym)
  (symbol=? (ir-name ir) sym)
)

(show-picture 'doll (list (make-ir 'robot 1 "I am a robot") (make-ir 'doll 3 "Moon") (make-ir 'dart 100 "Dart Kinght")))

(show-picture 'doll (list (make-ir 'robot 1 "I am a robot") (make-ir 'ddoll 3 "Moon") (make-ir 'dart 100 "Dart Kinght")))