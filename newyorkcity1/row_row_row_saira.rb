# Welcome to Sonic Pi v3.1

define :layer1 do
  loop do
    use_synth :piano
    sleep 1
    notes = (ring :C5, :C5, :C5, :D5, :E5,
             :E5, :D5, :E5, :F5, :G5, :C6,
             :C6, :C6, :G5, :G5, :G5, :E5,
             :E5, :E5, :C5, :C5, :C5, :G5,
             :F5, :E5, :D5, :C5)
    
    durations = (ring 0.75, 0.75, 0.5, 0.25, 0.75, 0.5, 0.3, 0.5, 0.3, 0.80,
                 0.25, 0.25, 0.25, 0.25, 0.25,
                 0.25, 0.25, 0.25, 0.25, 0.25,
                 0.25, 0.25, 0.5, 0.3, 0.5,
                 0.3, 0.5, 1)
    play_pattern_timed notes, durations
  end
end

layer1
