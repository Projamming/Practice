#TITLE: Randomness Applied to "This is America" by Childish Gambino
#FILE: Song8.rb
#AUTHOR: Homie Wippman
#DATE: 9/27/18
#DESC: Version 1
#This song from the list on piazza is by Donald Glover, known as the artist Childish Gambino
#It belongs to the hip-hop/rap genre
#My code uses only a piano
#The section of the song I choose plays from lines 60 (second measure) to 75
#The song plays with 2 simultaneous parts
#These 2 parts differ in that one is on the treble clef while the other is on the bass clef
#Understanding and working with the bass clef was a challenging but cool task
#This was the first time I coded music which was not only on the treble clef
#I found the song's sheet music online at:
#https://musescore.com/user/16006641/scores/5089818
#Thanks and credit due to Louise Thompson for helping me greatly refine the code

#The sheet music version uses a bpm of 116
#The bpm of my code is slightly randomized within 5 beats from 111 to 121 (around twice default speed)
#This produces only a slight variation, giving the pace of the notes a less mechanical feel, while still being precise
#However, the randomization in this code collectively make the song's sound deviate somewhat from the original
use_bpm rrand(111, 121)

use_synth :piano

#Code is divided into 2 sections
#Both parts are connected and played simultaneously using code at the end

notes_part1 = [:r, :Gs3, :Gs3, :Gs3, :Gs3, :As3, :Fs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Cs3, :Gs3, :Cs3, :Gs3, :As2, :Gs3, :Ds3, :As2,
               :r, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Cs3, :Gs3, :Cs3, :Gs3, :As2, :Gs3, :As2,
               :r, :Gs3, :Gs3, :Gs3, :Gs3, :As3, :Fs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :r, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Gs3,
               :r, :Gs3, :Gs3, :Gs3, :Gs3, :As3, :Fs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :r, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Gs3,
               :r, :Gs3, :Gs3, :Gs3, :Gs3, :As3, :Fs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :r, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Ds3,
               :Gs3, :Ds3, :Gs3, :Gs3, :Gs3, :Ds3, :Gs3, :Gs3, :Gs3]
durations_part1 = [6, 0.5, 0.25, 0.25, 0.25, 0, 0.25, 0.5,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.25, 0, 0.25, 0, 0.125, 0, 0.375, 0, 0,
                   2, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.25, 0, 0.25, 0, 0.125, 0, 0.375, 0,
                   2, 0.5, 0.25, 0.25, 0.25, 0, 0.25, 0.5,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   2, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   2, 0.5, 0.25, 0.25, 0.25, 0, 0.25, 0.5,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   2, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   2, 0.5, 0.25, 0.25, 0.25, 0, 0.25, 0.5,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   2, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333,
                   0.5, 0.5, 1, 0.333, 0.333, 0.333, 0.333, 0.333, 0.333]
#16 lines of durations (68 beats total)

notes_part2 = [:F2, :F2, :F2, :F2, :F2, :F2, :F2, :F2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2,
               :Ds3, :Ds2, :As2, :Ds3, :Ds2, :As2, :As2,
               :Gs2, :Gs2, :Cs2, :As2]
durations_part2 = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 1,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 1,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5,
                   0.5, 0, 0.5, 1.5, 0, 0.5, 1,
                   1, 2, 0.5, 0.5]
#17 lines of durations (68 beats total)

#The song parts play here in a loop with in_thread
in_thread do
  loop do
    tick
    play_pattern_timed notes_part1, durations_part1, amp: rrand(0.75, 1.25), sustain: rrand(0.8,1)
    #The amp and sustain changes after every time the song repeats
    #Adding randomness to the sustain in my opinion did not improve the flow, but does convey an example of randomness
    use_random_seed 703
    #Random seed is used
  end
end

in_thread do
  loop do
    tick
    with_fx :reverb do
      play_pattern_timed notes_part2, durations_part2, amp: rrand(0.4, 0.6), sustain: rrand(0.8,1)
      use_random_seed 610
    end
  end
end



