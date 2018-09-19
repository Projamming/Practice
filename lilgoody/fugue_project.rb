# TITLE: Fugue Project: Michael Jackson's "Billie Jean"
# FILE: fugue_project.rb
# AUTHOR: lilgoody
# DATE: 9/10/18
# DESC: A lesson in fugues. I found this composition online in the midst of my fugue research, and I was
#       excited to explore the idea of fugues in modern music after to listening to a few pieces from the
#       Baroque period. The "subject" of this fugue mimics the bassline from Michael Jackson's "Billie Jean".
#       This fugue is made of two independent melodic lines, both inspired by "Billie Jean", played in different
#       keys while still in harmony; this style of composition is known as counterpoint. I faced a challenge in
#       translating each measure into a ring, as it was difficult to figure out how to use the ticks correctly.
#       After Thursday's class, I was able to separate and name each clock so that each one could operate independently.

#CITATIONS: https://www.youtube.com/watch?v=t2hUfIRt4o4  (@1:15)
#           https://www.youtube.com/watch?v=vAFETgpt9PA&t=98s



use_bpm 135
use_synth :piano

define :left_hand_melody do
  16.times do   #measures 1&2 / left hand
    LH12_notes = (ring :D4, :A3, :C4, :D4, :C4, :A3, :G3, :A3)                    #Billie Jean melody in left hand - "subject"
    LH12_sleep = (ring 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
    LH12_release = (ring 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25)
    play LH12_notes.tick(:LH12_notes), release: LH12_release.tick(:LH12_release)  #early release - staccato notes
    sleep LH12_sleep.tick(:LH12_sleep)
  end
  8.times do   #measure 3 / left hand
    LH3_notes = (ring :D3, :E3, :Fs3, :Gs3, :A3, :B3, :C4, :B3)
    LH3_sleep = (ring 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
    play LH3_notes.tick(:LH3_notes); sleep LH3_sleep.tick(:LH3_sleep)
  end
  5.times do   #measure 4 / left hand                                             #second melodic line comes in here
    LH4_notes = (ring :C4, :B3, :C4, :B3, :Gs3)
    LH4_sleep = (ring 1, 0.5, 0.5, 1.5, 0.5)
    play LH4_notes.tick(:LH4_notes); sleep LH4_sleep.tick(:LH4_sleep)
  end
  5.times do   #measure 5 / left hand
    LH5_notes = (ring :A3, :C4, :B3, :C4, :E3)
    LH5_sleep = (ring 0.5, 0.5, 0.5, 0.5, 2)
    play LH5_notes.tick(:LH5_notes); sleep LH5_sleep.tick(:LH5_sleep)
  end
  6.times do   #measure 6 / left hand
    LH6_notes = (ring :F3, :A3, :D4, :C4, :B3, :G3)
    LH6_sleep = (ring 1, 1, 0.5, 0.5, 0.5, 0.5)
    play LH6_notes.tick(:LH6_notes); sleep LH6_sleep.tick(:LH6_sleep)
  end
  6.times do   #measure 7 / left hand
    LH7_notes = (ring :E3, :G3, :C4, :B3, :A3, :F3)
    LH7_sleep = (ring 1, 1, 0.5, 0.5, 0.5, 0.5)
    play LH7_notes.tick(:LH7_notes); sleep LH7_sleep.tick(:LH7_sleep)
  end
  6.times do   #measure 8 / left hand
    LH8_notes = (ring :D3, :F3, :B3, :A3, :Gs3, :E3)
    LH8_sleep = (ring 1, 1, 0.5, 0.5, 0.5, 0.5)
    play LH8_notes.tick(:LH8_notes); sleep LH8_sleep.tick(:LH8_sleep)
  end
  play :A3, sustain: 2; sleep 4
end

define :right_hand_melody do
  16.times do   #measures 4&5 / right hand                                         #subject reintroduced in second melodic line
    RH45_notes = (ring :A4, :E4, :G4, :A4, :G4, :E4, :D4, :E4)                     #now in a different key
    RH45_sleep = (ring 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5)
    RH45_release = (ring 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25)
    play RH45_notes.tick(:RH45_notes), release: RH45_release.tick(:RH45_release)
    sleep RH45_sleep.tick(:RH45_sleep)
  end
  6.times do   #measure 6 / right hand
    RH6_notes = (ring :D4, :E4, :F4, :E4, :F4, :D4)
    RH6_sleep = (ring 0.5, 0.5, 0.5, 0.5, 1, 1)
    play RH6_notes.tick(:RH6_notes); sleep RH6_sleep.tick(:RH6_sleep)
  end
  6.times do   #measure 7 / right hand
    RH7_notes = (ring :C4, :D4, :E4, :D4, :E4, :C4)
    RH7_sleep = (ring 0.5, 0.5, 0.5, 0.5, 1, 1)
    play RH7_notes.tick(:RH7_notes); sleep RH7_sleep.tick(:RH7_sleep)
  end
  6.times do   #measure 8 / right hand
    RH8_notes = (ring :B3, :C4, :D4, :C4, :D4, :B3)
    RH8_sleep = (ring 0.5, 0.5, 0.5, 0.5, 1, 1)
    play RH8_notes.tick(:RH8_notes); sleep RH8_sleep.tick(:RH8_sleep)
  end
  play :Cs4, sustain: 2; sleep 4
end



in_thread do
  loop do
    left_hand_melody
  end
end

loop do
  sleep 12                                                                        #right hand melody comes in after 3 measures
  right_hand_melody
end









