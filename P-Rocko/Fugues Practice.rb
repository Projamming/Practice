#This code has some problem with the bottom in thread. Couldnt figure out the prooper counts for the sleeps before each sections comes in

def melody
  use_synth :pluck
  1.times do
    notes = [ :Ds5, :As4, :G4, :Ds5, :As4, :G4, :Ds5, :As4,
              :Cs5, :As4, :F4, :Cs5, :As4, :F4, :Cs5, :As4,
              :Cs5, :As4, :F4, :Cs5, :As4, :F4, :Cs5, :As4,
              :C5, :Gs4, :F4, :C5, :Gs4, :F4, :C5, :Gs4  ]
    durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 ]
    play_pattern_timed notes, durations
  end
end



def high_pitch
  use_synth :piano
  1.times do
    notes = [ :Gs6, :G6, :Ds6, :Gs6, :G6, :Ds6,:Gs6, :G6,
              :Gs6, :G6, :Cs6, :Gs6, :G6, :Cs6, :Gs6, :G6,
              :Gs6, :G6, :Cs6, :Gs6, :G6, :Cs6, :Gs6, :G6,
              :Gs6, :G6, :C6, :Gs6, :G6, :C6, :Gs6, :G6 ]
    durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 ]
    play_pattern_timed notes, durations
  end
end

def high_pitch_backwards
  use_synth :piano
  1.times do
    notes = [ :Ds6,:G6,:Gs6,:Ds6,:G6,:Gs6,:Ds6,:G6,
              :Cs6,:G6,:Gs6,:Cs6,:G6,:Gs6,:Cs6,:G6,
              :Cs6,:G6,:Gs6,:Cs6,:G6,:Gs6,:Cs6,:G6,
              :C6,:G6,:Gs6,:C6,:G6,:Gs6,:C6,:G6   ]
    durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5 ]
    play_pattern_timed notes, durations
  end
end

in_thread do
  10.times do
    melody
  end
end


in_thread do
  sleep 96
  2.times do
    high_pitch
  end
end

in_thread do
  sleep 128
  2.times do
    high_pitch_backwards
  end
end


in_thread do
  sleep 80
  2.times do
    melody
  end
end


in_thread do
  sleep 160
  2.times do
    high_pitch
  end
end

in_thread do
  sleep 90
  2.times do
    high_pitch_backwards
  end
end

in_thread do
  sleep 160
  2.times do
    bass
  end
end