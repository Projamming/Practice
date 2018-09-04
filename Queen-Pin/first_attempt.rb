# TITLE  : Class 2 (Rhythm, Functions, Variables)
# FILE   : alejandro.rb
# DATE   : August 258, 2018
# DESC   : Introduction to Alejandro


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

# 3/4 rhythm.
def three_four
  sample :drum_heavy_kick  # Downbeat.
  sleep 1
  sample :drum_snare_hard
  sleep 1
  sample :drum_snare_hard
  sleep 1
end

def waltz
  # Measure 1
  play :a3
  sleep 1
  play :d4
  sleep 1
  play :fs4
  sleep 1
  
  # Measure 2
  play :g4; sleep 1.5  # Multiple statements in one line (;).
  play :fs4; sleep 0.5
  play :fs4; sleep 1
end

def mamma_mia
  # Measure 1
  sleep 1
  play :e4
  sleep 0.5
  play :d4
  sleep 0.5
  play :e4
  sleep 0.5
  play :d4
  sleep 0.5
  sleep 1
  
  # Measure 2
  sleep 1
  play :d4; sleep 0.5
  play :d4; sleep 0.5
  play :e4; sleep 0.5
  play :fs4; sleep 0.5  # Sharp (s), Flat (b)
  play :e4; sleep 0.5
  play :d4; sleep 0.5
end

# CITE : https://groups.google.com/forum/#!topic/sonic-pi/d6DPLdTbMYo
# DESC : Showed a better way of organizing the melody!
def alejandro1
  # Variable creation.
  # Data structure (way of storing data): List
  notes = [:b4, :b4, :b4, :d4, :e4, :fs4, :fs4, :e4,
           :fs4, :fs4, :fs4, :c4, :c4, :c4, :c4]  # :r is rest.
  
  durations = [0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 1, 0.5,
               0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5]
  
  play_pattern_timed notes, durations
end

# Two live loops so they play simultaneously!
live_loop :beat do
  four_four
end

live_loop :melody do
  use_synth :piano  # Synthesizer: Piano or Blade ("Blade Runner"-themed)
  alejandro1
end

