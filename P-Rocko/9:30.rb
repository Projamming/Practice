#Liveloop Practice with Closing Time by Semisonic

use_bpm 100

chord_prog = [chord(:G3, :major),
              chord(:D4, :major),
              chord(:A3, :minor),
              chord(:C4, :major),
              ]

use_synth :blade
calling = (ring 0, 1, 2, 3)

live_loop :my_chords do
  
  tick
  play chord_prog[calling.look], sustain: 1.25
  sleep 2
end