;; More things we can dop with lists:
;; (conj '(1 2 3 4) 9)


;; A symbol is a string preceded by a colon:
;; (list :C4 :D4 :E4 :F4)
;; (def notes (list :C4 :D4 :E4 :F4))

;; We will eventually do stuff like this:
;; (play-chord (chord (:C4 :major)))

;; The big deal in Clojure is defining our own functions:
;; syntax: (defn <function-name> [argument(s)] body)
;; body is the code we want to run on the arguments

;; defn is a contraction for "define function":
(defn doubler [n] (* n 2))

;; Clojure data is "immutable" (we cannot change it permanently
;; once it is assigned to a varibale.)

(defn tripler [n] (* n 3))

;; Without using *, write a find a way to write a function that
;; multiplies n by 6:
(defn sixer [n] (/ n 0.166666666666))
(defn hexer1 [n] (tripler (doubler n)))
(defn hexer2 [n] (doubler (tripler n)))

(defn greet [name] (str "Hello " name))
(defn greeter [name city] (str "Hello " name " from " city))
(def my_name "Dave")

;; Q: What is this function's job?:
(defn lc [lst1 lst2] (> (count lst1) (count lst2)))

;; We usually write long functions with indentation, and we can
;; add an in-function comment calling a 'doctring':
(defn lc_snazzy
  "Returns true if the length of lst1 exceeds that of lst2"
  [lst1 lst2]
  (> (count lst1) (count lst2)))

;; Q: Write a function that takes two arguments [m n] and
;; returns true if n divides evenly into m. Hint: (mod )
(defn is_div_by
  "Returns true if n divides evenly into m."
  [m n]
  (= (mod m n) 0))

;; Q: Write a function that takes two lists [lst1 lst2]
;; and returns true if the last element of lst1 equals
;; the first element of lst2.
(defn list_link
  "Returns true if the last element of lst1 equal the first element of lst2."
  [lst1 lst2]
  (= (last lst1) (first lst2))
  )
