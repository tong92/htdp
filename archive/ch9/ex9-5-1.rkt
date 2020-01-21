;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (sum xs)
  (cond
    [(empty? xs) 0]
    [else (+ (first xs) (sum (rest xs)))]
  )
)

(sum empty)
(sum (cons 1.00 empty))
(sum (cons 17.05 (cons 1.22 (cons 2.59 empty))))

(sum (cons 2.59 empty))
(sum (cons 1.22 (cons 2.59 empty)))