use_bpm 80

#four basic take on me chords are A, E F#m, D
live_loop :b3 , sync: :bass3 do
  #define :bass do
  16.times do
    use_synth :fm
    notes = ( ring :B2, :B3, :B2, :B3, :E3, :E4, :E3, :E4,
              :A2, :A3, :A2, :A3, :D3, :D4, :D3, :D4, :r, :r, :r, :r)
    durations = (ring 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5,
                 0.5, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25, 0.5, 0.25, 0.25, 0.25, 0.25)
    play_pattern_timed notes, durations
  end
end

live_loop :b4, sync: :bass4 do
  #define :bass2 do
  use_synth :prophet
  notes = (ring :Fs5, :Fs5, :D5, :B4, :B4,
           :E5, :E5, :E5, :Gs5, :Gs5, :A5,
           :B5, :A5, :A5, :A5, :E5, :D5,
           :Fs5, :Fs5, :Fs5, :E5, :E5, :Fs5,
           :E5)
  durations = (ring 0.25, 0.25, 0.25, 0.5, 0.5,
               0.5, 0.5, 0.25, 0.25, 0.25, 0.25,
               0.25, 0.25, 0.25, 0.25, 0.5, 0.5,
               0.5, 0.5, 0.25, 0.25, 0.25, 0.25,
               0.25)
  play_pattern_timed notes, durations
end

in_thread do
  loop do
    cue :bass3
    cue :bass4
    sleep 1
  end
end

loop  do
  sample :drum_bass_soft; sleep 0.5
  sample :drum_heavy_kick, rate: (rrand 0.5, 3.0)
end



