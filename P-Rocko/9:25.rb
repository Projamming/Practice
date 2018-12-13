##used chord progressions and practice with rings

chord_prog = [chord(:A3, :major),
              chord(:E4, :major),
              chord(:F4, :minor),
              chord(:D4, :major)]

chords = [chord(:C4, :major),
          chord(:G4, :major),
          chord(:A4, :minor),
          chord(:F4, :major)]

calling = (ring 0, 1, 2, 3)

in_thread do
  live_loop :song do
    6.times do
      use_synth :piano
      tick
      play_pattern_timed chord_prog[calling.look], 0.1
      sleep 1
    end
  end
end

live_loop :song2, sync: :harmony do
  use_synth :hollow
  tick
  play_pattern_timed chords[calling.look].reverse, 0.1
  sleep 1
end

cue :harmony