;; Q1
;;Prediction is: (6 - 6) = 0
(- (/ 18 3) (* 3 2)) 
;; Correct!

;; Q2
(/ (+ 14 -4) (* -1 -6))

;; Q3
;;Prediction is: 2 = 4 -> False 
(= (mod 14 3) (mod 19 5))
;; Correct!

;; Q4
;; (> (mod 11 4) (mod 5 _))
;; Number should be 1, 2, 3, 4 or 5
(> (mod 11 4) (mod 5 1))
;; Statement is true, so correct!

;; Q5
;;Prediction is: (6 7 8 9 10)
(drop 5 (take 5 (range 20)))
;; Wrong!
;; End up with ()
;; To get (6 7 8 9 10)
(drop 6 (take 11 (range 20)))
;; Correct!
