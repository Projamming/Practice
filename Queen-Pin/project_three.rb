#REFERENCES: Based off Another Sad Love Song by Khalid.
#I used the layout from the warmup on 9/20
#DESCRIPTION: I found the changing rhythm and
#baseline in the song very interesting, so I used that as my model.
#I added the randomness aspect into what section plays when.

use_bpm 100 #this is the bpm of the song, according to the internets

define :blip do
  play :d4, sustain: 0.2
  sleep 0.25
  play :b3, sustain: 0.2
  sleep 0.25
  play :b3, sustain: 0.5
  sleep 0.25
end

el = :elec_fuzz_tom
#this sample sounded similar to part of the percussion that sounds like a hand clap
bs = :drum_bass_hard
bs2 = :drum_heavy_kick
use_random_seed 722
#change the random seed and get a different ring.
r_choice = [0, 1, 2]
r = (ring choose(r_choice), choose(r_choice), choose(r_choice))
live_loop :rhythm do
  
  tick(:rc)
  
  if r.look(:rc) == 0
    bass = (ring 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0, 1, 0, 2, 0)
    #each bass ring is 20 numbers long because I had to incorporate the rests
  end
  if r.look(:rc) == 1
    bass = (ring 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 3, 0)
  end
  if r.look(:rc) == 2
    bass = (ring 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 1, 0, 4, 0)
  end
  
  20.times do
    
    tick(:bc)
    sample bs if bass.look(:bc) == 1
    sample el, amp: 0.5 if bass.look(:bc) == 2
    #made the amp lower so it wasn't overpowering
    blip if bass.look(:bc) == 3
    if bass.look(:bc) == 4
      sample bs2
      sleep 0.25
      sample bs2
    end
    sleep 0.25
    
  end
  
end
