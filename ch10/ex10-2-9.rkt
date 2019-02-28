;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-2-9) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct ir (name amount))


(define (substitude new old xs)
  (cond
    [(empty? xs) empty]
    [(symbol=? (ir-name (first xs)) old) (cons (make-ir new (ir-amount (first xs))) (substitude new old (rest xs)))]
    [else (cons (first xs) (substitude new old (rest xs)))]
  )
)

(substitude
 'DRAGON
 'a
 (list
  (make-ir 'a .5)
  (make-ir 'b .1)
  (make-ir 'c 1.1)
  (make-ir 'D .7)
  (make-ir 'E 1.5)
  (make-ir 'f 2.5)
  (make-ir 'g 3.5)
  )
)