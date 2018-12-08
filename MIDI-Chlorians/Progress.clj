;; I finally got Clojure to work with two separate melodies at the same time, I just can't seem to use more than one instrument.
;; The frequencies it was trying to output may have also been the issue.
;; Either way it works now! Thanks to DJ-Mito-Chondria for the help!


(ns class.core
  (:use [overtone.core]))



;;---------------;;
;;  Instruments  ;;
;;---------------;;


(def subby (sample (freesound-path 25649)))
(def compdrum (sample (freesound-path 92332)))

(definst elec-piano [freq 200 dur 0.5]
  (let [src (saw [freq (* freq 1.01) (* 0.99 freq)])
        low (sin-osc (/ freq 2))
        filt (lpf src (line:kr (* 10 freq) freq 10))
        env (env-gen (perc 0.1 dur) :action FREE)]
    (out 0 (pan2 (* 0.6 low env filt)))))

(definst elec-bass [freq 200 dur 2.5]
  (let [src (saw [freq (* freq 1.01) (* 0.99 freq)])
        low (sin-osc (/ freq 2))
        filt (lpf src (line:kr (* 10 freq) freq 10))
        env (env-gen (perc 0.1 dur) :action FREE)]
    (out 0 (pan2 (* 1.7 low env filt)))))



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

(defn my-bass [time sleeps melody]
  (at time (elec-bass (to-freq (first melody))))
  (let [new-time (+ time (first sleeps))]
    (apply-by new-time #'my-bass [new-time (rest sleeps) (rest melody)])))


;;--------;;
;;  Song  ;;
;;--------;;


(sequencer (now) subby (cycle [0 1]) 860)
(sequencer (now) compdrum (cycle [0 1]) 860)


(my-melody (now) 
     (cycle [215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215
 	    215 215 215 215 215 215 215 215]) 
    (cycle [:D#5 :F#5 :D#5 :F#5 :D#5 :F#5 :D#5 :F#5
 	    :B4 :F#5 :B4 :F#5 :B4 :F#5 :B4 :F#5
 	    :F#4 :F#5 :F#4 :F#5 :F#4 :F#5 :F#4 :F#5
 	    :F#4 :F#5 :F#4 :F#5 :F#4 :F#5 :F#4 :F#5]))


(my-bass (now) 
    (cycle [1720 1720 1720 1720]) 
    (cycle [:D#4 :B3 :F#3 :F#3]))
