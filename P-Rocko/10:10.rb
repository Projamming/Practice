#Clocks with 3 different drum patterns

track = (ring 1, 2, 1, 1, 3)

drums_1 = (ring 1, 2, 1, 0)
drums_2 = (ring 0, 0, 1, 2)
drums_3 = (ring 2, 2, 0, 1)

snares = (ring 0, 1, 0, 2, 1, 2, 1, 0)

loop do
  
  tick(:track_clock)
  
  use_this = drums_1 if track.look(:track_clock) == 1
  use_this = drums_2 if track.look(:track_clock) == 2
  use_this = drums_3 if track.look(:track_clock) == 3
  
  4.times do
    tick(:drum_clock)
    sample :drum_bass_soft if use_this.look(:drum_clock) == 0
    sample :tabla_ghe1 if use_this.look(:drum_clock) == 1
    sample :drum_cowbell if use_this.look(:drum_clock) ==2
    sleep 0.25
  end
  
end