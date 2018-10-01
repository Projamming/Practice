# Say It Ain't So, by Weezer

#-------------#
#  Universal  #
#-------------#

use_bpm 76
use_synth :piano

#---------#
#  Drums  #
#---------#

def drums
  
  live_loop :drums do
    
    tick
    
    drum_beat = (ring 1, 0, 2, 0, 0, 1, 2, 0)
    
    sample :drum_heavy_kick, amp: 1 if drum_beat.look == 1
    sample :drum_snare_soft, amp: 1.5 if drum_beat.look == 2
    
    sleep 0.5
    
  end
  
  live_loop :cymbals do
    
    sample :drum_cymbal_closed, amp: 0.3
    sleep 0.5
    
  end
  
end


#----------#
#  Chords  #
#----------#

def upbeat
  
  chords = [chord(:C4, :minor),
            chord(:G3, :major),
            chord(:Gs3, :major),
            chord(:Eb3, :major)]
  
  live_loop :chord do
    
    prog = (ring 0, 1, 1, 1, 2, 3, 3, 3)
    tick
    play chords[prog.look]
    sleep 1
    
  end
  
end

#--------#
#  Bass  #
#--------#

def bass
  
  live_loop :bass do
    
    use_synth :fm
    
    tick
    
    bass_notes = (ring 1, 0, 0, 2,
                  0, 3, 4, 5,
                  6, 0, 0, 7,
                  0, 0, 0, 0)
    
    play :C3, amp: 2, sustain: 1 if bass_notes.look == 1
    play :G2, amp: 2, sustain: 1 if bass_notes.look == 2
    play :F2, amp: 1.5, sustain: 0.125 if bass_notes.look == 3
    play :Fs2, amp: 1.5, sustain: 0.125 if bass_notes.look == 4
    play :G2, amp: 1.5, sustain: 0.125 if bass_notes.look == 5
    play :Gs2, amp: 2, sustain: 1 if bass_notes.look == 6
    play :Eb2, amp: 2, sustain: 2.5 if bass_notes.look == 7
    
    sleep 0.5
    
  end
  
end


#----------#
#  Guitar  #
#----------#

def guitar
  
  live_loop :guitar_part do
    # Records a few takes, have them randomized
  end
  
end



#-----------------#
#  Control Panel  #
#-----------------#


drums

bass

guitar

sleep 0.5
upbeat
