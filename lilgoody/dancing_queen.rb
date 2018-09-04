# TITLE: list practice / Dancing Queen
# FILE: dancing_queen.rb
# AUTHOR: lilgoody
# DATE: 9.4.18
# DESC: My first practice with the list method,
#       defining/calling a function, and ABBA's Dancing Queen

use_bpm 101
use_synth :saw

def dancing_queen
  notes = [ :cs5, :b4, :b4, :r,
            :cs5, :b4, :b4, :cs5,
            :a4, :b4, :gs4, :a4,:b4, :gs4,
            :a4, :gs4, :fs4, :r]
  durations = [ 1, 0.5, 1.5, 1,
                1, 0.5, 1.5, 1,
                0.75, 0.75, 0.5, 0.75, 0.75, 0.5,
                0.25, 0.25, 1.5, 2]
  play_pattern_timed notes, durations
end

dancing_queen
