# Billie Jean, by Michael Jackson


# All credit for the percussion track goes to "DJ-Mito-Chondria"
# Thanks for your great work on the drums for Billie Jean, I just decided to add in the bass and synth! :)





bass = :drum_bass_hard
hat = :drum_cymbal_closed
snare = :drum_snare_hard
snare2 = :drum_snare_soft

define :drums do
  4.times do
    drum_beat = (ring bass, snare)
    drum_sleep = (ring 1, 1)
    drum_amps = (ring 6, 1)
    sample drum_beat.tick, amps: drum_amps.look
    sleep drum_sleep.look
  end
end

define :hi_hat do
  8.times do
    closed_hi_hat_ring = (ring hat) 
    hi_hat_sleep_ring = (ring 0.5)
    sample closed_hi_hat_ring.tick
    sleep hi_hat_sleep_ring.look
  end
end

live_loop :perc, sync: :percu do 
  use_bpm 120  
  8.times do
    snares_ring = (ring snare2)
    snare_sleep = (ring 0.5)
    sample snares_ring.tick
    sleep snare_sleep.look
  end
end


# Bass


live_loop :bass, sync: :percu do
  
  32.times do
    
    use_synth :fm
    
    tick
    
    bass_rhythm = (ring 1, 2, 3, 1,
                   3, 2, 4, 2)
    
    play :Fs3, sustain: 0.0001, amp: 1.2 if bass_rhythm.look == 1
    play :Cs3, sustain: 0.0001, amp: 1.2 if bass_rhythm.look == 2
    play :E3, sustain: 0.0001, amp: 1.2 if bass_rhythm.look == 3
    play :B2, sustain: 0.0001, amp: 1.2 if bass_rhythm.look == 4
    
    sleep 0.25
    
  end
  
  cue :synth
  
end


# Synth Part

live_loop :synth_part, sync: :synth do
  
  use_synth :tri
  
  tick
  
  synth_rhythm = (ring 1, 0, 0, 2,
                  0, 0, 0, 0,
                  3, 0, 0, 2,
                  0, 0, 0, 0)
  
  play :Fs4, sustain: 0.01, amp: 0.75 if synth_rhythm.look == 1
  play :Db4, sustain: 0.01, amp: 0.5 if synth_rhythm.look == 1
  
  play :Gs4, sustain: 0.01, amp: 0.75 if synth_rhythm.look == 2
  play :Eb4, sustain: 0.01, amp: 0.5 if synth_rhythm.look == 2
  
  play :A4, sustain: 0.01, amp: 0.75 if synth_rhythm.look == 3
  play :E4, sustain: 0.01, amp: 0.5 if synth_rhythm.look == 3
  
  sleep 0.25
  
end



##-------Control Panel--------#
live_loop :billie_jean do
  
  use_bpm 120
  
  2.times do
    in_thread do
      hi_hat
    end
    
    drums
  end
  cue :percu   # I wanted the second percussion part to come in
  # after 8 whole beats.
end
##----------------------------#
