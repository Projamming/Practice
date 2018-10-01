#---------------#
#               #
#   Project 3   #
#               #
#---------------#



#-----------#
# Universal #
#-----------#

use_synth :piano
use_bpm 130


#----------#
#  Melody  #
#----------#

live_loop :melody do
  
  24.times do
    
    tick(:melody)
    
    melody = (ring 1, 2, 3, 3, 2, 1, 4, 4, 4, 4, 0, 0,
              1, 2, 3, 3, 5, 3, 5, 0, 0, 0, 0, 0)
    
    play :c3 if melody.look(:melody) == 1
    play :e3 if melody.look(:melody) == 2
    play :g3 if melody.look(:melody) == 3
    play :a3 if melody.look(:melody) == 4
    play :f3 if melody.look(:melody) == 5
    
    sleep 0.5
    
  end
  
  cue :harmony
  
end

#-----------#
#  Harmony  #
#-----------#

live_loop :harmony_part, sync: :harmony do
  
  24.times do
    
    tick(:harmony)
    
    harmony = (ring 1, 2, 3, 3, 2, 1, 4, 4, 4, 4, 0, 0,
               1, 2, 3, 3, 5, 3, 6, 0, 0, 0, 0, 0)
    
    play :e3, amp: 0.75 if harmony.look(:harmony) == 1
    play :g3, amp: 0.75 if harmony.look(:harmony) == 2
    play :c3, amp: 0.75 if harmony.look(:harmony) == 3
    play :f3, amp: 0.75 if harmony.look(:harmony) == 4
    play :c3, amp: 0.75 if harmony.look(:harmony) == 5
    play :a3, amp: 0.75 if harmony.look(:harmony) == 6
    
    sleep 0.5
    
  end
  
  cue :low
  
end

#------------#
#  Low Part  #
#------------#

live_loop :low_part, sync: :low do
  
  16.times do
    
    tick(:low)
    
    low = (ring 1, 2, 3, 2,
           1, 2, 3, 4)
    
    play :c2, sustain: 4 if low.look(:low) == 1
    play :e2, sustain: 4 if low.look(:low) == 2
    play :f2, sustain: 4 if low.look(:low) == 3
    play :g2, sustain: 4 if low.look(:low) == 4
    
    sleep 1.5
    
  end
  
  cue :overlap
  
end


#--------------------#
#  Overlapping Part  #
#--------------------#

live_loop :overlapping, sync: :overlap do
  
  48.times do
    
    tick(:overlap)
    
    over = (ring 0, 0, 0, 1, 2, 3, 3, 2, 1, 4, 4, 4,
            4, 0, 0, 1, 2, 3, 3, 4, 4, 4, 4, 4)
    
    play :c3 if over.look(:overlap) == 1
    play :e3 if over.look(:overlap) == 2
    play :g3 if over.look(:overlap) == 3
    play :a3 if over.look(:overlap) == 4
    play :f3 if over.look(:overlap) == 5
    
    sleep 0.5
    
  end
  
  cue :high
  
end


#-------------#
#  High Part  #
#-------------#

live_loop :high_part, sync: :high do
  
  24.times do
    
    tick(:high)
    
    high = (ring 2, 1, 2, 1, 2, 1, 2, 1, 2, 1, 2, 1,
            3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1)
    
    play :c5, sustain: 2, amp: 0.75 if high.look(:high) == 1
    play :e5, sustain: 2, amp: 0.75 if high.look(:high) == 2
    play :f5, sustain: 2, amp: 0.75 if high.look(:high) == 3
    
    sleep 0.25
    
  end
  
end
