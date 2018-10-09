def six_eight #using this portion to create a 6/8 beat
  sample :drum_heavy_kick
  sleep 0.75
  sample :drum_bass_soft
  sleep 0.75
  sample :drum_bass_soft
  sleep 0.75
end

live_loop :beat do
  six_eight
end

live_loop :overlay do
  sample :drum_tom_lo_hard, amp: 0.5 #I noticed that these drum_tom samples sounded very similar to the TOMBAK, which is an instrument commonly used in Iranian rhythms.
  sleep 0.75
  sample :drum_tom_hi_hard, amp: 0.5 #I made the amps a little softer here because they were a tad overpowering and I couldn't hear the 6/8 beat in the background
  sleep 0.5
  sample :drum_tom_hi_hard, amp: 0.5
  sleep 0.5
  sample :drum_tom_mid_hard
  sleep 0.5
end
