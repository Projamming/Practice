# My First Attempt

use_bpm 100

#Piano Chords
use_synth :piano
live_loop :chords do
  2.times do
    play :A2, sustain:1.5
    play :A3, sustain:1.5
    play :Db3, sustain:1.5
    play :E4, sustain:1.5
    sleep 1.5
    
    play :A2, sustain:2.5
    play :A3, sustain:2.5
    play :Db3, sustain:2.5
    play :E4, sustain:2.5
    sleep 2.5
  end
  
  2.times do
    play :D3, sustain:1.5
    play :D4, sustain:1.5
    play :Gb4, sustain:1.5
    play :A4, sustain:1.5
    sleep 1.5
    play :D3, sustain:2.5
    play :D4, sustain:2.5
    play :Gb4, sustain:2.5
    play :A4, sustain:2.5
    sleep 2.5
  end
  
end

#Kick Drum
live_loop :drums do
  sample :drum_heavy_kick
  sleep 1.5
  sample :drum_heavy_kick
  sleep 2.5
end
