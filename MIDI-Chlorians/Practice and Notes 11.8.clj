;; Clojure Notes and In-Class Practice 11/8


;; Apply:
;; Applies function to the whole list, as if we had listed each one.

;; Apply Syntax:
;; (apply __________ ______)
;;         function   list


;; Function that does factorial of n.
(defn fact
  "Returns n!"
  [n]
  (apply * n (rest (range n)))
)
