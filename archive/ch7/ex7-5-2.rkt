;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-5-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (check-profit value)
  (cond
    [(number? value) (profit value)]
    [else (error "number expected")]
  )
)

(define (profit ticket-price)
  true
)


(define (check-between value)
  (cond
    [(number? value) (is-between-5-6? value)]
    [else (error "number expected")]
  )
)

(define (is-between-5-6? num)
  (and (> num 5) (< num 6))
)

(define (check-symbol value)
  (cond
    [(symbol? value) (reply value)]
    [else (error "symbol expected")]
  )
)

(define (reply n) true)

(define (check-posn value)
  (cond
    [(and (struct? value) (posn? value)) (distance-to-0 value)]
    [else (error "posn expected")]
  )
)

(define (distance-to-0 x) true)

(define (check-shape value)
  (cond
    [(and (struct? value) (or (circle? value) (square? value))) (perimeter value)]
    [else (error "shape expected")]
  )
)

(define-struct circle (x))

(define-struct square (x))

(define (perimeter shape) true)

(check-profit 3)
; (check-profit 'sym)
(check-symbol 'test)
(check-posn (make-posn 2 2))
(check-shape (make-circle 1))
(check-shape (make-square 2))