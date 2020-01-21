;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-4) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (check-tem-range xs low high)
  (cond
    [(empty? xs) true]
    [(or (< (first xs) low) (> (first xs) high)) false]
    [else (check-tem-range (rest xs) low high)]
  )
)

(check-tem-range '(1 2 3 4 5 6 7 8 9 10) 0 11)

(check-tem-range '(1 2 3 4 5 6 7 8 9 10) 2 11)

(check-tem-range '(1 2 3 4 5 6 7 8 9 10) 0 9)