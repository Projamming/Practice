#--------------------------------------------------------------#
# FILE:   dona_novis.rb
# AUTHOR: P-Rhyme
# DATE:   September 2, 2018

# DESC:
#--------------------------------------------------------------#

use_bpm 110

#--------------------------#
# Setup (notes, durations) #
#--------------------------#

notes_1 = [:C4, :G3, :E4, :D4, :G3, :F4, :E4, :D4, :C4, :C4, :B3,
           :A4, :G4, :F4, :E4, :D4, :G4, :F4, :E4, :E4, :D4, :C4, :B3, :C4]

sleep_1 = [0.5, 0.5, 2, 0.5, 0.5, 2, 1, 1, 1, 1, 2,
           1, 0.5, 0.5, 0.5, 0.5, 1.5, 0.5, 1, 0.5, 0.5, 1, 1, 3]

notes_2 = [:G4, :G4, :G4, :F4, :E4, :E4, :D4,
           :A4, :A4, :G4, :G4, :G4, :F4, :E4, :D4, :C4]

sleep_2 = [3, 3, 1, 1, 1, 1, 2,
           1, 2, 1, 2, 0.5, 0.5, 1, 1, 3]

notes_3 = [:C4, :B3, :C4, :D4, :E4, :F4, :G4, :G3,
           :F4, :F4, :E4, :E4, :G3, :D4, :G4, :G3, :C4]

sleep_3 = [3, 3, 1.5, 0.5, 0.5, 0.5, 1, 2,
           1, 2, 1, 2, 0.5, 0.5, 1, 1, 3]

deep_4  = [:C3, :G2, :C2, :G2, :F2, :C3, :G2, :C2,
           :C2, :G2, :C3, :C3, :G2, :C2, :F2, :C2, :C2, :G1, :C2,
           :C2, :D2, :E2, :F2, :G2, :G2, :C3, :G2, :A2, :G2, :G2, :F2, :F2, :E2, :D2, :C2, :C2, :G1, :G1, :C2]

sleep_4 = [3, 3, 3, 3, 3, 3, 3, 3,
           3, 3, 2, 1, 2, 1, 3, 2, 1, 3, 3,
           1.5, 0.5, 0.5, 0.5, 2, 1, 1, 1, 1, 2, 1, 1.5, 0.5, 0.5, 0.5, 2, 1, 2, 1, 3]

# Define the melody as a function:
define :play_song do
  play_pattern_timed notes_1, sleep_1
  play_pattern_timed notes_2, sleep_2
  play_pattern_timed notes_3, sleep_3
end

# Define the deep part as a function:
define :play_deep do
  print "Starting the deep part.."
  play_pattern_timed deep_4, sleep_4
end

#--------------------------#
#       Main control       #
#--------------------------#

use_synth :piano
use_synth_defaults hard: 0.45

# Play the song as a round:

in_thread do
  print "Starting first go.."
  2.times do
    play_song
  end
end

sleep 24

in_thread do
  print "Starting second go.."
  use_synth :pluck
  use_synth_defaults amp: 0.6, pan: -0.6
  2.times do
    play_song
  end
end

sleep 24

in_thread do
  print "Starting third go.."
  use_synth :blade
  use_synth_defaults amp: 0.3, pan: 0.6
  2.times do
    play_song
  end
end

sleep 24

in_thread do
  print "Starting deep part.."
  use_synth :blade
  use_synth_defaults amp: 0.4
  play_deep
end
