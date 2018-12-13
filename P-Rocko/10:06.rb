#liveloop practice

use_synth :piano
use_bpm 120


melody_ring = (ring :D4, :G4, :C4, :C4)
harmony_ring_1 = (ring :F3, :B3, :E3, :E4)
harmony_ring_2 = (ring :C2, :G2, :D3, :C3)
harmony_ring_3 = (ring :G3, :G3, :F3, :C3)
duration_ring = (ring 1, 1, 1, 1)

live_loop :loop1 do
  play_pattern_timed melody_ring, duration_ring
end

live_loop :loop2, sync: :harmony do
  play_pattern_timed harmony_ring_2, duration_ring
end

loop do
  sleep 4
  cue :harmony
end