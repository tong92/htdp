;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex3-1-4) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
;; get-audience : number -> number
;; 티켓가격에 따른 관객수
(define (get-audience ticket)
  (+ 120 (* 150 (- 5.0 ticket)))
)

;; get-cost : number -> number
;; 관객수에 따른 비용
(define (get-cost ticket)
  (* 1.5 (get-audience ticket))
)

;; get-income : number -> number
;; 티켓 가격에 따른 수입
(define (get-income ticket)
  (* ticket (get-audience ticket))
)

;; get-profit : number -> number
;; 티켓 가격에 따른 이익
(define (get-profit ticket)
  (- (get-income ticket) (get-cost ticket))
)

(define (profit price)
  (- (* (+ 120 (* 150 (- 5 price))) price) (* 1.5 (+ 120 (* 150 (- 5 price)))))
)

(get-profit 3) ;; 630
(get-profit 4) ;; 675
(get-profit 5) ;; 420

(= (get-profit 3) (profit 3))
(= (get-profit 4) (profit 4))
(= (get-profit 5) (profit 5))