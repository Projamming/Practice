# TITLE: Cocaine Jesus chorus (by Rainbow Kitten Surprise)
# FILE: cj_chorus.rb
# AUTHOR: lilgoody
# DATE: 9/12/18
# DESC: Attempt to recreate the harmonies in the chorus of RKS's Cocaine Jesus by ear.


use_bpm 120
use_synth :pluck

in_thread do
  2.times do
    3.times do
      play :D5; sleep 0.5
      play :D5; sleep 0.5
      play :D5; sleep 1
      play :D5; sleep 1
      play :E5; sleep 0.5
      play :Fs5; sleep 0.5
    end
    
    play :D5; sleep 0.5
    play :D5; sleep 0.5
    play :Db5; sleep 1
    play :Db5; sleep 1
    play :Db5; sleep 2
    
    play :D5; sleep 0.5
    play :D5; sleep 0.5
    play :D5; sleep 0.5
    play :D5; sleep 0.5
    play :Fs5; sleep 1
    
    2.times do
      play :D5; sleep 0.5
      play :D5; sleep 0.5
      play :D5; sleep 1
      play :D5; sleep 1
      play :E5; sleep 0.5
      play :Fs5; sleep 0.5
    end
    
    play :D5; sleep 0.5
    play :D5; sleep 0.5
    play :Db5; sleep 1
    play :Db5; sleep 1
    play :Db5; sleep 1
    play :D5; sleep 4
  end
end

in_thread do
  2.times do
    sleep 1
    play :B4; sleep 1
    play :B4; sleep 3
    
    play :B4; sleep 1
    play :A4; sleep 3
    
    play :A4; sleep 1
    play :Gb4; sleep 3
    
    play :B4; sleep 1
    play :A4; sleep 1
    play :Gb4; sleep 1
    play :E4; sleep 1
    
    play :B4; sleep 0.5
    play :B4; sleep 0.5
    play :B4; sleep 0.5
    play :B4; sleep 2
    
    play :B4; sleep 0.5
    play :A4; sleep 0.5
    play :A4; sleep 0.5
    play :A4; sleep 2
    
    play :B4; sleep 0.5
    play :A4; sleep 0.5
    play :A4; sleep 0.5
    play :A4; sleep 2
    
    play :B4; sleep 0.5
    play :B4; sleep 0.5
    play :B4; sleep 0.5
    play :B4; sleep 1
    play :A4; sleep 1
    play :Gb4; sleep 5
  end
end

17.times do
  sleep 1
  sample :drum_bass_hard; sleep 0.75
  sample :drum_bass_hard; sleep 2.25
end





