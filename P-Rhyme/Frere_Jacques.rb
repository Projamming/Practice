#--------------------------------------------------------------#
# FILE:   frere_jacques.rb
# AUTHOR: P-Rhyme
# DATE:   September 2, 2018

# DESC:   This is the children's song Frere Jacques as a round.
#         I wasn't sure how I'd do a round until I was inspired
#         to use a function for the main song, then call that
#         function after sleeping. That did the trick!
#--------------------------------------------------------------#

use_bpm 120

#--------------------------#
# Setup (notes, durations) #
#--------------------------#

notes_1 = [:C4, :D4, :E4, :C4,
           :C4, :D4, :E4, :C4]

sleep_1 = [1, 1, 1, 1,
           1, 1, 1, 1]

notes_2 = [:E4, :F4, :G4,
           :E4, :F4, :G4]

sleep_2 = [1, 1, 2,
           1, 1, 2]

notes_3 = [:G4, :A4, :G4, :F4, :E4, :C4,
           :G4, :A4, :G4, :F4, :E4, :C4]

sleep_3 = [0.5, 0.5, 0.5, 0.5, 1, 1,
           0.5, 0.5, 0.5, 0.5, 1, 1]

notes_4 = [:C4, :G3, :C4,
           :C4, :G3, :C4]

sleep_4 = [1, 1, 2,
           1, 1, 2]

# Define the song as a function:
define :play_song do
  play_pattern_timed notes_1, sleep_1
  play_pattern_timed notes_2, sleep_2
  play_pattern_timed notes_3, sleep_3
  play_pattern_timed notes_4, sleep_4
end

#--------------------------#
#       Main control       #
#--------------------------#

# Play through the song once:

use_synth :piano
use_synth_defaults hard: 0.7
##| play_song

# Now play the song as a round:

in_thread do
  print "Starting first go.."
  2.times do
    play_song
  end
end

sleep 8

in_thread do
  print "Starting second go.."
  2.times do
    play_song
  end
end

sleep 8

in_thread do
  print "Starting third go.."
  use_synth :blade
  use_synth_defaults amp: 0.3
  2.times do
    play_song
  end
end

sleep 8

in_thread do
  print "Starting fourth go.."
  use_synth :saw
  use_synth_defaults amp: 0.3
  2.times do
    play_song
  end
end

sleep 16

in_thread do
  print "Bringing in the choir.."
  1.times do
    sample :ambi_choir
    sleep 8
    sample :bass_trance_c, release: 16
    sleep 16
  end
end


