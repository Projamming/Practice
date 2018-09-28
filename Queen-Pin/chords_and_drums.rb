use_bpm 60
use_synth :piano
chord_progress = [chord(:C4, :minor),
                  chord(:Bb4, :major),
                  chord(:Ab4, :major),
                  chord(:Bb4, :major)
                  ]

in_thread do
  
  loop do
    tick(:drum)
    bs = :drum_bass_hard
    snp = :perc_snap
    drums = (ring bs, snp, bs, bs, snp)
    sample drums.look(:drum)
    sleep 0.5
  end
end

loop do
  tick(:call)
  call = (ring 0, 1, 2, 3)
  play_pattern_timed chord_progress[call.look(:call)], 0.2
  
end
