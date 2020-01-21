;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-2-2) (read-case-sensitive #t) (teachpacks ((lib "hangman.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "hangman.rkt" "teachpack" "htdp")) #f)))
(define-struct bus (price passengers size no))
(define-struct limousine (price no))
(define-struct car (price speed no))
(define-struct subway (price no))
;; Transportation
;; 1. bus
;; price: 가격, passengers: 승객 정원, size: 크기, no: 번호
;; 2. limousine
;; price: 가격, no: 번호
;; 3. car
;; price: 가격, speed: 속력, no: 번호
;; 4. subway
;; price: 가격, no: 번호

;;(define (f transportation)
;;  (cond
;;    [(bus? transportation) ...]
;;    [(limousine? transportation) ...]
;;    [(car? transportation) ...]
;;    [(subway? transportation) ...]
;;  )
;;)
