;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-2) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (hours->wages xs)
  (cond
    [(empty? xs) empty]
    [else (cons (wage (first xs)) (hours->wages (rest xs)))]
  )
)

(define (wage x)
  (cond
    [(>= x 100) (error "too many hours")]
    [else (* 14 x)]
  )
)


(hours->wages empty)

(hours->wages '(10))

(hours->wages '(100))

(hours->wages (cons 10 (cons 20 empty)))



