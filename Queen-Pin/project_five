use_bpm 79
live_loop :effect do
  sample :vinyl_hiss
  sleep 9
end

define :chords_intro do
  use_synth :piano
  use_synth_defaults amp: 2
  
  chords = (ring
            chord(:b3, :minor),
            chord(:a3, :major),
            chord(:fs3, :minor),
            chord(:fs2, :minor),
            chord(:e3, :major),
            chord(:a3, :major),
            chord(:fs3, :minor7),
            chord(:g3, :major7),
            )
  sleeps = (ring 1, 1, 2, 4, 1, 1, 1, 5)
  play chords.tick(:clock1), sustain: sleeps.look(:clock1)
  sleep sleeps.look(:clock1)
end

define :chords_verse do
  use_synth :blade
  
  chords = (ring
            chord(:b3, :minor),
            chord(:a3, :major),
            chord(:fs3, :minor),
            chord(:fs2, :minor),
            chord(:e3, :major),
            chord(:a3, :major),
            chord(:fs3, :minor7),
            chord(:g3, :major7),
            )
  sleeps = (ring 1, 1, 2, 4, 1, 1, 1, 5)
  play chords.tick(:clock2), sustain: sleeps.look(:clock2)
  sleep sleeps.look(:clock2)
  
end

define :chords_outro do
  use_synth :hollow
  use_synth_defaults amp: 2
  
  chords = (ring
            chord(:b3, :minor),
            chord(:a3, :major),
            chord(:fs3, :minor),
            chord(:fs2, :minor),
            chord(:e3, :major),
            chord(:a3, :major),
            chord(:fs3, :minor7),
            chord(:g3, :major7),
            )
  sleeps = (ring 1, 1, 2, 4, 1, 1, 1, 5)
  play chords.tick(:clock3), sustain: sleeps.look(:clock3)
  sleep sleeps.look(:clock3)
end

define :drums do
  tms = :drum_tom_mid_soft
  tmh = :drum_tom_mid_hard
  ths = :drum_tom_hi_soft
  thh = :drum_tom_hi_hard
  
  drum = (ring tms, tmh, ths, thh)
  
  tick(:drum_clock)
  sample drum.look(:drum_clock), amp: 0.2
  sleep 0.25
end

define :bass do
  bsh = :drum_bass_hard
  bss = :drum_bass_soft
  el = :elec_fuzz_tom
  
  bassline = (ring bsh, bss, bsh, bss, el, el)
  amps = (ring 1, 1, 1, 1, 0.5, 0.5)
  sleeps = (ring 0.75, 1, 0.75, 1.5, 2, 2)
  
  tick(:bass_clock)
  sample bassline.look(:bass_clock), amp: amps.look(:bass_clock)
  sleep sleeps.look(:bass_clock)
end

define :one do
  chords_intro
end

define :two do
  drums
end

define :three do
  in_thread do
    loop do
      chords_verse
    end
  end
  in_thread do
    loop do
      drums
    end
  end
  loop do
    bass
  end
end

define :four do
  in_thread do
    loop do
      drums
    end
  end
  loop do
    chords_verse
  end
end

define :five do
  
  chords_outro
  
end

live_loop :go do
 one
# change this as the song plays to incorporate the different sections
end
