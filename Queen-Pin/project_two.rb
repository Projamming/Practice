
use_bpm 60
use_synth :piano

define :first_voice_one do
  
  first_measure = [:gs4, :as4, :gs4, :fs4, :gs4, :es5, :c5]
  first_durations = [0.25, 0.125, 0.125, 0.125, 0.125, 0.25, 0.25]
  
  play_pattern_timed first_measure, first_durations
end

define :first_voice_two do
  
  second_measure = [:gs4, :fs4, :es4, :fs4, :ds5, :es4, :cs5]
  second_durations = [0.25, 0.125, 0.125, 0.25, 0.25, 0.25, 0.25]
  
  play_pattern_timed second_measure, second_durations
end

define :first_voice_three do
  
  third_measure = [:cs4, :cs5, :bs4, :cs5, :ds5, :es5, :fs5,
                   :gs5, :g5, :es5, :g5, :gs5, :g5, :es5, :ds5]
  third_durations = [0.25, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125,
                     0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125]
  
  play_pattern_timed third_measure, third_durations
end

define :first_voice_four do
  
  fourth_measure = [:es5, :es5, :ds5, :cs5, :es5, :ds5,
                    :cs5, :bs4, :ds5, :cs5, :bs4, :cs5, :as4]
  fourth_durations = [0.5, 0.125, 0.125, 0.125, 0.125, 0.125,
                      0.125, 0.125, 0.125, 0.125, 0.125, 0.125, 0.125]
  
  play_pattern_timed fourth_measure, fourth_durations
end

define :first_voice_five do
  
  fifth_measure = [:bs4, :ds5, :fs5, :es5]
  fifth_durations = [0.25, 0.25, 1, 0.5]
  
  play_pattern_timed fifth_measure, fifth_durations
end






live_loop :test do
  first_voice_one
  sleep 0.1
  first_voice_two
  sleep 0.1
  first_voice_three
  sleep 0.1
end




