#TITLE: Row Row Row Your Boat
#FILE: Song1.rb
#AUTHOR: HomieWippman
#DATE: 8/28/18
#DESC: Version1. Simple Melody, after day 2 of class, really struggling to understand sonic pi but not giving up!

use_bpm 60

2.times do
  
  2.times do
    play :C4
    sleep 0.7
  end
  play :C4
  sleep 0.5
  
  play :D4
  sleep 0.3
  play :E4, amp: 1.5
  sleep 0.7
  play :E4
  sleep 0.4
  play :D4
  sleep 0.4
  play :E4
  sleep 0.4
  play :F4
  sleep 0.4
  play :G4, amp: 1.5
  sleep 1
  
  3.times do
    play :C5
    sleep 0.1
  end
  sleep 0.5
  3.times do
    play :G4
    sleep 0.1
  end
  sleep 0.5
  3.times do
    play :E4
    sleep 0.1
  end
  sleep 0.5
  3.times do
    play :C4
    sleep 0.1
  end
  
  sleep 0.5
  play :G4
  sleep 0.4
  play :F4
  sleep 0.4
  play :E4
  sleep 0.4
  play :D4
  sleep 0.4
  play :C4, amp: 1.5
  sleep 1.4
end
