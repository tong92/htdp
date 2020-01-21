;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-6) (read-case-sensitive #t) (teachpacks ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
(define (delta xs ys)
  (- (sum ys) (sum xs))
)

(define (sum xs)
  (cond
    [(empty? xs) 0]
    [else (+ (first xs) (sum (rest xs)))]
  )
)

(delta '(1 2 3) '(2 3 4))

(delta '(2 4 3) '(2 3 4))

(delta '(9 2 3) '(2 3 4))