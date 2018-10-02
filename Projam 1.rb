use_bpm 100


#---------#
#  Drums  #
#---------#

live_loop :drums do
  
  tick
  beat = (ring 1, 2, 1, 2, 1, 2, 1, 1)
  
  sample :drum_heavy_kick if beat.look == 1
  sample :elec_mid_snare, amp: 3 if beat.look == 2
  
  sleep 1
  
end

#------#
# Toms #
#------#

live_loop :toms do
  
  tick
  tom_beat = (ring 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
              0, 0, 0, 0, 0, 1, 1, 1, 2, 2, 2)
  
  sample :drum_tom_hi_hard if tom_beat.look == 1
  sample :drum_tom_lo_hard if tom_beat.look == 2
  
  sleep 0.33333333
  
end


#----------#
#  Chords  #
#----------#

live_loop :chords do
  
  tick
  chords = (ring 1, 2, 3, 4)
  
  
  
  sleep 1
  
end

# So far, just a percussion beat, and setup to add chords, but haven't yet

# Chords added below

live_loop :notes do
  notes = [ chord(:C3, :major),
            chord(:A3, :major),
            chord(:D3, :major),
            chord(:G3, :major)]
  durations = [2, 2, 2, 2]
  play_pattern_timed notes, durations, amp: 2
end
