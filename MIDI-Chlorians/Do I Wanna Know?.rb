# Do I Wanna Know?, by Arctic Monkeys


use_bpm 84


# Verse

def verse

  # Drums

  live_loop :drums do
    8.times do
      tick
      beat = (ring 0, 1, 0, 1)
      sample :drum_bass_hard if beat.look == 0
      sample :elec_mid_snare, amp: 3 if beat.look == 1
      sleep 1
    end
    cue :bass
  end
  
  # Bass
  
  live_loop :bass_verse, sync: :bass do
    use_synth :fm
    tick
    bass_rhythm = (ring 1, 0, 0, 0,
                   2, 0, 3, 0,
                   0, 0, 0, 4,
                   1, 0, 0, 0)
    play :G2, sustain: 2, amp: 2 if bass_rhythm.look == 1
    play :Ds3, sustain: 1, amp: 2 if bass_rhythm.look == 2
    play :C3, sustain: 1, amp: 2 if bass_rhythm.look == 3
    play :D3, sustain: 0.75, amp: 2 if bass_rhythm.look == 4
    sleep 1
  end
end


# Chorus

def chorus
  
  # Drums
  
  live_loop :chorus_drums do
    tick
    beat = (ring 0, 1, 0, 1)
    sample :drum_bass_hard if beat.look == 0
    sample :elec_mid_snare, amp: 3 if beat.look == 1
    sleep 1
  end
  
  
  # Bass
  
  live_loop :chorus_bass do
    use_synth :fm
    tick
    bass_rhythm = (ring 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 8, 9, 0, 8, 0,
                   2, 0, 0, 0, 0, 0, 3, 0, 2, 0, 0, 0, 0, 0, 0, 3,
                   7, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 6, 3, 0,
                   10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
    play :Eb3, sustain: 2, amp: 2 if bass_rhythm.look == 1
    play :C3, sustain: 1, amp: 2 if bass_rhythm.look == 2
    play :Bb2, sustain: 0.25, amp: 2 if bass_rhythm.look == 3
    play :G2, sustain: 2, amp: 2 if bass_rhythm.look == 4
    play :F2, sustain: 0.125, amp: 2 if bass_rhythm.look == 5
    play :G2, sustain: 0.125, amp: 2 if bass_rhythm.look == 6
    play :C3, sustain: 0.125, amp: 2 if bass_rhythm.look == 7
    play :D3, sustain: 0.125, amp: 2 if bass_rhythm.look == 8
    play :Eb3, sustain: 0.125, amp: 2 if bass_rhythm.look == 9
    play :G2, sustain: 2.5, amp: 2 if bass_rhythm.look == 10
    sleep 0.25
  end
  
end


# Control Panel

verse
#chorus
