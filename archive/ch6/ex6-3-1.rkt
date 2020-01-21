;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex6-3-1) (read-case-sensitive #t) (teachpacks ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp"))) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ((lib "convert.rkt" "teachpack" "htdp") (lib "guess.rkt" "teachpack" "htdp") (lib "guess-gui.rkt" "teachpack" "htdp") (lib "master.rkt" "teachpack" "htdp") (lib "draw.rkt" "teachpack" "htdp")) #f)))
(define-struct movie (title producer))
;; make-movie
;; movie-title
;; movie-producer

(define-struct boyfriend (name hair eyes phone))
;; make-boyfriend
;; boyfriend-name
;; boyfriend-hair
;; boyfriend-eyes
;; boyfriend-phone

(define-struct cheerleader (name number))
;; make-cheerleader
;; cheerleader-name
;; cheerleader-number

(define-struct CD (artist title price))
;; make-CD
;; CD-artist
;; CD-title
;; CD-price

(define-struct sweater (material size producer))
;; make-sweater
;; sweater-material
;; sweater-size
;; sweater-producer