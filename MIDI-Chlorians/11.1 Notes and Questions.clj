;; Notes and Practice Questions with Clojure from 11/1.


(conj '(1 2 3 4) 9)  ;; Adds the 9 to the front of the list.

;; A symbol is a string preceeded by a colon.
(list :C4 :D4 :E4 :F4) ;; No commas needed.
(def notes (list :C4 :D4 :E4 :F4))

;; Sytax for playing a chord in Clojure:
;; (play-chord (chord (:C4 :major)))


;; Defining our own function:
  ;; Syntax: (def <function-name> [argument(s)] body)
;; Body is the code we want to run on the arguments.
;; To run one in console, put it in parentheses.

(defn double [n] (* n 2))

(defn triple [n] (* n 3))

(defn hexer [n] (triple (double n)))

;; Greeting:
;; Must put quotations around "name" and "city" in console.

(defn greet [name city] (str "Hello, " name " from " city))

(def my_name "Ryan") ;; Defines "my_name" as Ryan.

;; Checks true or flase if one list is greater than another.
(defn lc [lst1 lst2] (> (count lst1) (count lst2)))

;; Format for writing functions with indents, with 'docstring' comment:
(defn lc_snazzy
  "Returns true if the lenth of lst1 exceeds that of lst2"
  [lst1 lst2]
  (> (count lst1) (count (lst2)))
)


;; Function that takes 2 arguments, m and n, and returns true if n 
;; divides evenly into m:

(defn is_divisible_by
  "Returns true if n divides evenly into m"
  [m n]
  (= (mod m n) 0)
)


;; Function that takes 2 lists [lst1 lst2] and retruns true if the last 
;; element of lst1 equals the first element of lst2:

(defn list_link
  "Retruns true if the last element of lst1 equals the first element of lst2"
  [lst1 lst2]
  (= (last lst1) (first lst2))
)



;; Practice Questions:


;; Q1. Write the function 'addy' that takes three arguments [i j k] and returns 
;; 'true' if i = j + k.

(defn addy
  "Returns 'true' if i = j + k"
  [i j k]
  (= (+ j k) i)
)


;; Q2. Write the function 'longer than' that takes two arguments [lst n] and 
;; returns 'true' if the length of lst is longer than n.

(defn longer_than
  "Returns 'true' if the length of lst is longer than n"
  [lst n]
  (> (count lst) n)
)
