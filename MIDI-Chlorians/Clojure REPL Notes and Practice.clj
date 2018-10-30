;; Intro to Clojure


;; Use 2 semi-colons to create a comment.

;; Type parentheses around everything (functoin arguments)
;; Function is either a math operation or a built in algorithm


;; Give the function first, before numbers.
(+ 1 1)  ;; This will give 2.
(+ 1 2 3 4 5 6 7 8 9 10)  ;; This gives 55.
(+ 4 (+ 3 7))  ;; This gives 14.

;; If you want: (1 - 2) + 3
(+ (- 1 2) 3)  ;; This gives 2.

(* 4 5)  ;; Gives 20.
(/ 15 5)  ;; Gives 3.
(/ 5 4)  ;; Gives 5/4, a ratio.
(/ 18 12)  ;; Gives 3/2, a simplified ratio.
(+ 1/2 1/4)  ;; Gives 3/4, can add ratios.

(+ 0.25 0.5)  ;; Adds decimals to 0.75.

;; Float = convert to decimals
(float 1/2)  ;; Converts to 0.5.
(float (+ 13/411 610/99))  ;; Converts answer to decimal 6.1932464.

;; Can check true/false statements
(= 1/2 4/8)  ;; True
(= 1/2 1/3)  ;; False
(> 1/2 1/3)  ;; True
(< 1/2 1/3)  ;; False

;; (mod a b) gives remainder of dividing b into a.
(mod 10 3)  ;; Gives 1.


;; Lists:

;; To create a list, you need parentheses. but in Clojure thats a      ;; function. So you put a quote mark or "list" to show it's a list.
'(1 2 3 4)
(list 1 2 3 4)
(first '(1 2 3 4))  ;; Gets first item on list (1).
(last '(1 2 3 4))  ;; Gets last item on list (4).
(nth '(1 2 3 4 5 6 7) 5)  ;; Grabs 5th item on list (6).
(take 4 '(1 2 3 4 5 6 7))  ;; Takes first 4 items on list (1 2 3 4).
(drop 5 '(1 2 3 4 5 6 7))  ;; Drops out first 5 items on list (6 7).

;; If you want to grab sub-list (5 6 7) from 
;; master list (1 2 3 4 5 6 7 8 9)
(take 3 (drop 4 '(1 2 3 4 5 6 7 8 9)))  ;;  -->  (5 6 7)


;; Ranges:

(range 30)  ;; Makes a range between 0 and 29.
(range 10, 20) ;; Makes a range between 10 and 19.


;; Creating variables to store data:

(def example '(1 2 3 4 5 6))  ;; List is now known as "example".
(first example)  ;; Gets first off of "example" list.
