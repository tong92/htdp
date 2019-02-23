;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-5) (read-case-sensitive #t) (teachpacks ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
(define (convert xs)
  (cond
    [(empty? xs) 0]
    [else (+ (first xs) (* 10 (convert (rest xs))))]
  )
)

(convert `(1 2 3))
(convert '(3 2 1))


(define (check-guess-for-list xs target)
  (cond
    [(= (convert xs) target) `Perfect]
    [(< (convert xs) target) `TooSmall]
    [else `TooLarge]
  )
)

(guess-with-gui-list 5 check-guess-for-list)
