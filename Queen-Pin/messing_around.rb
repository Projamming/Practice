use_bpm 120
use_synth :piano

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
  play_pattern_timed notes, duration
end

in_thread do
  loop do
    melody
    sleep 0.25
  end
end
loop do
  harmony
  sleep 0.25
end
