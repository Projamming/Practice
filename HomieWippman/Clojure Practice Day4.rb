;; Download and Install Program on Windows Laptop
;; Warmup #1: Review map function


;; Learning about "apply"
;; (apply + '(1 2 3))

;; What if I wanted to sum all of the entries in the list generated
;; by the warmup?
;; (apply + (map / lst1 lst2))


;; Warmup #2: Write a function called 'fact' (short for factorial)
;; that accepts a number n and returns n!"
;; (defn fact
;;   "Returns n!"
;;   [n]
;;   (apply * (rest (range (inc n))))
;; )

;; Warmup #3: What is the output of (s 6)?
;; (defn s
;;   [n]
;;   (apply + (map inc (range n))))
;; Answer: 21
