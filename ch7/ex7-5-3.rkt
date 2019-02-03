;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-5-3) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define-struct vec (x y))

(define (check-make-vec x y)
  (cond
    [(and (number? x) (> x 0) (number? y) (> y 0)) (make-vec x y)]
    [else (error "number expected x and y")]
  )
)

(check-make-vec 1 2)
(check-make-vec 1 -2)