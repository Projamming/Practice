#First time projammin gin class with 2 people
#Tired of coding with piano, so I wnated to make something strange and different
#I apologize if this hurts your ears, it certainly annyoed me after 30 seconds
#Song9.rb

#Crow sound gave some eerie vibes so I added the haunted hum along with it.
#I tried adding an echo element to make it spookier but couldnt figure it out.

live_loop :nonsense do
  tick
  use_bpm 120
  2.times do
    4.times do
      ##| with_fx :echo, phase: 0.5 do
      sample :misc_crow, amp: 2
      sample :ambi_haunted_hum, amp: 2
      sleep 0.75
    end
    4. times do
      sample :drum_bass_hard, amp: 1.5, sustain: 1.5
      sample :drum_cymbal_soft, amp: 0.25
      sleep 0.75
    end
  end
  2.times do
    2.times do
      ##| with_fx :echo, phase: 0.5 do
      sample :misc_crow, amp: 3
      sample :ambi_haunted_hum, amp: 2
      sleep 0.75
    end
    2.times do
      sample :drum_bass_hard, amp: 1.5, sustain: 1.5
      sample :drum_cymbal_soft, amp: 0.25
      sleep 0.75
    end
  end
  2.times do
    2.times do
      ##| with_fx :echo, phase: 0.5 do
      sample :misc_crow, amp: 3
      sample :ambi_haunted_hum, amp: 2
      sleep 0.5
    end
    2.times do
      sample :drum_bass_hard, amp: 1.5, sustain: 1.5
      sample :drum_cymbal_soft, amp: 0.25
      sleep 0.5
    end
  end
  
  in_thread do
    loop do
      ##| with_fx :echo, phase: 0.5 do
      sample :misc_crow, amp: 3
      sample :ambi_haunted_hum, amp: 2
      sleep 0.75
    end
  end
  in_thread do
    loop do
      sample :drum_bass_hard, amp: 1.5, sustain: 1.5
      sample :drum_cymbal_soft, amp: 0.25
      sleep 0.75
    end
  end
end
