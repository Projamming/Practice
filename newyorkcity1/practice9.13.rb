# Welcome to Sonic Pi v3.1
# PRACTICE_SEPT_13

define :rythm do
  
  7.times do
    drums = (ring tom, bass, tom, bass,
             tom, tom, tom, bass)
    drums_sleep = (ring 0.5, 0.25, 0.5, 0.25, 0.5, 0.5, 0.5, 0.25)
    drums_amps = (ring 2, 1, 2, 1, 2, 2, 2, 1)
    
    sample drums.tick (:drums_clock), amp:drums_amps.tick (:amps_clock)
    sleep drums_sleep.tick (:sleep_clock)
  end
end

loop do
  
  bpm_ring = (ring 60, 100, 60, 100)
  use bpm_ring.tick (:bpm_clock)
  print bmp_ring.look
  rythm
  
end


