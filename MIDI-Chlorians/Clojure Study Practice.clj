;;--------------------------;;
;;   Final Study Practice   ;;
;;--------------------------;;

;; This code is just me testing myself and checking my answers, 
;; with examples of how each function works, to practice for the final.


;;--------------------;;
;;  Simple Functions  ;;
;;--------------------;;

;; Range:
(range 5)  ;; = (0 1 2 3 4), starts at 0

;; Count:
(count "clojure") ;; = 7, counts characters

;; First:
(first '("a" "b" "c" "d")) ;; = "a", outputs first item on a list

;; Last:
(last '("a" "b" "c" "d")) ;; = "d", outputs last item on a list

;; Rest:
(rest '("a" "b" "c" "d")) ;; = "b" "c" "d", outputs all but the first one

;; Drop:
(drop 2 '("a" "b" "c" "d")) ;; = "c" "d", drops the first 2 items on a list

;; Take:
(take 2 '("a" "b" "c" "d")) ;; = "a" "b", takes only the first 2 items on a list

;; Inc:
(inc 25) ;; = 26, increases it by 1

;; Dec:
(dec 25) ;; = 24, decreases it by 1

;; Str:
(str "c" "and" "y") ;; = "candy", smooshes together characters

;; Subs:
(subs "finals" 2) ;; = "nals", uses all but first  2
(subs "finals" 1 3) ;; = "in", starting at 0, takes 1st-3rd chars, non-inclusive

;; Conj:
(conj ["a" "b" "c"] "d") ;; = "a" "b" "c" "d", adds the "d" to the end

;; Def:
(def green 3)
(+ 2 green) ;; = 5, defines variable

;; Defn:
(defn increaser
  [a]
  (inc a)
) ;; = "a" value + 1, defines a function

;; Mod:
(mod 15 2) ;; = 1, gives remainder of 15/2
(mod 15 3) ;; = 0, 15/3 has no remainder


;;--------------------------;;
;;  More Complicated Ones:  ;;
;;--------------------------;;

;; For:
(def my_list '("a" "b" "c" "d" "e" "f" "g"))
(for [k '(2 4 6)] (nth my_list k)) ;; = "b" "d" "f", takes variable/list, then
;;                                       says what to do with it 

;; If:
(defn if_statements
  [a b]
  (if
    (> a b)
    "True"
    "False")
) ;; Returns "true" if a > b, "false" if a < b

;; Map:
(map inc '(1 3 5 7)) ;; '(2 4 6 8), does the function to each item, in order of list

;; Apply:
(defn apply_statement
[]
(apply str "app" "le")
) ;; = "apple", applies function to all
