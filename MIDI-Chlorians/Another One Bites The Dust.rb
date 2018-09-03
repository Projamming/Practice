#Another One Bites The Dust by Queen


use_bpm 105
use_synth :fm


#Bass Intro


intro_notes = [:a2, :r ,:g2, :r]

intro_durations = [0.125, 0.125, 0.1, 0.15]

play_pattern_timed intro_notes, intro_durations



#Bass Loop


live_loop :bass do
  
  notes = [:e2, :r, :e2, :r, :e2, :r,
           :e2, :e2, :e2, :r, :g2, :r, :e2, :a2, :r,
           :a2, :r ,:g2, :r]
  
  durations = [0.5, 0.5, 0.5, 0.5, 0.5, 1.25,
               0.25, 0.5, 0.25, 0.25, 0.25, 0.25, 0.25, 0.5, 1.25,
               0.125, 0.125, 0.1, 0.15]
  
  play_pattern_timed notes, durations, amp:1.5
  
end


#Drums

live_loop :drums do
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end
