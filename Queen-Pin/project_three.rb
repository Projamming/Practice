use_bpm 100
use_synth :pluck #this synth sounded the most similar to the actual song
use_synth_defaults amp: 2
#made the amp a tad louder so the drums wouldn't be overpowering

#drum section
def four_four
  sample :drum_heavy_kick, amp: 1
  sleep 1
  sample :drum_snare_hard, amp: 1
  sleep 1
end

#defining each measure until line 74
define :part_one do
  notes_one = [:b4, :b4, :b4, :d5, :e5, :fs5, :fs5, :e5,
               :fs5, :fs5, :fs5, :cs5, :cs5, :cs5, :cs5]
  durations_one = [0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 1, 0.5,
                   0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5]
  play_pattern_timed notes_one, durations_one
end

define :part_two do
  notes_two = (ring :fs5, :fs5, :cs4, :cs4)
  durations_two = (ring 0.5, 1.5, 1, 1)
  8.times do
    tick
    play notes_two.look, sustain: durations_two.look
    sleep durations_two.look
  end
end

define :part_three do
  notes_three = [:cs5, :b4, :b4, :r, :d5, :d5, :b4, :b4,
                 :cs5, :b4, :a4, :a4, :cs5, :cs5, :a4]
  durations_three = [0.75, 0.25, 1, 0.5, 0.5, 0.5, 0.25, 0.25,
                     0.25, 0.25, 0.5, 0.5, 0.5, 1.5, 0.5]
  play_pattern_timed notes_three, durations_three
end

define :part_four do
  notes_one = [:b3, :b3, :b3, :d4, :e4, :fs4, :fs4, :e4,
               :fs4, :fs4, :fs4, :cs4, :cs4, :cs4, :cs4]
  durations_one = [0.5, 0.25, 0.25, 0.5, 0.5, 0.5, 1, 0.5,
                   0.5, 0.5, 0.5, 0.5, 0.5, 1, 0.5]
  
  play_pattern_timed notes_one, durations_one
end

define :part_five do
  notes_two = (ring :fs4, :fs4, :cs3, :cs3)
  durations_two = (ring 0.5, 1.5, 1, 1)
  8.times do
    tick
    play notes_two.look, sustain: durations_two.look
    sleep durations_two.look
  end
end

define :part_six do
  notes_three = [:cs4, :b3, :b3, :r, :d4, :d4, :b3, :b3,
                 :cs4, :b3, :a3, :a3, :cs4, :cs4, :a3]
  durations_three = [0.75, 0.25, 1, 0.5, 0.5, 0.5, 0.25, 0.25,
                     0.25, 0.25, 0.5, 0.5, 0.5, 1.5, 0.5]
  play_pattern_timed notes_three, durations_three
end

#here's the real MEAT
live_loop :round do
  part_one
  #here's where I overlay the two voices as rounds
  in_thread do
    part_two
  end
  part_four
  in_thread do
    part_three
  end
  part_five
  part_six
end

live_loop :drums do
  four_four
end
