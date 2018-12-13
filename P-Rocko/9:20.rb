#9/20 practice
#An attempt to replicate a small portion of the melody line
#of Umbrella by Rihanna and Jay-Z

use_bpm 85

def melody_1
  use_synth :piano
  notes = [ :C4, :C4, :D4, :D4, :Ds4, :Ds4, :F4,
            :G4, :G4, :Gs4, :G4, :F4, :Ds4, :C4]
  durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1 ]
  play_pattern_timed notes, durations
end

def chord_prog
  [chord(:F3, :major),
   chord(:C3, :major),
   chord(:G3, :major),
   chord(:A3, :minor)]
end

####FUNCTIONS & DEFINITIONS####

# We introduce a "my chords" function with rings and ticks to play a
# certain pattern from the chord progression we introduced above.
def my_chords
  4.times do
    use_synth :fm
    calling = (ring, 0, 1, 2, 3)
    tick
    play chord_prog[calling.look], sustain: 2
    sleep 1
  end
end



in_thread do
  4.times do
    melody_1
  end
end

in_thread do
  sleep 8
  3.times do
    my_chords
  end
end


















