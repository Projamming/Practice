(defn squared
"squares a number"
[number]
(* number number))

(defn cubed
"cubes a number"
[number]
(* number (squared number)))

