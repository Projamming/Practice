#Title   :Practice 1 (Practice using chords, loops, and Class 2 skills)
#File    :Dont_stop.rb
#Author  :DJ-Mito-Chondria
#Date    :August 28, 2018
#Descr.  :Attempt to recreate intro verse of Don't Stop Believin' by Journey


# Intro verse in treble clef

def intro_verse
  4.times do
    play chord(:F, :major)
    sleep 1.5
  end
  
  4.times do
    play chord(:C, :major)
    sleep 1.5
  end
  
  4.times do
    play chord(:D, :minor7)
    sleep 1.5
  end
  
  4.times do
    play chord(:Bb, :major)
    sleep 1.5
  end
  
  4.times do
    play chord(:F, :major)
    sleep 1.5
  end
  
  4.times do
    play chord(:C, :major)
    sleep 1.5
  end
  
  4.times do
    play chord(:A, :minor)
    sleep 1.5
  end
  
  4.times do
    play chord(:Bb, :major)
    sleep 1.5
  end
end

#Intro verse in bass clef to be played with intro_verse.

def bass_intro
  play :f2, sustain: 3
  sleep 3.66
  play :g2, sustain: 0.66
  sleep 0.66
  play :a2, sustain: 0.66
  sleep 0.93
  play :c3, sustain: 3.5
  sleep 4.4
  play :D3, sustain: 0.66
  sleep 0.66
  play :e3, sustain: 0.66
  sleep 0.93
  play :d3, sustain: 3.5
  sleep 4.4
  play :e3, sustain: 0.66
  sleep 0.66
  play :f3, sustain: 0.66
  sleep 0.93
  play :bb2, sustain: 3.5
  sleep 4.4
  play :e3, sustain: 0.66
  sleep 0.66
  play :f3, sustain: 0.66
  sleep 0.93
  play :f2, sustain: 3.5
  sleep 4.4
  play :g2, sustain: 0.66
  sleep 0.66
  play :a2, sustain: 0.66
  sleep 0.93
  play :c3, sustain: 3.5
  sleep 4.4
  play :d3, sustain: 0.66
  sleep 0.66
  play :f3, sustain: 0.66
  sleep 0.93
  play :a2, sustain: 4
  sleep 5.4
  play :a2, sustain: 0.66
  sleep 0.66
  play :bb2, sustain: 3.5
  sleep 4.4
  play :E3, sustain: 0.66
  sleep 0.66
  play :f3, sustain: 0.66
  sleep 1.66
end


live_loop :beat do
  use_bpm 200
  intro_verse
end

live_loop :melody do
  use_bpm 200
  bass_intro
end
