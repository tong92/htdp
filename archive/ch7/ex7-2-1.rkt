;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex7-2-1) (read-case-sensitive #t) (teachpacks ((lib "hangman.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "hangman.rkt" "teachpack" "htdp")) #f)))
(define-struct spider (legs area))
(define-struct elephant (area))
(define-struct monkey (iq area))
;; Animal
;; 1. spider
;; legs: 남은 다리, area: 이동 시 필요한 공간
;; 2. elephant
;; area: 이동 시 필요한 공간
;; 3. monkey
;; iq: 지능, area: 이동 시 필요한 공간

;; fits: animal area-> bool
;; 동물이 우리의 공간에 맞는지 확인

;; template

;;(define (f animal area)
;;  (cond
;;    [(spider? animal)
;;     ... (spider-legs animal) ... (spider-area animal) ...)]
;;[(elephant animal)
;;     ... (elephant-area animal) ...)]
;;[(monkey animal)
;;     ... (monkey-iq animal) ... (monkey-area animal) ...)]
;;  )
;;)

(define (fits? animal area)
  (cond
    [(spider? animal) (>= area(spider-area animal))]
    [(elephant? animal) (>= area (elephant-area animal))]
    [(monkey? animal) (>= area (monkey-area animal))]
  )
)

(define spi (make-spider 5 5))
(define ele (make-elephant 100))
(define mon (make-monkey 80 60))

(fits? spi 10)
(fits? ele 10)
(fits? ele 150)
(fits? mon 50)