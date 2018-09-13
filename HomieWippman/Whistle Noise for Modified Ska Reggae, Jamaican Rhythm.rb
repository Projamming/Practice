#TITLE: Whistle Noise for Modified Ska Reggae, Jamaican Rhythm
#FILE: Song6.rb
#AUTHOR: HomieWippman
#DATE: 9/7/18
#DESC: Version 2

#For my Project 1, I wanted to add a whistle noise on top of my Ska rhythm
#I intended to produce a sound similar to the whistle from "Don't Worry Be Happy" by Bobby McFerrin
#However, there is no whistle noise or closely similar preexisting sample in sonic pi
#So, I produced my own whistle sound, which does not sound exactly like a whistle
#I found it to be highly challenging to recreate the sound
#My noise cannot replace the authentic whistle, but it does exhibit the same structure and tone as the original
#The whistle plays in full and continuously, just as in Bobby McFerrin's song
#To create the whistle, I implemented a ring with a series of 13 distinctive notes
#After finishing the whistle noise and overlapping it with my rhythm, I realized that the two sound horrible together
#Thus, I did not include the whistle in my Project 1, instead uploading it here
#Credit due to Louise Thompson, who helped me read the sheet music and improve the flow of the notes


live_loop :whistle, sync: :whistle1 do
  use_bpm 180
  tick
  whistle_beat = (ring 1, 0, 2, 3, 4, 5, 6, 7, 0, 8, 5, 9, 5, 8, 10, 0, 7, 8, 5, 9, 5, 8, 10, 0, 11, 5, 9, 12, 13, 0, 0, 0, 0, 0)
  with_fx :flanger do
    use_synth :piano
    play :Bb, amp: 0.25, attack: 1, sustain: 0.5, release: 0.5 if whistle_beat.look == 1
    play :G, amp: 0.20, attack: 0.5, sustain: 0.25, release: 0.25 if whistle_beat.look == 2
    play :F, amp: 0.20, attack: 0.5, sustain: 0.25, release: 0.25 if whistle_beat.look == 3
    play :G, amp: 0.20, attack: 0.25, sustain: 0.2, release: 0.15 if whistle_beat.look == 4
    play :C, amp: 0.20, attack: 0.25, sustain: 0.1, release: 0.15 if whistle_beat.look == 5
    play :D, amp: 0.20, attack: 0.5, sustain: 0.25, release: 0.25 if whistle_beat.look == 6
    play :F, amp: 0.20, attack: 0.25, sustain: 0.125, release: 0.15 if whistle_beat.look == 7
    play :D, amp: 0.20, attack: 0.25, sustain: 0.125, release: 0.15 if whistle_beat.look == 8
    play :Bb3, amp: 0.20, attack: 0.25, sustain: 0.125, release: 0.15 if whistle_beat.look == 9
    play :C, amp: 0.20, attack: 0.5, sustain: 0.25, release: 0.25 if whistle_beat.look == 10
    play :Db, amp: 0.20, attack: 0.25, sustain: 0.125, release: 0.15 if whistle_beat.look == 11
    play :G3, amp: 0.20, attack: 0.25, sustain: 0.125, release: 0.15 if whistle_beat.look == 12
    play :Bb3, amp: 0.20, attack: 1, sustain: 0.5, release: 0.5 if whistle_beat.look == 13
    sleep 1
  end
end

cue :whistle1
