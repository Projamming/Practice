#In class projamming practice 10/2

use_bpm 80

bass = :drum_bass_soft
snare = :drum_snare_soft

drums = (ring bass, snare, bass, bass, snare, bass)
drums_sleep = (ring 1, 0.5, 1, 0.5, 0.5, 0.5)

live_loop :beat do
  tick
  sample drums.look
  sleep drums_sleep.look
end

## I stole this rhythm from Say It Ain't So by Weezer ##

#------------------------------------------------------------#

##### Since you started doing Say It Ain't So, I'll continue it!


#--------#
#  Bass  #
#--------#

live_loop :bass do
  
  use_synth :fm
  
  tick
  
  bass_notes = (ring 1, 0, 0, 2,
                0, 3, 4, 5,
                6, 0, 0, 7,
                0, 8, 9, 10)
  
  play :C3, sustain: 1 if bass_notes.look == 1
  play :G2, sustain: 1 if bass_notes.look == 2
  play :F2, amp: 0.75, sustain: 0.125 if bass_notes.look == 3
  play :Fs2, amp: 0.75, sustain: 0.125 if bass_notes.look == 4
  play :G2, amp: 0.75, sustain: 0.125 if bass_notes.look == 5
  play :Gs2, sustain: 1 if bass_notes.look == 6
  play :Eb2, sustain: 1 if bass_notes.look == 7
  play :Eb2, amp: 0.75, sustain: 0.125 if bass_notes.look == 8
  play :G2, amp: 0.75, sustain: 0.125 if bass_notes.look == 9
  play :Bb2, amp: 0.75, sustain: 0.125 if bass_notes.look == 10
  
  sleep 0.5
  
end

#-------------------------------------------------------------------#
#                                                                   #
#  I added the bassline from Say It Ain't So                        #
#  If you need/want them, for reference the chords are as follows:  #
#   C minor                                                         #
#   G major                                                         #
#   G# major                                                        #
#   Eb major                                                        #
#                                                                   #
#-------------------------------------------------------------------#

