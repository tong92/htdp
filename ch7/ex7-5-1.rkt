;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-5-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
(define (checked-area-of value)
  (cond
    [(and (number? value) (> value 0)) (area-of-disk value)]
    [else (error "number expected")]
  )
)

(define (area-of-disk r)
  (* 3.14 r r)
)


(checked-area-of 3)

;; (checked-area-of 'test)

;; (checked-area-of -3)
