#TITLE: Modified Dark Jingle Bells
#FILE: Song2.rb
#AUTHOR: HomieWippman
#DATE: 8/29/18
#DESC: Version 1-3

use_bpm 60

#Introductory Melody (lower volume)
def part_1
  use_synth :hollow
  2.times do
    3.times do
      play:E4, amp: 4; sleep 0.5
    end
    sleep 0.5
  end
end

#Suprise Melody 1 (higher volume)
def part_2
  use_synth :hoover
  play :E4, amp: 1.5; sleep 0.5
  play :G4; sleep 0.5
  play :C4; sleep 0.5
  play :D4; sleep 0.5
  play :E4, amp: 1.5, release: 0.8; sleep 0.5
end

#Middle Melody (return to lower volume)
def part_3
  use_synth :dark_ambience
  3.times do
    play:F4, amp: 7; sleep 0.5
  end
  2.times do
    play:F4, amp: 7; sleep 0.2
  end
  sleep 0.3
  2.times do
    play:E4, amp: 7; sleep 0.5
  end
end

#Suprise Melody 2 (higher volume)
def part_4
  use_synth :hoover
  2.times do
    play:E4; sleep 0.2
  end
end

#Ending 1 Suprise Melody 3 (higher volume)
def part_5
  use_synth:hoover
  play :E4; sleep 0.5
  play :D4; sleep 0.5
  play :D4; sleep 0.5
  play :E4; sleep 0.5
  play :D4; sleep 0.5
  play :G4, amp: 1.5, release: 0.8; sleep 0.5
end

def part_5_2
  #I choose not to use this function, the list version of part_5.
  #This is because the list format forces the notes to sound for a longer measure.
  #I included the list below to inidcate what part_5 looks like in list form.
  #This demonstrates that I understand how to use list.
  
  use_synth:hoover
  note = [:e4, :r, :d4, :r, :d4, :r, :e4, :r, :d4, :r, :g4]
  duration = [0.3, 0.25, 0.3, 0.25, 0.3, 0.25, 0.3, 0.25, 0.3, 0.25, 0.3]
  play_pattern_timed note, duration
end

#Ending 2 Suprise Melody 4 (higher volume)
def part_6
  use_synth:hoover
  play :G4; sleep 0.5
  play :G4; sleep 0.5
  play :F4; sleep 0.5
  play :D4; sleep 0.5
  play :C4, amp: 1.5, release: 0.8; sleep 0.5
end

def part_6_2
  #This is the list version of part_6.
  
  use_synth:hoover
  note2 = [:g4, :r, :g4, :r, :f4, :r, :d4, :r, :c4]
  duration2 = [0.3, 0.25, 0.3, 0.25, 0.3, 0.25, 0.3, 0.25, 0.3]
  play_pattern_timed note2, duration2
end

part_1
part_2
sleep 0.65
part_3
part_4
part_5
sleep 0.5
part_1
part_2
sleep 0.65
part_3
part_4
part_6
