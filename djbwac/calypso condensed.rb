# calypso condensed attempt
# --------------------------------------------------------- #
use_bpm 200
live_loop :calypso do
  
  k = :drum_heavy_kick
  t = :drum_tom_hi_soft
  
  tick
  beat = (ring k, t, k, t, k, t, t, k, t)
  slep = (ring 1.5, 0.5, 1, 1, 0.5, 1, 0.5, 1, 1)
  
  sample beat.look
  sleep slep.look
end

