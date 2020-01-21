;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (dollar-store? xs val)
  (cond
    [(empty? xs) true]
    [(> (first xs) val) false]
    [else (dollar-store? (rest xs) val)]
  )
)

(dollar-store? empty 1)
(dollar-store? '(.75 1.95 .25) 1)
(dollar-store? '(.75 .95 .25) 1)
(dollar-store? '(.75 1.95 .25) 2)