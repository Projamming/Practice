# Do I Wanna Know?, by Arctic Monkeys

#This is only the drums and bass part, to be used as a backing track for playing guitar


use_bpm 84


# Intro/Verse 1

def intro
  
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


# Verse

def verse
  
  # Drums
  
  live_loop :drums do
    tick
    beat = (ring 0, 1, 0, 1)
    sample :drum_bass_hard if beat.look == 0
    sample :elec_mid_snare, amp: 3 if beat.look == 1
    sleep 1
  end
  
  # Bass
  
  live_loop :bass_verse do
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


# Chorus Part 1

def chorus_part1
  
  # Drums
  
  live_loop :drums do
    tick
    beat = (ring 0, 1, 0, 1)
    sample :drum_bass_hard if beat.look == 0
    sample :elec_mid_snare, amp: 3 if beat.look == 1
    sleep 1
  end
  
  live_loop :chorus_cymbal do
    tick
    beat = (ring 1, 1, 1, 1)
    sample :drum_cymbal_hard, amp: 0.125 if beat.look == 1
    sleep 1
  end
  
  # Bass
  
  live_loop :bass_verse do
    use_synth :fm
    tick
    bass_rhythm = (ring 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 0, 5, 0,
                   6, 0, 0, 0, 0, 0, 7, 0, 8, 0, 0, 0, 0, 0, 0, 9,
                   10, 11, 12, 0, 0, 0, 0, 0, 0, 0, 9, 10, 11, 0, 11, 0,
                   1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 3, 4, 0)
    play :G2, sustain: 2, amp: 2.5 if bass_rhythm.look == 1
    play :F2, sustain: 0.25, amp: 2 if bass_rhythm.look == 2
    play :G2, sustain: 0.25, amp: 2 if bass_rhythm.look == 3
    play :Bb2, sustain: 0.25, amp: 2 if bass_rhythm.look == 4
    play :F3, sustain: 0.25, amp: 2 if bass_rhythm.look == 5
    play :Eb3, sustain: 1, amp: 2 if bass_rhythm.look == 6
    play :D3, sustain: 0.5, amp: 2 if bass_rhythm.look == 7
    play :C3, sustain: 1, amp: 2 if bass_rhythm.look == 8
    play :Bb2, sustain: 0.25, amp: 2 if bass_rhythm.look == 9
    play :C3, sustain: 0.25, amp: 2 if bass_rhythm.look == 10
    play :D3, sustain: 0.25, amp: 2 if bass_rhythm.look == 11
    play :C3, sustain: 1.5, amp: 2 if bass_rhythm.look == 12
    sleep 0.25
  end
end


# Chorus Part 2

def chorus_part2
  
  # Drums
  
  live_loop :chorus_drums do
    tick
    beat = (ring 0, 1, 0, 1)
    sample :drum_bass_hard if beat.look == 0
    sample :elec_mid_snare, amp: 3 if beat.look == 1
    sleep 1
  end
  
  live_loop :chorus_cymbal do
    tick
    beat = (ring 1, 1, 1, 1)
    sample :drum_cymbal_open, amp: 0.125 if beat.look == 1
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
    play :Eb3, sustain: 2.25, amp: 2 if bass_rhythm.look == 1
    play :C3, sustain: 1.25, amp: 2 if bass_rhythm.look == 2
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


# Pre-Chorus

def prechorus
  
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
    play :Eb3, sustain: 2.25, amp: 2 if bass_rhythm.look == 1
    play :C3, sustain: 1.25, amp: 2 if bass_rhythm.look == 2
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

#---------------#
# Control Panel #
#---------------#

intro
#prechorus
#chorus_part1
#chorus_part2
#verse
