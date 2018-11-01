;; Q1: Write a function 'addy' that takes three arguments [i j k] and
;; returns 'true' if i = j + k
(defn addy
  "Returns true when the three arguments [i j k] follow the form i = j + k."
  [i j k]
  (= i (+ j k))
  )
