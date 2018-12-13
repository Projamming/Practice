#Practice using a real song with randomization 

def chord_prog
  [chord(:Cs4, :minor),
   chord(:E4, :major),
   chord(:B3, :major),
   chord(:A3, :major)]
end


def my_chords
  use_synth :fm
  4.times do
    calling = (ring, 0, 1, 0, 2)
    tick
    play chord_prog[calling.look], sustain: 2
    sleep 2
  end
end


def melody_1
  use_synth :beep
  notes = [ :r, :E4, :E4,
            :Fs4, :Gs4, :Fs4, :E4,:E4, :Cs4,:E4, :Cs4,
            :E4, :B3, :Gs3,
            :B3, :E4, :B3, :B3, :Fs4,
            :Fs4, :E4, :r]
  durations = [1.5, 0.25, 0.25,
               0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25,
               0.5, 1.25, 0.25,
               0.5, 0.5, 0.25, 0.25, 0.5,
               0.5, 0.25, 1.25 ]
  play_pattern_timed notes, durations
end

def random_melody_1
  use_random_seed 40
  use_synth :tri
  notes = [ :r, :E4, :Fs4, :Gs4, :Cs4, :B3, :Gs3]
  24.times do
    play choose(notes)
    sleep 0.25
  end
end


def melody_2
  use_synth :beep
  notes = [ :r, :Gs5, :B5, :r, :Cs6,
            :r, :Gs5, :r, :Gs5, :r, :Gs5, :r, :Fs5,:r,
            :E5, :r, :B5, :r, :Gs5, :B5, :r, :Cs6,
            :r, :Gs5, :r, :Gs5, :r, :Gs5, :r, :r, :E5]
  durations = [1, 0.25, 0.25, 0.25, 0.25,
               0.25, 0.25, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25,
               0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25, 0.25,
               0.25, 0.25, 0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25]
  play_pattern_timed notes, durations
end

def random_melody_2
  use_random_seed 23
  use_synth :tri
  notes = [ :r, :E5, :Fs5, :Gs5, :Cs6, :B5]
  24.times do
    play choose(notes)
    sleep 0.25
  end
end

def choose_melody_2
  loop do
    random_number = dice(2)
    
    use_this = melody_2 if random_number == 1
    use_this = random_melody_2 if random_number == 2
    
    1.times do
      use_this
    end
  end
end


in_thread do
  sleep 14
  melody_1
end

in_thread do
  sleep 24
  random_melody_1
end

in_thread do
  sleep 32
  my_other_bass
end

in_thread do
  sleep 32
  my_other_chords
end

in_thread do
  sleep 32
  choose_melody_2
end