;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex3-3-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp")) #f)))
(define IN 2.54)
(define FT 12)
(define YD 3)
(define RD (+ 5 (/ 1 2)))
(define FL 40)
(define MILE 8)

(define (inch_to_cm in)
  (* IN in)
)

(define (feet_to_inches ft)
  (* FT ft)
)

(define (yards_to_feet yd)
  (* YD yd)
)

(define (rods_to_yards rd)
  (* RD rd)
)

(define (furlongs_to_rods fl)
  (* FL fl)
)

(define (miles_to_furlongs mile)
  (* MILE mile)
)

(define (feet_to_cm ft)
  (inch_to_cm (feet_to_inches ft))
)

(define (yards_to_cm yd)
  (feet_to_cm (yards_to_feet yd))
)

(define (rods_to_inches rd)
  (feet_to_inches (yards_to_feet (rods_to_yards rd)))
)

(define (miles_to_feet mile)
  (yards_to_feet (rods_to_yards (furlongs_to_rods (miles_to_furlongs mile))))
)