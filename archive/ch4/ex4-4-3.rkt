;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex4-4-3) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; pay-back number -> number
(define (pay-back amount)
  (cond
    [(<= amount 500) (rate amount)]
    [(<= amount 1500) (+ (rate amount) (pay-back 500))]
    [(<= amount 2500) (+ (rate amount) (pay-back 1500))]
    [else (+ (rate amount) (pay-back 2500))]
  )
)

;; rate number -> number
(define (rate amount)
  (cond
    [(<= amount 500) (* amount 0.0025)]
    [(<= amount 1500) (* (- amount 500) 0.005)]
    [(<= amount 2500) (* (- amount 1500) 0.0075)]
    [else (* (- amount 2500) 0.01)]
  )
)

(= (pay-back 400) 1.00)
(= (pay-back 1400) 5.75)

(pay-back 2000) ;; 10
(pay-back 2600) ;; 14.75