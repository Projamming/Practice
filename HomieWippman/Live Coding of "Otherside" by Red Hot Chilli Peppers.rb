#TITLE: Live Coding of "Otherside" by Red Hot Chilli Peppers
#FILE: Song9.rb
#AUTHOR: HomieWippman
#DATE: 10/4/18
#DESC: Version 1.0 and Version 2.0 (All the way at the bottom after the Version 1.0 code)

#The sheet music for this song is available at:
#https://www.musicnotes.com/sheetmusic/mtd.asp?ppn=MN0130049
#I would highly recommend listening to both the piano version of the song (which can be heard in the link above) and the origonal
#The origonal version is on youtube, but there is no video which plays the correct begining
#The song is awesome, check it out on apple music or spotify if you can

use_bpm 124
#use_bpm rrand(104, 144)
use_synth :piano
#use_random_seed 555

notes_part1 = [:r,
               :r,
               :r,
               :r,
               :r, :E5, :E5, :E5, :D5,
               :C5, :D5, :C5, :C5, :C5, :C5,
               :C5, :r,
               :E5, :D5, :C5, :B4,
               :A4, :B4, :A4, :A4, :B4, :A4,
               :A4, :r, :A4, :E4,
               :E4, :r, :G4,
               :E5, :D5, :C5, :B4,
               :C5, :D5, :C5,
               :C5, :r,
               :C5, :C5, :C5, :C5, :E5,
               :E5, :D5, :C5, :B4]
durations_part1 = [4,
                   4,
                   4,
                   4,
                   1, 0.5, 0.5, 1, 1,
                   1, 0.5, 0.5, 0.5, 0.5, 1,
                   1, 3,
                   1, 1, 1, 1,
                   1, 0.5, 0.5, 1, 0.5, 0.5,
                   1, 2, 0.5, 0.5,
                   1, 2.5, 0.5,
                   1, 1, 1, 1,
                   3, 0.5, 0.5,
                   1, 3,
                   1, 1, 1, 0.5, 0.5,
                   1, 1, 1, 1]
#16 lines of notes and durations (64 beats total)

#For part2, I broke up the code into 2 subsections
#Section part2_1 lists the notes and durations for any non-whole notes which follow with the whole notes in part2_2
#Section part2_2 lists the notes and durations for all whole notes (and an extended half note, 3 beats) which start the measure
#This was done in order to allow notes with different durations and overlap to play simultaneously
notes_part2_1 = [:r,
                 :r,
                 :r,
                 :r,
                 :r, :E5, :E5, :E5, :D5,
                 :C5, :D5, :C5, :C5, :C5, :C5,
                 :r,
                 :E5, :D5, :C5, :B4,
                 :A4, :B4, :A4, :A4, :B4, :A4,
                 :A4, :A4, :E4,
                 :C4, :E4, :C4, :G4,
                 :E5, :D5, :C5, :B4,
                 :C5, :D5, :C5,
                 :r,
                 :C5, :C5, :C5, :C5, :E5,
                 :E5, :D5, :C5, :B4,]
durations_part2_1 = [4,
                     4,
                     4,
                     4,
                     1, 0.5, 0.5, 1, 1,
                     1, 0.5, 0.5, 0.5, 0.5, 1,
                     4,
                     1, 1, 1, 1,
                     1, 0.5, 0.5, 1, 0.5, 0.5,
                     3, 0.5, 0.5,
                     3, 0.5, 0, 0.5,
                     1, 1, 1, 1,
                     3, 0.5, 0.5,
                     4,
                     1, 1, 1, 0.5, 0.5,
                     1, 1, 1, 1]
notes_part2_2 = [:r,
                 :r,
                 :r,
                 :r,
                 :A4, :E4,
                 :A4, :F4,
                 :C5, :G4, :E4,
                 :G4,
                 :E4,
                 :C4,
                 :E4, :r,
                 :G4,
                 :E4,
                 :C5, :A4, :F4,
                 :E4, :G4,
                 :G4, :B4]
durations_part2_2 = [4,
                     4,
                     4,
                     4,
                     4, 0,
                     4, 0,
                     4, 0, 0,
                     4,
                     4,
                     4,
                     3, 1,
                     4,
                     4,
                     4, 0, 0,
                     4, 0,
                     4, 0]
#16 lines of notes and durations (64 beats total) for each part subsection

#For part3, I also broke up the code into 2 subsections
#Section part2_1 lists all of the notes in the upper part of the measure, for the first 2 measures and measure 4
#For all other measure, it lists all of the notes
#Section part2_2 lists all of the notes in the lower part of the measure, for the first 2 measures and measure 4
#For all other measures, it lists only rest
notes_part3_1 = [:E3, :E3, :E3, :E3,
                 :A3, :A3, :A3, :B3, :A3, :G3,
                 :C3, :C3, :C3, :C3, :C3, :E2,
                 :D3, :D3, :D3, :D3,
                 :A2, :A2, :A2, :A2, :G2,
                 :F2, :F2, :F2, :F2, :F2,
                 :C3, :C3, :C3, :C3, :C3, :E2,
                 :G2, :C3, :B2, :G2,
                 :A2, :A2, :A2, :A2, :G2,
                 :F2, :F2, :F2, :F2, :F2,
                 :C3, :C3, :C3, :C3, :C3, :E2,
                 :G2, :G2, :G2, :G2,
                 :A2, :A2, :A2, :A2, :G2,
                 :F2, :F2, :F2, :F2, :F2,
                 :C3, :C3, :C3, :C3, :C3, :E2,
                 :G2, :G2, :G2, :G2, :G2, :G2]
durations_part3_1 = [1.5, 0.5, 1, 1,
                     1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                     1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                     1.5, 0.5, 1, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                     1, 1, 1, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                     1.5, 0.5, 1, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                     1, 0.5, 0.5, 0.5, 0.5, 1]
notes_part3_2 = [:A2, :A2, :A2, :A2, :G2,
                 :F2, :F2, :F2, :F2, :F2,
                 :E3,
                 :G2, :G2, :G2, :G2,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r,
                 :r]
durations_part3_2 = [1.5, 0.5, 0.5, 0.5, 1,
                     1.5, 0.5, 0.5, 0.5, 1,
                     4,
                     1.5, 0.5, 1, 1,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4,
                     4]
#16 lines of notes and durations (64 beats total) for each part subsection
#I understand that I could get rid of the long list of 4 rest measures
#However, I decided to leave them in the code, despite that they take up space, to make the code follow suit and more understandable

#The song parts play here in multiple live_loops
#I needed to separate the lists into separate live_loops in order to play them simultaneously
#This also allows me to easily change each part of the song independently, rather than create a universal change in the code

live_loop :part1, sync: :otherside2 do
  stop
  #use_synth :prophet
  play_pattern_timed notes_part1, durations_part1#, amp: 0.3
end

live_loop :part2, sync: :otherside3 do
  stop
  #use_synth :prophet
  cue :otherside2
  play_pattern_timed notes_part2_1, durations_part2_1#, amp: 0.3
end

live_loop :part3, sync: :otherside4 do
  #stop
  #use_synth :blade
  #use_synth :sine
  cue :otherside3
  play_pattern_timed notes_part2_2, durations_part2_2#, sustain: rrand(0.75,1.25)
end

live_loop :part4, sync: :otherside5 do
  #stop
  #use_synth :blade
  #use_synth :sine
  cue :otherside4
  play_pattern_timed notes_part3_1, durations_part3_1#, sustain: rrand(0.75,1.25)
end

live_loop :part5 do
  #stop
  #use_synth :blade
  #use_synth :sine
  cue :otherside5
  play_pattern_timed notes_part3_2, durations_part3_2#, sustain: rrand(0.75,1.25)
end


#DESC: Version 2.0 (Starts here)

use_bpm 124
#use_bpm rrand(104, 144)
use_synth :piano

#The song parts play here in multiple live_loops
#I needed to separate the lists into separate live_loops in order to play them simultaneously
#This also allows me to easily change each part of the song independently, rather than create a universal change in the code

live_loop :part1, sync: :otherside2 do
  #stop
  notes_part1 = [:r,
                 :r,
                 :r,
                 :r,
                 :r, :E5, :E5, :E5, :D5,
                 :C5, :D5, :C5, :C5, :C5, :C5,
                 :C5, :r,
                 :E5, :D5, :C5, :B4,
                 :A4, :B4, :A4, :A4, :B4, :A4,
                 :A4, :r, :A4, :E4,
                 :E4, :r, :G4,
                 :E5, :D5, :C5, :B4,
                 :C5, :D5, :C5,
                 :C5, :r,
                 :C5, :C5, :C5, :C5, :E5,
                 :E5, :D5, :C5, :B4]
  durations_part1 = [4,
                     4,
                     4,
                     4,
                     1, 0.5, 0.5, 1, 1,
                     1, 0.5, 0.5, 0.5, 0.5, 1,
                     1, 3,
                     1, 1, 1, 1,
                     1, 0.5, 0.5, 1, 0.5, 0.5,
                     1, 2, 0.5, 0.5,
                     1, 2.5, 0.5,
                     1, 1, 1, 1,
                     3, 0.5, 0.5,
                     1, 3,
                     1, 1, 1, 0.5, 0.5,
                     1, 1, 1, 1]
  #16 lines of notes and durations (64 beats total)
  #use_synth :prophet
  tick
  play notes_part1.look
  #amp: 0.3
  sleep durations_part1.look
end

#For part2, I broke up the code into 2 subsections
#Section part2_1 lists the notes and durations for any non-whole notes which follow with the whole notes in part2_2
#Section part2_2 lists the notes and durations for all whole notes (and an extended half note, 3 beats) which start the measure
#This was done in order to allow notes with different durations and overlap to play simultaneously

live_loop :part2, sync: :otherside3 do
  #stop
  notes_part2_1 = [:r,
                   :r,
                   :r,
                   :r,
                   :r, :E5, :E5, :E5, :D5,
                   :C5, :D5, :C5, :C5, :C5, :C5,
                   :r,
                   :E5, :D5, :C5, :B4,
                   :A4, :B4, :A4, :A4, :B4, :A4,
                   :A4, :A4, :E4,
                   :C4, :E4, :C4, :G4,
                   :E5, :D5, :C5, :B4,
                   :C5, :D5, :C5,
                   :r,
                   :C5, :C5, :C5, :C5, :E5,
                   :E5, :D5, :C5, :B4,]
  durations_part2_1 = [4,
                       4,
                       4,
                       4,
                       1, 0.5, 0.5, 1, 1,
                       1, 0.5, 0.5, 0.5, 0.5, 1,
                       4,
                       1, 1, 1, 1,
                       1, 0.5, 0.5, 1, 0.5, 0.5,
                       3, 0.5, 0.5,
                       3, 0.5, 0, 0.5,
                       1, 1, 1, 1,
                       3, 0.5, 0.5,
                       4,
                       1, 1, 1, 0.5, 0.5,
                       1, 1, 1, 1]
  #use_synth :prophet
  tick
  cue :otherside2
  play notes_part2_1.look
  #amp: 0.3
  sleep durations_part2_1.look
end

live_loop :part3, sync: :otherside4 do
  #stop
  notes_part2_2 = [:r,
                   :r,
                   :r,
                   :r,
                   :A4, :E4,
                   :A4, :F4,
                   :C5, :G4, :E4,
                   :G4,
                   :E4,
                   :C4,
                   :E4, :r,
                   :G4,
                   :E4,
                   :C5, :A4, :F4,
                   :E4, :G4,
                   :G4, :B4]
  durations_part2_2 = [4,
                       4,
                       4,
                       4,
                       4, 0,
                       4, 0,
                       4, 0, 0,
                       4,
                       4,
                       4,
                       3, 1,
                       4,
                       4,
                       4, 0, 0,
                       4, 0,
                       4, 0]
  #16 lines of notes and durations (64 beats total) for each part subsection
  #use_synth :blade
  tick
  cue :otherside3
  play notes_part2_2.look
  sleep durations_part2_2.look
end

#For part3, I also broke up the code into 2 subsections
#Section part2_1 lists all of the notes in the upper part of the measure, for the first 2 measures and measure 4
#For all other measure, it lists all of the notes
#Section part2_2 lists all of the notes in the lower part of the measure, for the first 2 measures and measure 4
#For all other measures, it lists only rest

live_loop :part4, sync: :otherside5 do
  #stop
  notes_part3_1 = [:E3, :E3, :E3, :E3,
                   :A3, :A3, :A3, :B3, :A3, :G3,
                   :C3, :C3, :C3, :C3, :C3, :E2,
                   :D3, :D3, :D3, :D3,
                   :A2, :A2, :A2, :A2, :G2,
                   :F2, :F2, :F2, :F2, :F2,
                   :C3, :C3, :C3, :C3, :C3, :E2,
                   :G2, :C3, :B2, :G2,
                   :A2, :A2, :A2, :A2, :G2,
                   :F2, :F2, :F2, :F2, :F2,
                   :C3, :C3, :C3, :C3, :C3, :E2,
                   :G2, :G2, :G2, :G2,
                   :A2, :A2, :A2, :A2, :G2,
                   :F2, :F2, :F2, :F2, :F2,
                   :C3, :C3, :C3, :C3, :C3, :E2,
                   :G2, :G2, :G2, :G2, :G2, :G2]
  durations_part3_1 = [1.5, 0.5, 1, 1,
                       1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                       1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                       1.5, 0.5, 1, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                       1, 1, 1, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                       1.5, 0.5, 1, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                       1, 0.5, 0.5, 0.5, 0.5, 1]
  #use_synth :blade
  tick
  cue :otherside4
  play notes_part3_1.look
  sleep durations_part3_1.look
end

live_loop :part5 do
  #stop
  notes_part3_2 = [:A2, :A2, :A2, :A2, :G2,
                   :F2, :F2, :F2, :F2, :F2,
                   :E3,
                   :G2, :G2, :G2, :G2,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r,
                   :r]
  durations_part3_2 = [1.5, 0.5, 0.5, 0.5, 1,
                       1.5, 0.5, 0.5, 0.5, 1,
                       4,
                       1.5, 0.5, 1, 1,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4,
                       4]
  #16 lines of notes and durations (64 beats total) for each part subsection
  #I understand that I could get rid of the long list of 4 rest measures
  #However, I decided to leave them in the code, despite that they take up space, to make the code follow suit and more understandable
  #use_synth :blade
  tick
  cue :otherside5
  play notes_part3_2.look
  sleep durations_part3_2.look
end
