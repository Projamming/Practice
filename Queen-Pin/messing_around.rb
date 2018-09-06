use_bpm 120
d
def melody
  notes = [:g3, :d4, :f4, :g4, :g4, :fs4, :fs4,
           :g4, :fs4, :e4, :d4, :r]
  duration = [0.5, 0.5, 0.5, 1, 0.5, 1,
              1, 1, 0.5, 0.5, 0.5, 1.5]
  play_pattern_timed notes, duration
end

def harmony
  notes = [:g3, :a4, :b4, :e4, :e4, :d4, :d4,
           :b4, :a4, :g3, :g3, :r]
  duration = [0.5, 0.5, 0.5, 1, 0.5, 1,
              1, 1, 0.5, 0.5, 0.5, 1.5]
end
live_loop :beat do
  use_synth :pluck
  melody
  harmony
end
