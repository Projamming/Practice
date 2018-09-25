# --------------------------------------------------------- #
# FILE: Random_Sleep.rb
# DATE: September 25, 2018
# AUTH: P-Rhyme
# DESC: I wanted to figure out how to introduce randomness
#       into a sleep pattern so that the notes don't feel
#       like they are being played by a computer so much.
#
#       I think this does the trick! The comments explain.
# --------------------------------------------------------- #

# This first loop is a metronome that keeps the beat every
# second. It sounds exact and robotic.

in_thread do
  loop do
    sample :elec_blip
    sleep 1
  end
end

# This second loop is threaded with the first, so they will
# begin playing at the same time.

use_synth :piano

loop do
  
  # Every time the loop runs, I'm setting these two variables.
  # total_time is the total amount of sleeping I want to do
  # for each measure, before matching up the piano notes with
  # the metronome again, and time_elapsed keeps track of how
  # much sleeping has happened after the first three notes.
  
  total_time = 4
  time_elapsed = 0
  
  # Now I play a C3 note three times in a row. The first C3
  # should match up perfectly with the metronome.
  3.times do
    
    play :C3
    
    # Now I'm going to sleep for a random amount of time:
    random_sleep = rrand(0.8, 1.2)
    sleep random_sleep
    
    # And keep track of how much sleeping has happened so far:
    time_elapsed = time_elapsed + random_sleep
    
  end
  
  # Now I play the fourth note of the four-note pattern:
  play :C4
  
  # And sleep for the remaining time, so that the total amount
  # of sleep is exactly 4 beats!
  sleep (total_time - time_elapsed)
  
  # When we loop back up, we reset total_time and time_elapsed
  # and you should hear the first C3 play in perfect time with
  # the metronome beep.
  
end
