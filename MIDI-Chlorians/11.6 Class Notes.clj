;; Loops:


;; Loop Syntax: 
;; (for ['variable' 'list'] 'what to output/use variable names')

(for [i (range 10)] (* i 2)) ;; Multiplies (0...9) list each by 2.

(def primes '(2 3 5 6 11 13))

;; Adds all from cat to primes 2 in order, then to primes 3, etc.
(for [cat primes dog '(2 3 4)] (+ cat dog)) 
;; Adds 2 from dog to all primes in order, then to dog 3, etc.
(for [dog '(2 3 4) cat primes] (+ cat dog))

;; Gets the "1st 3rd and 5th" items on ryan_list.
(def ryan_list '("a" "b" "c" "d" "e" "f" "g"))
(for [k '(1 3 5)] (nth ryan_list k))

;; Creates pairs between the lists.
(for [x '(1 2 3) y '(4 5)] (list x y))

;; Same as above, but formatted better:
(for
  [x '(1 2 3)
   y ' (4 5)]
  (list x y)
)


;; Conditionals (If Statements):

;; Conditional Syntax: 
;; (if 'condition T/F' 'what to output if true' 'what to output if false')

(defn longer_list ;; Defining our function
  "Reported if list1 has more entries than list2."
  [list1 list2]
  (if (> (count list1) (count list2))
  "List 1 is longer."
  "List 1 is not longer."
  )
)
;; To run this function in the REPL: (longer_list (range '_') (range '_'))


;; Map:

;; Map Syntax:
;; (map 'function' 'list(s)')

;; Function is applied to first entry of each list, then the second, etc.

;; dec = decrement, subtracts by one
(map dec '(1 3 6 7))  ;; Output is (0 2 5 6).
(map list '(1 3 6 7) '(9 6 3 2)) ;; Output is (1 9) (3 6) (6 3) (7 2).
(map list '(:C4 :D4 :E4 :F4) '(2 1 0.5 1))  ;; Matches notes and durations.
