;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex10-2-4) (read-case-sensitive #t) (teachpacks ((lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "draw.rkt" "teachpack" "htdp")) #f)))
;; ir: (symbol number str)
(define-struct pb (name number))

(define (whose-number number pbs)
  (cond
    [(empty? pbs) false]
    [(same? number (pb-number (first pbs))) (pb-name (first pbs))]
    [else (whose-number number (rest pbs))]
  )
)

(define (same? a b)
  (= a b)
)

(define (phone-number name pbs)
  (cond
    [(empty? pbs) false]
    [(contains? name (pb-name (first pbs))) (pb-number (first pbs))]
    [else (phone-number name (rest pbs))]
  )
)

(define (contains? a b)
  (symbol=? a b)
)

(whose-number 3 (list (make-pb 'robot 1) (make-pb 'doll 3) (make-pb 'dart 100)))

(whose-number 99 (list (make-pb 'robot 1) (make-pb 'ddoll 3) (make-pb 'dart 100)))

(phone-number 'doll (list (make-pb 'robot 1) (make-pb 'doll 3) (make-pb 'dart 100)))

(phone-number 'doll (list (make-pb 'robot 1) (make-pb 'ddoll 3) (make-pb 'dart 100)))