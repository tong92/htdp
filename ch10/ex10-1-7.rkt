;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-7) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (recall ty xs)
  (cond
    [(empty? xs) empty]
    [(symbol=? (first xs) ty) (recall ty (rest xs))]
    [else (cons (first xs) (recall ty (rest xs)))]
  )
)

(recall 'doll (list 'robot 'doll 'dress))