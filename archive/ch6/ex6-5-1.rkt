;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-5-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct movie (title producer))

;; process-movie : movie symbol -> ???
;;(define (process-movie a-movie some) ... )

(define-struct boyfriend (name hair eyes phone))

;; process-boyfriend : boyfriend symbol -> ???
;;(define (process-boyfriend aboyfriend some) ... )

(define-struct cheerleader (name number))

;; processcheerleader : cheerleader symbol -> ???
;;(define (process-cheerleader a-cheerleader some) ... )

(define-struct CD (artist title price))

;; process-CD : CD symbol -> ???
;;(define (process-CD a-CD some) ... )

(define-struct sweater (material size producer))

;; process-sweater : sweater symbol -> ???
;;(define (process-sweater a-sweater some) ... )