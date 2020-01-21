;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-2-7) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct ir (name price))

(define (raise-prices p xs)
  (cond
    [(empty? xs) empty]
    [else (cons (calc p (first xs)) (raise-prices p (rest xs)))]
  )
)

(define (calc p x)
  (make-ir (ir-name x) (* p (ir-price x)))
)

(raise-prices
 1.05
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