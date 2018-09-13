#TITLE: Modified Ska Reggae, Jamaican Rhythm
#FILE: Song5.rb
#AUTHOR: HomieWippman
#DATE: 9/5/18
#DESC: Version 3

#Reggae Organ
#I searched for various reggae rhythms and found the best reggae music descriptions here:
#https://www.guitarplayer.com/technique/reggae-rules-how-to-play-reggae-the-right-way
#The style I choose is known as "Ska" from the middle 1960s
#Ska music set the beginnings of slower-tempo reggae and eventually slower tempo rock
#It is conventionally played with both piano and guitar
#I modified the style, instead using a piano and drums
#I also used chords in the organ to replace/simulate a guitar background beat
#Today Ska is typically characterized as jazzy pre-reggae Jamaican music
#Credit due to Levi Niha on Youtube and David Fiddle Online
#They showed me how to make different background organ sounds

#Twice default speed
#Ska is typically between 90 and 130 bpm
use_bpm 120

#I setup the reggae organ sound using the sine synthesizer
#I discovered and used transpose in order to lower the pitch
#This lowers the tone, producing a more authentic reggae sound
#Amplitude is 1.5x louder in order to bring attention to the reggae organ
define :reg_organ do |notes|
  use_synth :sine
  play_chord notes
  with_transpose -12 do
    play_chord notes, amp: 1.5
  end
end

#First part of the reggae organ
#Playing C4 major
#Ring, tick and look are used
#Ring contains 2 beats (0, 1)
live_loop :reggae_part1 do
  tick
  beat = (ring 0, 1)
  reg_organ (chord :C4,:major) if beat.look == 1
  sleep 1
end

#Second part of the reggae organ
#Chord is lowered to C3
#Ring, tick and look are used again
#Ring is extended to contain 4 beats (0, 1, 0, 1)
#Ring is also used with sleep, which alternates between 0.7 and 0.3
live_loop :reggae_part2 do
  tick
  beat = (ring 0, 1, 0, 1)
  reg_organ (chord :C3,:major) if beat.look == 1
  sleep_ring = (ring 0.7,0.3,0.7,0.3)
  sleep sleep_ring.look
end

#Additional Drum Element
#(EXPLAINED IN Song3.rb)
#In Chapter 3 of the online sonic pi guide it introduces samples, or pre-recorded sounds
#These samples are great because they sound good and are easy to work with
#I looked through many of the samples on sonic pi here:
#https://github.com/samaaron/sonic-pi/blob/master/etc/doc/cheatsheets/samples.md
#I utilized a sample sound for looping here on a loop with a lower amplitude and a longer sleep
in_thread do
  loop do
    sample :drum_heavy_kick, amp: 0.8
    sleep 2
  end
end

#Additional Snare Element
#Here is another sample I integrated
in_thread do
  sleep 2
  loop do
    sample :drum_snare_soft, amp: 0.8
    sleep 4
  end
end
