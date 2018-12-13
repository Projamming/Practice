#liveloop practice

snare = :drum_snare_soft
bass = :drum_bass_hard

define :drum1 do
  6.times do
    beats = (ring snare, bass, snare, bass, snare, bass)
    sample beats.tick
    sleep 0.5
  end
end

define :drum2 do
  6.times do
    beats = (ring bass, bass, snare, bass, bass, snare)
    sample beats.tick
    sleep 0.25
  end
end

define :drum3 do
  6.times do
    beats = (ring bass, bass, bass, snare, snare, bass)
    sample beats.tick
    sleep 0.5
  end
end

live_loop :control do
  controller = 3
  drum1 if controller == 1
  drum2 if controller == 2
  drum3 if controller == 3
end