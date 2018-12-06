; I practiced for nearly 4 hours on end today, trying to get any other synth or instrument working,
; and still wound up for nothing to show for it >:(.  Here is an original song that I made
; to make myself feel like I still accomplished something.
; Note: I did learn a lot in my experimentation, but none of it ended up working toward what
; I wanted to do in the end. I deleted much of my code in rage after having wasted 4 hours,
; but here is something.  The second synth, vintage-bass, does not work, and for some
; reason, it instead produces a high frequency ringing when played. This was the case
; for every single other instrument or synth I have tried except elec-piano.



(ns experiment.core
  (:use [overtone.core]))


;;---------------;;
;;  Instruments  ;;
;;---------------;;


(def kick (sample (freesound-path 25649)))
(def compdrum (sample (freesound-path 92332)))

(defsynth elec-piano [freq 200 dur 1]
  (let [src (saw [freq (* freq 1.01) (* 0.99 freq)])
        low (sin-osc (/ freq 2))
        filt (lpf src (line:kr (* 10 freq) freq 10))
        env (env-gen (perc 0.1 dur) :action FREE)]
    (out 0 (pan2 (* 1 low env filt)))))


(definst vintage-bass
  [note 40 velocity 80 t 0.6 amp 2 gate 1]
  (let [freq     (midicps note)
        sub-freq (midicps (- note 12))
        velocity (/ velocity 127.0)
        sawz1    (* 0.275 (saw [freq (* 1.01 freq)]))
        sawz2    (* 0.75 (saw [(- freq 2) (+ 1 freq)]))
        sqz      (* 0.3 (pulse [sub-freq (- sub-freq 1)]))
        mixed    (* 5 (+ sawz1 sawz2 sqz))
        env      (env-gen (adsr 0.1 3.3 0.4 0.8) gate :action FREE)
        filt     (* env (moog-ff mixed (* velocity env (+ freq 200)) 2.2))]
    (* amp filt)))



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
  (at time (vintage-bass (to-freq (first melody))))
  (let [new-time (+ time (first sleeps))]
    (apply-by new-time #'my-melody [new-time (rest sleeps) (rest melody)])))



;;--------;;
;;  Song  ;;
;;--------;;


(sequencer (now) kick (cycle [1 0 1 1]) 400)
(sequencer (now) compdrum (cycle [1 0 0 1]) 400)


(my-melody (now) 
    (cycle [200 200 200 200]) 
    (cycle [:B3 :A4 :D3 :E3]))

(my-bass (now) 
    (cycle [1600 1600 1600 1600]) 
    (cycle [:B2 :D2 :D2 :B2]))
