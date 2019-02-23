;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-3-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (contains? l s)
  (cond
    [(empty? l) false]
    [(symbol=? s (first l)) true]
    [else (contains? (rest l) s)]
  )
)

(contains? empty 'doll)
(contains? (cons 'ball empty) 'ball)
(contains? (cons 'arrow (cons 'doll empty)) 'ball)
(contains? (cons 'bow (cons 'arrow (cons 'ball empty))) 'ball)
