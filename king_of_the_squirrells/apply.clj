(apply + '(1 2 3))

 (defn fact
 "Factorial of n"
 [n]
 (apply * (rest (range (+ n 1)))))

 (defn fact2
 "Factorial of n"
 [n]
 (apply * (rest (range (inc n)))))
