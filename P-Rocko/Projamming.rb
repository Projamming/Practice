#Projamming

#A quick fact attempt at making Pirates of Carribean

use_bpm 120

Chord list
def chord_prog
[chord(:A2, :major),
chord(:D3, :minor),
chord(:F3, :major)]
end


Chord Progression with ring and in thread command ant bottom
def my_chords
use_synth :fm
calling = (ring, 0, 1, 2, 0)
tick
play chord_prog[calling.look], sustain: 1
sleep 1
end
end

#Main melody, "Pirates of the Carribean"
live_loop :main do
  use_synth :fm
  notes = [ :A3, :C4, :D4, :D4,
            :D4, :E4, :F4, :F4,
            :F4, :G4, :E4, :E4,
            :D4, :C4, :C4, :D4]
  durations = [1, 1, 1, 1,
               1, 1, 1, 1 ]
  play_pattern_timed notes, durations
  cue :arpeggio
end

# Phase2: Main melody, "Pirates of the Carribean", Club Mix
in_thread do
  live_loop :drum_kick do
    sample :perc_snap
    click = play :c3, amp: 10
    sleep 1
  end
end

in_thread do
  live_loop :drums do
    sample :drum_heavy_kick
    sleep 1
    sample :sn_dolf
    sleep 1
  end
end