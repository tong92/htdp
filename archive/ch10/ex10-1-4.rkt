;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-1-4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
(define (convert-euro xs)
  (cond
    [(empty? xs) empty]
    [else (cons (convert (first xs)) (convert-euro (rest xs)))]
  )
)

(define (convert x)
  (* x  1.22)
)

(convert-euro empty)

(convert-euro '(1 3 10))


(define (convert-euro-1 xs rate)
  (cond
    [(empty? xs) empty]
    [else (cons (convert-1 (first xs) rate) (convert-euro-1 (rest xs) rate))]
  )
)

(define (convert-1 x rate)
  (* x  rate)
)

(convert-euro-1 empty 0)
(convert-euro-1 '(1 3 10) 1.22)
(convert-euro-1 '(1 3 10) 10)
(convert-euro-1 '(1 3 10) 0.7)
