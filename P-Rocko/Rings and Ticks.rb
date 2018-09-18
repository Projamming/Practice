#Practice
#Rings and Ticks

use_synth :piano

my_amps = ring( 0.5, 1.0, 1.5, 2.0)

loop do
  tick
  #print "amp:" my_amps.look
  play :C4, amp: my_amps.look
  sleep 1
end

loop do
  tick
  play :E4, amp: my_amps.look
  sleep 0.5
  play :G4, amps: my_amps.look
end

my_notes=(ring :C3, :G3, :E3, :G3)
my_chords=(ring chord(:D3, :minor), chord(:G3, :major), chord(:C3, :major))

loop do
  tick
  play my_notes.look
  play my_chords.look
  sleep 0.5
end