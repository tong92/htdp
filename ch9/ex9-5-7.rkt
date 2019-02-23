;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex9-5-7) (read-case-sensitive #t) (teachpacks ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "guess-gui.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp")) #f)))
(define (average-price xs)
  (cond
    [(empty? xs) (error "input list is empty")]
    [else (/ (sum-price xs) (count xs))]
  )
)

(define (count xs)
  (cond
    [(empty? xs) 0]
    [else (+ 1 (count (rest xs)))]
  )
)

(define (sum-price xs)
  (cond
    [(empty? xs) 0]
    [else (+ (first xs) (sum-price (rest xs)))]
  )
)

(average-price '(100 100 100))

(average-price '(200 400 600))
(average-price '(300 300 300))
(average-price '(400 100))
(average-price empty)