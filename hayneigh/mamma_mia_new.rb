use_bpm 120
use_synth :piano

def right_hand
  16.times do
    tick
    notes = (ring :C5, :G5, :C5, :G5, :C5, :G5, :C5, :Gs5,
             :C5, :Gs5, :C5, :G5, :C5, :G5, :C5, :G5)
    sleep_rest = (ring 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                  0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
    play notes.look
    sleep sleep_rest.look
  end
end

def left_hand
  8.times do
    notes = (ring :C3, :C3, :C3, :C3, :C3, :C3, :C3, :C3)
    sleep_rest = (ring 1, 1, 1, 1, 1, 1, 1, 1)
    play notes.look
    sleep sleep_rest.look
  end
end

in_thread do
  loop do
    right_hand
  end
end

loop do
  left_hand
end
