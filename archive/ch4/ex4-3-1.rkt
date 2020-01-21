;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-3-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; pass
(cond
  [(< n 10) 20]
  [(> n 20) 0]
  [else 1]
)
;; error
(cond
  [(< n 10) 20]
  [(and (> n 20) (<= n 30))] ;; return value is undefined
  [else 1]
)

(cond
  [(< n 10) 20]
  [* 10 n] ;; not conditional expression
  [else 555]
)