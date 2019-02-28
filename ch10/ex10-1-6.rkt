;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-6) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (substitude new old xs)
  (cond
    [(empty? xs) empty]
    [(symbol=? (first xs) old) (cons new (substitude new old (rest xs)))]
    [else (cons (first xs) (substitude new old (rest xs)))]
  )
)

(substitude 'Barbie 'doll (list 'robot 'doll 'dress))