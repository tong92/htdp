;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (how-many-symbols xs)
  (cond
    [(empty? xs) 0]
    [else (+ 1 (how-many-symbols (rest xs)))]
  )
)

(define (how-many-numbers xs)
  (how-many-symbols xs)
)

(how-many-symbols '('a 'b 'c 'd))
(how-many-numbers '(1 2 3 4 5.5 0 -1))

;; two function is same(not type check)