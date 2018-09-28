#all of me basic

chord_prog = [chord(:F4, :minor),
              chord(:Cs4, :major),
              chord(:Gs4, :major),
              chord(:Ds4, :major),
              
              chord(:As4, :minor),
              chord(:As4, :minor),
              chord(:F4, :minor),
              chord(:Ds4, :major),
              
              chord(:Gs4, :major),
              chord(:Gs4, :major),
              chord(:F4, :minor),
              chord(:F4, :minor),
              
              chord(:As4, :major),
              chord(:As4, :major),
              chord(:Ds4, :major),
              chord(:Ds4, :major)
              ]

use_synth :piano
use_bpm 30
live_loop :all_of_me do
  
  calling = (ring 0, 1, 2, 3, 0, 1, 2, 3,
             0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3,
             4, 5, 6, 7, 4, 5, 6, 7,
             8, 9, 10, 11, 12, 13, 14, 15,
             8, 9, 10, 11, 12, 13, 14, 15)
  tick
  play_pattern_timed chord_prog[calling.look], 0.5
end