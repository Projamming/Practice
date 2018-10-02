#i coded the notes for the intro to Take on Me by
#a-ha. I ran out of time when coding the durations,
#though! Feeling free to finish it off. Also maybe throw
#it into a loop...

use_bpm 80

#Added bass part to go with main melody, durations are a little off
10.times do
  define :bass do
    use_synth :fm
    notes = ( ring :B2, :B3, :B2, :B3, :E3, :E4, :E3, :E4,
              :A2, :A3, :A2, :A3, :D3, :D4, :D3, :D4)
    durations = (ring 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5,
                 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5)
    play_pattern_timed notes, durations
  end
  
  #fixed
  define :layer1 do
    use_synth :prophet
    notes = (ring :Fs5, :Fs5, :D5, :B4, :B4,
             :E5, :E5, :E5, :Gs5, :Gs5, :A5,
             :B5, :A5, :A5, :A5, :Fs5, :D5,
             :Fs5, :Fs5, :Fs5, :E5, :E5, :Fs5,
             :E5)
    durations = (ring 0.25, 0.25, 0.25, 0.5, 0.5,
                 0.5, 0.5, 0.25, 0.25, 0.25, 0.25, 0.25,
                 0.25, 0.25, 0.25, 0.5, 0.5, 0.5,
                 0.5, 0.5, 0.25, 0.25, 0.25, 0.25)
    play_pattern_timed notes, durations
  end
  
  in_thread do
    sleep 1
    layer1
  end
  
  in_thread
  sleep 1
  bass
end
