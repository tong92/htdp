;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-8) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (quadratic-roots a b c)
  (cond
    [(= a 0) 'degenerate]
    [(> (* b b) (* 4 a c)) (list (sol a b c 1) (sol a b c -1))]
    [(= (* b b) (* 4 a c)) (/ (- b) (* 2 a))]
    [else 'none]
  )
)

(define (sol a b c d)
  (/
   (-
    (*
     d
     (sqrt
      (- (* b b) (* 4 a c))
      )
     )
    b
    )
   (* 2 a)
   )
)

(quadratic-roots 1 0 -1)
(quadratic-roots 1 0 0)
(quadratic-roots 0 0 1)
