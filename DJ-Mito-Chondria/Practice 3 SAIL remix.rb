# ----------------------------------------------------------- #
# FILE   :Practice 3 SAIL remix.rb
# AUTHOR :DJ-Mito-Chondria
# DATE   :9-4-18
# DESC   :Modification of "SAIL-Awolnation Intro" originally posted by CoreyandTrevor. I introduced a thread to play the same phrase of a song using different synths at the same time.
# --------------------------------------------------------- #

use_bpm 60

# I wanted to see whether I could play the first phrase of the intro (labeled as 'part1') with two different synths at the same time.
# In order to do this, I created a define function for 'part1' and 'part2' so that I can call it to action later on.

def part1
  2.times do
    
    6.times do
      play :G4
      play :E4
      play :E2
      sleep 0.5
    end
    
    2.times do
      play :A4
      play :E4
      play :E2
      sleep 0.5
    end
  end
end

def part2
  8.times do
    play :Fs4
    play :D4
    play :D2
    sleep 0.5
  end
  
  4.times do
    play :D4
    play :C4
    play :C2
    sleep 0.5
  end
  
  4.times do
    play :Fs4
    play :D4
    play :B2
    sleep 0.5
  end
  
  2. times do
    
    2.times do
      play :G4
      play :E4
      play :E2
      sleep 0.5
    end
  end
end

# Below I call 'part1' and 'part2' to action using the synth :tech_saws.
# Below that I call 'part1' to action again using the synth :hollow.
# In order to have them play at the same time I need to thread them together, otherwise they will play right after each other.

in_thread do  # This will allow me to play 'part1' using the synths :tech_saw and :hollow at the same time!
  use_synth_defaults amp: 1
  use_synth :tech_saws
  part1
end

use_synth_defaults amp: 2  # I played around with the amps for each synth to test whether I was actually hearing them at the same time.
use_synth :hollow
part1

in_thread do
  use_synth_defaults amp: 1
  use_synth :tech_saws
  part2
end

use_synth_defaults amp: 2
use_synth :hollow
part2


