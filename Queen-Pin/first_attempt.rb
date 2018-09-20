# Welcome to Sonic Pi v3.1
use_bpm 100  # Beats per minute.

# Function: Code block that accomplishes a specific task.
# Descriptive name! Longer names (_ instead of spaces).
# 4/4 rhythm.
def four_four
  sample :drum_heavy_kick
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

# CITE : https://groups.google.com/forum/#!topic/sonic-pi/d6DPLdTbMYo
# DESC : Showed a better way of organizing the melody!
def alejandro1
  # Variable creation.
  # Data structure (way of storing data): List
  notes = [:b4, :b4, :b4, :d4, :e4, :fs4, :fs4, :e4,
           :fs4, :fs4, :fs4, :cs4, :cs4, :cs4, :cs4]  # :r is rest.
  
  durations = [0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 1, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5]
  
  play_pattern_timed notes, durations
end

#Two live loops so they play simultaneously!
live_loop :beat do
  four_four
end

live_loop :melody do
  use_synth :pluck
  alejandro1
end

