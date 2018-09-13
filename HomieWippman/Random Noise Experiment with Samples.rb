#TITLE: Random Noise Experiment with Samples
#FILE: Song3.rb
#AUTHOR: HomieWippman
#DATE: 9/4/18
#DESC: This is a strange spacey sounding track which I made
#It's not intended to sound great, but rather display some interesting samples
#In Chapter 3 of the online sonic pi guide it introduces samples, or pre-recorded sounds
#These samples are great because they sound good and are easy to work with
#I picked a few which I found unique/cool and used them in this code
#I looked through many of the samples on sonic pi here:
#https://github.com/samaaron/sonic-pi/blob/master/etc/doc/cheatsheets/samples.md

use_bpm 90

#Introductory Sound
sample :ambi_lunar_land

#Build-up Noise
3.times do
  use_bpm 60
  sample :elec_triangle
  sleep 1
end

#Transition to continous background noise
6.times do
  sample :elec_hi_snare
  sleep 0.1
end

#Ongoing Background Noise Component #1 (Dominant Noise)
in_thread do
  loop do
    sample :loop_compus, amp: 0.5
    sleep 0.8
  end
end

#Ongoing Background Noise Component #2 (Nondominant Noise)
in_thread do
  loop do
    tick
    drone = (ring 0, 1)
    if drone.look == 1
      sample :ambi_drone, amp: 0.15
    end
    sleep 0.666
  end
end
