# TITLE: Chord Practice
# FILE: chord_prac.rb
# AUTHOR: lilgoody
# DATE: 9/27/18
# DESC: first practice with chords as well as the controller command.


chords1 = [chord(:F4, :major), chord(:Bb4, :major),
           chord(:D4, :minor), chord(:Bb4, :major)]

chords2 = [chord(:C4, :minor), chord(:D4, :minor),
           chord(:Eb4, :major), chord(:Bb4, :major)]


define :chords_1 do
  chord_call = (ring 0, 1, 2, 3)
  tick
  play_pattern_timed chords1[chord_call.look], 0.3
  play_pattern_timed chords1[chord_call.look].reverse, 0.3
end

define :chords_2 do
  chord_call = (ring 0, 1, 2, 3)
  tick
  play_pattern_timed chords2[chord_call.look], 0.3
  play_pattern_timed chords2[chord_call.look].reverse, 0.3
end

live_loop :chord_prog do
  use_synth :pluck
  controller = 2
  chords_1 if controller == 1
  chords_2 if controller == 2
end
