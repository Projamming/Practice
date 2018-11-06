;; TODAY: for loops, if statements

;; loops
;; (for [i (range 10)] (* i 2))

;; (for [cat primes dogs '(2 3 4)] (+ cat dog))

;; (def daves_list '("a" "b" "c" "d" "e" "f" "g"))
;; (for [k '(1 3 5)] (nth daves_list k))

;; Ruby Version:
;; daves_list = ["a", "b", "c", "d", "e", "f", "g"]
;; for k in [1, 3, 5]
;; puts daves_list[k]
;; end

;; (for [x '(1 2 3) y '(3 4 5)] (list x y))

;; (for 
;;    [x '(1 2 3) 
;;    y '(3 4 5)] 
;;   (list x y)
;; )

;; Conditionals (if statements)

;; (if (> 2 1) "2 is greater than 1" "2 is less than 1")

;; (defn longer_list
;;   "Report if lst1 has more entrie than lst2."
;;   [lst1 lst2]
;;   (if (> (count lst1) (count lst2))
;;     "lst1 is longer"
;;     "lst1 is not longer"
;;   )
;; )

;; Ruby Version (called a 'method'):
;; def longer_list(lst1, lst2)
;;  if lst1.count > lst2.count
;;    puts "List 1 is longer."
;;  else
;;    puts "List 1 is not longer."
;;  end
;; end

;; Built-in function called 'map'

;; (map dec '(1 3 6 7) '(9 6 3 2))
;; (map dec '(:C4 :D4 :E4) '(1 2 3))
;; (map + '(5 6 7) '(1 2 3 4) '(9 9 9 9 9 9 9 9))
