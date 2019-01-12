;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-5-2) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; time :: number number number -> time
(define-struct t (hour min sec))

(define (time->seconds a-time)
  (+
   (t-sec a-time)
   (* 60 (t-min a-time))
   (* 60 60 (t-hour a-time))
   )
)

(= (time->seconds (make-t 12 30 2)) 45002)
(time->seconds (make-t 6 30 0))
