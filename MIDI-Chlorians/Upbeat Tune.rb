#Upbeat Song


use_bpm 120


#Intro

4.times do
  sample :drum_bass_hard
  sleep 0.5
  sample :drum_bass_soft
  sleep 0.5
  sample :drum_snare_hard
  sleep 1
end


def drums
  
  
  #Kick and Snare Drums
  
  live_loop :drum do
    sample :drum_bass_hard
    sleep 0.5
    sample :drum_bass_soft
    sleep 0.5
    sample :drum_snare_hard
    sleep 1
  end
  
  
  #Hi-Hat
  
  live_loop :hihat do
    sample :drum_cymbal_closed
    sleep 0.25
  end
  
  
end


#Bass Line

def bass
  
  use_synth :sine
  sleep 8
  live_loop :bass do
    
    notes = [:c2, :r, :c2, :c3, :c2,
             :c2, :r, :c2, :c3, :c2,
             :f2, :r, :f2, :f3, :f2,
             :f2, :r, :f2, :f3, :f2]
    
    durations = [1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1]
    
    play_pattern_timed notes, durations
    
  end
  
end


#Melody

def melody
  
  use_synth :blade
  sleep 16
  live_loop :melody do
    
    notes = [:c3, :r, :c3, :e3, :d3,
             :c3, :r, :c3, :e3, :d3,
             :f3, :r, :f3, :a3, :g3,
             :f3, :r, :f3, :a3, :g3]
    
    durations = [1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1,
                 1, 0.5, 0.5, 1, 1]
    
    play_pattern_timed notes, durations
    
  end
  
end


#Active Calls:

drums
bass
melody
