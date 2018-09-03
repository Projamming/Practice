#Simple Beat

use_bpm 130

4.times do
  sample :drum_bass_hard, amp:2
  sleep 1
end

live_loop :kick do
  sample :drum_bass_hard
  sleep 1
  sample :drum_bass_hard
  sleep 1
  sample :drum_bass_hard, amp:2
  sleep 1
  sample :drum_bass_hard
  sleep 1
end

live_loop :snare do
  sleep 1
  live_loop :snare do
    sample :drum_snare_hard
    sleep 2
  end
end

live_loop :tom1 do
  sample :drum_tom_mid_hard
  sleep 4
end

live_loop :tom2 do
  sample :drum_tom_lo_hard
  sleep 8
end

live_loop :hihat do
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 1
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
  sample :drum_cymbal_closed
  sleep 0.5
end


#Bass

use_synth :sine

live_loop :bass do
  play :E2, amp:5
  sleep 2.5
  play :E2, amp:4
  sleep 1.5
  play :E2, amp:5
  sleep 2.5
  play :E2, amp:4
  sleep 1.5
  play :E2, amp:5
  sleep 2.5
  play :E2, amp:4
  sleep 1.5
  play :E2, amp:5
  sleep 2.5
  
  #fill
  
  play :E2, amp:4, sustain: 0.1
  sleep 0.25
  play :G2, amp:4, sustain: 0.1
  sleep 0.25
  play :A2, amp:4, sustain: 0.1
  sleep 0.25
  play :B2, amp:4, sustain: 0.1
  sleep 0.25
  play :A2, amp:4, sustain: 0.1
  sleep 0.5
  
end
