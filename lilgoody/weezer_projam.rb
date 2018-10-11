# TITLE:  Say It Ain't So - Weezer
# FILE:   weezer_projam.rb
# AUTHOR: lilgoody
# DATE:   10/11/18
# DESC:   The beat and the bassline are from the projamming practice we did in class. I liked the sound
#         of it so I decided to add on the guitar part, and change the format slightly.


#In class projamming practice 10/2

use_bpm 80

bass = :drum_bass_soft
snare = :drum_snare_soft


live_loop :beat, sync: :beats do
  6.times do
    drums = (ring bass, snare, bass, bass, snare, bass)
    drums_sleep = (ring 1, 0.5, 1, 0.5, 0.5, 0.5)
    sample drums.tick(:beat_clock), amp: 2
    sleep drums_sleep.tick(:beatsleep_clock)
  end
end


live_loop :song do
  in_thread do
    18.times do
      use_synth :fm
      bass_notes = (ring :C3, :G2, :F2, :Fs2, :Gs2,
                    :Eb2, :Eb2, :G2, :Bb2)
      bass_sleep = (ring 1.5, 1.5, 0.5, 0.5, 1.5,
                    1, 0.5, 0.5, 0.5)
      bass_sus = (ring 1, 1, 0.125, 0.125, 1,
                  1, 0.125, 0.125, 0.125)
      bass_amp = (ring 1, 1, 0.75, 0.75, 1,
                  1, 0.75, 0.75, 0.75)
      play bass_notes.tick(:bnotes_clock), sustain: bass_sus.tick(:bsus_clock), amp: bass_amp.tick(:bamp_clock)
      sleep bass_sleep.tick(:bsleep_clock)
    end
  end
  in_thread do
    12.times do
      use_synth :pluck
      use_synth_defaults amp: 2
      chords1 = (ring chord(:C4, :minor), chord(:C4, :minor), chord(:G4, :major),
                 chord(:Gs4, :major), chord(:Gs4, :major), chord(:Eb4, :major))
      chords_sleep = (ring 0.75, 0.75, 2.5, 0.75, 0.75, 2.5)
      chords_sus = (ring 0.5, 0.5, 2, 0.5, 0.5, 2)
      play chords1.tick(:chords_clock), sustain: chords_sus.tick(:chsus_clock)
      sleep chords_sleep.tick(:chsleep_clock)
    end
  end
  22.times do
    use_synth :pluck
    notes = (ring :r, :G2, :D3, :G3, :B3, :Bb3,
             :r, :Eb2, :G3, :C4, :Eb4)
    notes_sleep = (ring 2.5, 0.5, 0.25, 0.25, 0.25, 0.25,
                   2.75, 0.5, 0.25, 0.25, 0.25)
    play notes.tick(:notes_clock)
    sleep notes_sleep.tick(:sleep_clock)
  end
  cue :beats
end
