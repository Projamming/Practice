#TITLE: Basic EDM Mix
#FILE: Song4.rb
#AUTHOR: HomieWippman
#DATE: 8/29/18
#DESC: Version 1. A straightfoward track I made simply for fun
#Experimenting with different sounds, my favorite here being the misc_crow noise
#Default bpm of 60
#Code is just one long in_thread

in_thread do
  loop do
    use_synth :supersaw
    note = [:C4, :r, :C3, :r, :C4, :r, :C3]
    duration = [0.25, 0.2, 0.25, 0.3, 0.25, 0.2, 0.25]
    amp = [0.5, 0, 0.5, 0, 0.5, 0, 0.5]
    play_pattern_timed note, duration, amp
    #I learned about play_pattern_time in TA hours
    #I implemented it here for the notes, rests and amplitudes
    
    #I made the rest of the code without using a list or ring format
    #I find that using these more advanced structures is quite challenging when using samples
    #In the future I will find a way to better organize samples and implement the technique
    use_synth :saw
    sample :ambi_piano
    sleep 0.333
    sample :ambi_piano
    sleep 0.666
    sample :ambi_piano
    sleep 1
    sample :ambi_piano, attack: 0.5
    sleep 0.666
    sample :loop_industrial
    sleep 0.666
    sample :bass_hard_c, amp: 0.75
    sleep 0.666
    sample :bass_hard_c, amp: 0.75
    sleep 0.333
    sample :drum_cymbal, attack: 0.5
    sleep 0.1
    sample :misc_crow, amp: 2
    sleep 0.5
    sample :loop_compus, amp: 5
    sleep 1
    sample :loop_compus
  end
end
