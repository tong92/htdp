;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-3-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (contains-doll? l)
  (cond
    [(empty? l) false]
    [(symbol=? 'doll (first l)) true]
    [else (contains-doll? (rest l))]
  )
)

(contains-doll? empty)
(contains-doll? (cons 'ball empty))
(contains-doll? (cons 'arrow (cons 'doll empty)))
(contains-doll? (cons 'bow (cons 'arrow (cons 'ball empty))))
