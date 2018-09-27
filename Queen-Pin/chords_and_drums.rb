use_bpm 60
use_synth :piano
chord_progress = [chord(:C3, :minor),
                  chord(:Bb3, :major),
                  chord(:Ab3, :major),
                  chord(:Bb3, :major)
                  ]



in_thread do
  
  loop do
    tick(:drum)
    bs = sample :drum_bass_soft
    snp = sample :perc_snap
    drums = (ring bs, snp, bs, bs, snp)
    drums.look(:drum)
    sleep 0.5
  end
end

loop do
  tick(:call)
  call = (ring 0, 1, 2, 3)
  play_pattern_timed chord_progress[call.look(:call)], 0.2
  
end
