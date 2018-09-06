# TITLE  : Class 4 (Rhythm, Functions, Variables)
# FILE   :
# DATE   : September 4, 2018


def rhythm
  tick
  beats = (ring :C4, :E4, :G4)
  amps = (ring 0.5, 1.5, 2.0, 1.0)
  play beats.look, amp: amps.look
end

def bass
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

live_loop :one do
  use_synth :piano
  rhythm
  bass
end
