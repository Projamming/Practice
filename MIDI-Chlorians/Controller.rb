#  This is a simple test code I made while working on my midterm,
#  it's a controller that can alternate between different sections,
#  and stop the section not being used, while still maintaining the rhythm,
#  and not having to click Stop then Run again.

def test_a
  
  in_thread do
    4.times do
      play :g3
      sleep 1
    end
  end
  
  in_thread do
    4.times do
      play :e3
      sleep 1
    end
  end
  sleep 4
end

def test_b
  in_thread do
    4.times do
      play :a3
      sleep 1
    end
  end
  
  in_thread do
    4.times do
      play :c3
      sleep 1
    end
  end
  sleep 4
end


live_loop :test do
  
  controller = [1]
  
  if controller.look == 1
    1.times do
      test_a
      sleep 0
    end
  end
  
  if controller.look == 2
    1.times do
      test_b
      sleep 0
    end
  end
  
end
