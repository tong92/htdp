;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname ex8-3-1) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f () #f)))
;; 1
(+ (* (/ 12 8) 2/3)
   (- 20 (sqrt 4))
 )

(+ (* 12/8 2/3) (- 20 2))

(+ 1 18)

;; 2
(cond
  [(= 0 0) false]
  [(> 0 1) (symbol=? 'a 'a)]
  [else (= (/ 1 0) 9)]
)

(cond
  [true false]
  [(> 0 1) (symbol=? 'a 'a)]
  [else (= (/ 1 0) 9)]
)


(cond
  [true false]
)

;; 3
(cond
  [(= 2 0) false]
  [(> 2 1) (symbol=? 'a 'a)]
  [else (= (/ 1 2) 9)]
)


(cond
  [false false]
  [true (symbol=? 'a 'a)]
  [else (= (/ 1 2) 9)]
)


(cond
  [true (symbol=? 'a 'a)]
)