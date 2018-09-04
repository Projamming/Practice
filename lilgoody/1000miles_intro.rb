# TITLE: A Thousand Miles intro (Vanessa Carlton)
# FILE: 1000miles_intro.rb
# AUTHOR: lilgoody
# DATE: 8/30/18
# DESC: Attempt to recreate the well-known intro to Vanessa Carlton's A Thousand Miles

use_bpm 95
use_synth :piano

#piano sounds most like the original, but lacks the ability to sustain the note
#another synth might sound less choppy

play :B4
sleep 0.25

play :B5
play :E4, sustain: 1.5, amp: 0.5 #harmony
sleep 0.25

play :B4
sleep 0.25

play :B5
sleep 0.25

play :Bb5
play :Gb4, sustain: 1.5, amp: 0.5 #harmony
sleep 0.25

play :B4
sleep 0.25

play :Bb5
sleep 0.25

play :Gb5, sustain: 2.5
play :Eb4, sustain: 2.5, amp: 0.5 #harmony
sleep 1.5

play :Eb5, sustain: 2
play :E4, sustain: 2, amp: 0.5 #harmony
sleep 0.5

play :Db5
sleep 0.25



play :B4        #second time
sleep 0.25

play :B5
play :E4, sustain: 1.5, amp: 0.5 #harmony
sleep 0.25

play :B4
sleep 0.25

play :B5
sleep 0.25

play :Bb5
play :Gb4, sustain: 1.5, amp: 0.5 #harmony
sleep  0.25

play :B4
sleep 0.25

play :Bb5
sleep 0.25

play :Gb5, sustain: 2.5
play :Eb4, sustain: 2.5, amp: 0.5 #harmony
sleep 0.25

play :B4
sleep 0.25

play :Gb5
sleep 0.25

play :B4
sleep 0.25

play :Gb5
sleep 0.25

play :B4
sleep 0.25

play :Db5           #piano run
play :E4, sustain: 2
sleep 0.25

play :Eb5
sleep 0.25

play :Db5
sleep 0.25

play :B4
sleep 0.25



2.times do  #add percussion
  
  play :B5;  sample :drum_heavy_kick, amp: 2
  play :E4, sustain: 1.5, amp: 0.5 #harmony
  sleep 0.25
  
  play :B4
  sleep 0.25
  
  play :B5;  sample :drum_cymbal_closed, amp: 2
  sleep 0.25
  
  play :Bb5;  sample :drum_heavy_kick, amp: 2
  play :Gb4, sustain: 1.5, amp: 0.5 #harmony
  sleep  0.25
  
  play :B4
  sleep 0.25
  
  play :Bb5;  sample :drum_heavy_kick, amp: 2
  sleep 0.25
  
  play :Gb5, sustain: 2.5;  sample :drum_cymbal_closed, amp: 2
  play :Eb4, sustain: 2.5, amp: 0.5 #harmony
  sleep 0.25
  
  play :B4
  sleep 0.25
  
  play :Gb5
  sleep 0.25
  
  play :B4;  sample :drum_heavy_kick, amp: 2
  sleep 0.25
  
  play :Gb5;  sample :drum_cymbal_closed, amp: 2
  sleep 0.25
  
  play :B4;  sample :drum_heavy_kick, amp: 2
  sleep 0.25
  
  play :Db5;  sample :drum_heavy_kick, amp: 2        #run
  play :E4, sustain: 2
  sleep 0.25
  
  play :Eb5;  sample :drum_heavy_kick, amp: 2
  sleep 0.25
  
  play :Db5;  sample :drum_cymbal_closed, amp: 2
  sleep 0.25
  
  play :B4
  sleep 0.25
  
end



