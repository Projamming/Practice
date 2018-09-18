#--------------------------------------------------------------#
# FILE:   cutoff_practice.rb
# AUTHOR: lilgoody
# DATE:   September 18, 2018
# DESC:   I wanted to see if I could recreate the effect of random
#         cutoffs on the bassline, but in a more planned and
#         smooth way, which led me to a cutoff ring.
#--------------------------------------------------------------#


live_loop :bassline do
  tick :bass
  use_synth :prophet
  bass_cutoff = (ring 80, 90, 100, 105, 95, 85, 75)
  use_synth_defaults cutoff: bass_cutoff.look(:bass)
  bass_notes  = (ring :C2, :G2, :B2, :A2, :A2, :B2, :G2)
  bass_sleep  = (ring 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5)
  play bass_notes.look(:bass)
  sleep bass_sleep.look(:bass)
end

