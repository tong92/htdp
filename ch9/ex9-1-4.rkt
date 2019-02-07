;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-1-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; contains-2-doll? (sym sym) -> bool
(define (contains-2-doll l)
  (cond
    [(symbol=? (first l) 'doll) true]
    [(symbol=? (first (rest l)) 'doll) true]
    [else false]
  )
)

(contains-2-doll (list 'd 'no))

(contains-2-doll (list 'doll 'no))

(contains-2-doll (list 'd 'doll))