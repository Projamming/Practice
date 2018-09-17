#TITLE: Bach's BWV 856 Fugue XI (in 3 voices)
#FILE: Song7.rb
#AUTHOR: HomieWippman
#DATE: 9/15/18
#DESC: Version 2
#The fugue which I choose is a piece of work made by the composer Johann Sebastian Bach
#The song's structure initially was quite difficult to grasp and code
#The notes themselves were easy to see and code individually
#But the vast number of notes, the fast tempo and changing sections within the sheet music made the song challenging
#I found that the song became easier to follow and code as I got further into the piece
#Watching the youtube video below helped me better understand how fugues are formatted and operate:
#https://www.youtube.com/watch?v=vAFETgpt9PA
#Once I finished the song, I realized that the code and notes took up too much space and could be better organized
#In looking at how people formatted their code, I saw how Caitlin structured her code
#She used a more vertical-style list which made matching the notes with the durations visually easy
#She was able to successfully condense the code, despite the song she choose also being quite long
#Additionally, a while ago in TA hours, Jin taught me how to use lists in a more effective manner with these brackets "[ ]"
#This influenced me to restructure my code using a similar style
#Credit to Caitlin for coming up with this efficient structure and posting it
#Credit also due to Louise Thompson for helping me read the more advanced sheet music and  understand all of the notes

#Twice the default speed
use_bpm 140

use_synth :piano

#Code is divided into 3 sections
#This is because each part correlates to a different voice of the fugue (3 voices in total)
define :part1 do
  notes = [:r, :F3, :A3, :G3, :F3, :G3, :B3, :C3, :D3, :E3,
           :F3, :G3, :F3, :E3, :D3, :E3, :D3, :C3, :D3, :E3, :F3, :G3, :F3, :E3,
           :F3, :E3, :D3, :E3, :F3, :G3, :A3, :C4, :Bb3, :A3, :G3, :F3, :E3,
           :F3, :A3, :C4, :B3, :E4, :D4, :D4, :C4, :C4, :D4, :C4, :Bb3,
           :C4, :E3, :F3, :G3, :A3, :Bb3, :C4, :Bb3, :A3, :G3, :A3, :G3, :F3, :G3, :A3, :Bb3,
           :C4, :Bb3, :A3, :Bb3, :C4, :D4, :E4, :G4, :F4, :E4, :D4, :E4, :F4]
  durations = [12, 1, 1, 1, 1, 1, 0.5, 0.5, 0.5, 0.5,
               1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1, 1, 1,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 3,
               1, 2, 1, 2, 1, 2, 3.5, 0.5, 1, 1, 1, 1, 1,
               1, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 3]
  play_pattern_timed notes, durations
end

define :part2 do
  notes = [:C4, :D4, :C4, :Bb3, :C4, :E3, :F3, :G3, :A3, :Bb3, :C4, :Bb3, :A3, :G3,
           :A3, :G3, :F3, :G3, :A3, :Bb3, :C4, :Bb3, :A3, :Bb3, :C4, :D4, :E4, :G4, :F4, :E4, :D4, :C4,
           :B3, :C4, :Bb3, :A3, :Bb3, :A3, :G3, :A3, :Bb3, :C3, :A3, :D3, :E3, :G3, :C3, :C3,
           :F3, :E3, :A3, :G3, :C4, :C4, :B3, :A3, :G3, :F3, :E3, :Bb3, :A3, :G3, :F3, :E3, :D3, :E3, :F3, :G3,
           :A3, :r]
  durations = [1, 1, 1, 1, 1, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
               3, 1, 1, 1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 2, 1, 1, 1, 1, 5,
               1, 2, 1, 2, 1.5, 0.5, 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
               1,14]
  play_pattern_timed notes, durations
end

define :part3 do
  notes = [:r, :C3, :D3, :C3, :Bb2, :C3, :E2, :F2, :G2, :A2, :Bb2, :C3, :Bb2, :A2, :G2,
           :A2, :G2, :F2, :G2, :A2, :Bb2, :C3, :B2, :A2, :B2, :C3, :D3, :E3, :G3, :F3, :E3, :D3, :C3,
           :B2, :C3, :D3, :E3, :F3, :Bb3, :A3, :C4, :Bb3, :A3, :G3, :F3, :E3, :F3, :r]
  durations = [27, 1, 1, 1, 1, 1, 0.5, 0.5, 0.5, 0.5, 1, 0.5, 0.5, 0.5, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
               3, 1, 0.5, 0.5, 1, 3,
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 3, 2, 7]
  play_pattern_timed notes, durations
end

#The song plays here in a loop
#Every part is connected and played simultaneously with in_thread
#The durations for every part are 71 beats
in_thread do
  loop do
    part1
    sleep 1
  end
end

in_thread do
  loop do
    part2
    sleep 1
  end
end
in_thread do
  loop do
    part3
    sleep 1
  end
end

