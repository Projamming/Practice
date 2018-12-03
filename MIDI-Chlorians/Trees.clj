;;-----------------------------------------------------------;;
;;  My first song in Clojure!                                ;;
;;  Song:  Trees by Twenty-One Pilots                        ;;
;;  Thanks to Professor Perkins for some of the code,        ;;
;;  and for helping figure out how to get Overtone working!  ;;
;;-----------------------------------------------------------;;


(ns first.core
  (:use [overtone.core]))



;;---------------;;
;;  Instruments  ;;
;;---------------;;


(def subby (sample (freesound-path 25649)))

(defsynth elec-piano [freq 200 dur 0.5]
  (let [src (saw [freq (* freq 1.01) (* 0.99 freq)])
        low (sin-osc (/ freq 2))
        filt (lpf src (line:kr (* 10 freq) freq 10))
        env (env-gen (perc 0.1 dur) :action FREE)]
    (out 0 (pan2 (* 0.6 low env filt)))))


;;-------------;;
;;  Functions  ;;
;;-------------;;


(defn to-freq
    "Converts a note in :A4 form to its frequency."
    [my-note]
    (midi->hz (note my-note))
    )

(defn notes-to-freq
    "Converts a list of notes in :A4 form to their frequencies."
    [my-notes]
    (map to-freq my-notes))

(defn play-piano
    "Plays a list of notes in :A4 form (as a chord) with the electric piano."
    [my-notes]
    (println "playing piano chord!")
    (map elec-piano (notes-to-freq my-notes)))

(defn sequencer
  "Plays instrument when pattern has a 1, and sleeps between beats."
  [time instrument pattern sleep]
  (at time (when (= 1 (first pattern)) (instrument)))
  (let [new-time (+ time sleep)]
    (apply-by new-time sequencer [new-time instrument (rest pattern) sleep])))

(defn my-melody [time sleeps melody]
  (at time (elec-piano (to-freq (first melody))))
  (let [new-time (+ time (first sleeps))]
    (apply-by new-time #'my-melody [new-time (rest sleeps) (rest melody)])))



;;--------;;
;;  Song  ;;
;;--------;;


(sequencer (now) subby (cycle [0 1]) 860)


(my-melody (now) 
    (cycle [215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215]) 
    (cycle [:D#5 :F#5 :D#5 :F#5 :D#5 :F#5 :D#5 :F#5
 	    :B4 :F#5 :B4 :F#5 :B4 :F#5 :B4 :F#5
 	    :F#4 :F#5 :F#4 :F#5 :F#4 :F#5 :F#4 :F#5
 	    :F#4 :F#5 :F#4 :F#5 :F#4 :F#5 :F#4 :F#5]))
      
